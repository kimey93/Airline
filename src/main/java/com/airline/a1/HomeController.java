package com.airline.a1;

import java.util.ArrayList;
import java.util.List;

import org.jsoup.select.Elements;
import org.snu.ids.ha.index.Keyword;
import org.snu.ids.ha.index.KeywordExtractor;
import org.snu.ids.ha.index.KeywordList;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import org.snu.ids.ha.ma.MExpression;
import org.snu.ids.ha.ma.MorphemeAnalyzer;
import org.snu.ids.ha.ma.Sentence;
import org.snu.ids.ha.util.Timer;

import com.airline.a1.board.BoardVO;
import com.airline.a1.board.NoticeVO;
import com.airline.a1.weather.WeatherService;

@Controller
public class HomeController {

	@Autowired
	private WeatherService weatherService;

	@Autowired
	private SearchService searchService;

	@GetMapping("/")
	public String Home(Model model, Elements els, String airLine) throws Exception {

		if (airLine == null) {
			airLine = "RKSI/인천공항/1";

		}
		String[] split = airLine.split("/");

		model.addAttribute("weather2", weatherService.WeatherInfo2(split));
		model.addAttribute("weather", weatherService.WeatherInfo(split));

		return "index";
	}

	@GetMapping("indexSearch")
	public void indexSearch(Model model, String search) throws Exception {
		if (search != "") {
			System.out.println(search);
			List<BoardVO> ar = searchService.searchTotalList(search);

			model.addAttribute("search", search);
			model.addAttribute("tlist", ar);

			SearchVO searchVO = new SearchVO();
			searchVO.setSearch(search);

			String msg = "";

			/*
			 * String string = search; try { MorphemeAnalyzer ma = new MorphemeAnalyzer();
			 * ma.createLogger(null); Timer timer = new Timer(); timer.start();
			 * List<MExpression> ret = ma.analyze(string); timer.stop();
			 * timer.printMsg("Time"); ret = ma.postProcess(ret); ret =
			 * ma.leaveJustBest(ret); List<Sentence> stl = ma.divideToSentences(ret); for(
			 * int i = 0; i < stl.size(); i++ ) { Sentence st = stl.get(i);
			 * 
			 * System.out.println("=============================================  " +
			 * st.getSentence());
			 * 
			 * for( int j = 0; j < st.size(); j++ ) { System.out.println(st.get(j)); msg =
			 * msg + "/" + st.get(j); } } ma.closeLogger(); } catch (Exception e) {
			 * e.printStackTrace(); }
			 */
			
			// string to extract keywords 
			String strToExtrtKwrd = search; 
			// init KeywordExtractor 
			KeywordExtractor ke = new KeywordExtractor(); 
			// extract keywords 
			KeywordList kl = ke.extractKeyword(strToExtrtKwrd, true);
			 

			// print result
			if(search.contains(" ")) {
				
				
				
				
			}else {
				if(kl.size() >= 3) {
					  for( int i = 0; i < kl.size(); i++ ) {
						  if(i == 1) {
							  Keyword kwrd = kl.get(i); 
							  System.out.println(kwrd.getString() + "\t" + kwrd.getCnt());
							  msg = kwrd.getString();
							  searchVO.setSvoca(msg);
							  searchService.searchInsert(searchVO);
						  }
					  }
				} else if (kl.size() == 1) {
					  for( int i = 0; i < kl.size(); i++ ) {
							  Keyword kwrd = kl.get(i); 
							  System.out.println(kwrd.getString() + "\t" + kwrd.getCnt());
							  msg = kwrd.getString();
							  searchVO.setSvoca(msg);
							  searchService.searchInsert(searchVO);
						  }
				}
			}
			
			
			 
		}

	}

	@PostMapping("indexSearch")
	public void indexSearch() {

	}

	@GetMapping("searchSelect")
	public ModelAndView searchSelect(String menu, String search) throws Exception {
		System.out.println(menu);
		System.out.println(search);

		NoticeVO noticeVO = new NoticeVO();
		noticeVO.setTitle(search);
		noticeVO.setWriter(menu);

		List<BoardVO> ar = new ArrayList<BoardVO>();

		if (menu.equals("전체")) {
			ar = searchService.searchTotalList(search);
		} else {
			ar = searchService.searchList(noticeVO);
		}

		ModelAndView mv = new ModelAndView();
		mv.addObject("list", ar);
		mv.setViewName("layout/searchList");

		return mv;

	}

}
