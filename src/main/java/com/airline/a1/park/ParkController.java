package com.airline.a1.park;

import java.sql.Date;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;
import java.util.Set;
import java.util.TreeSet;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.context.properties.bind.DefaultValue;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("park/**")
public class ParkController {
	
	@Autowired
	private ParkService parkService;
	
	@RequestMapping("ParkMain")
	public ModelAndView parkmain(ModelAndView mv) throws Exception{
		//parkService.test();
		//parkService.tttttt();
		
		
		List<ParkInfoVO> ar =parkService.apiTest();
		mv.addObject("list", ar);
		mv.setViewName("park/ParkMain");
		return mv;
	}
	@GetMapping("ParkRes")
	public void ParkRes(String arrLoc) throws Exception{
		
		
	}
	
	@GetMapping("parkCheck")
	public ModelAndView parkCheck(ModelAndView mv, pReservationVO pReservationVO) throws Exception{
		
		int sDate = Integer.parseInt(pReservationVO.getStartDate().toString().replace("-", "").substring(0,6));
		int eDate = Integer.parseInt(pReservationVO.getEndDate().toString().replace("-", "").substring(0,6));
		
		List<String> rest = new ArrayList<>();
		for (int i = sDate; i <= eDate; i++) {
			if(i%100 == 13) {
				i = i + 88;			
			}
			int year = Math.floorDiv(i, 100);
			int month = i - year*100;
			parkService.apiRest(year,month, rest);
		}
		List<pReservationVO> ar = parkService.parkCheck(pReservationVO);
		pInfoVO pInfoVO = new pInfoVO();
		pInfoVO.setaName(pReservationVO.getAirport());
		pInfoVO =parkService.parkWhere(pInfoVO);
		List<Integer> etc = new ArrayList<Integer>();
		
		if(pInfoVO.getEtc() !=null) {
			for (int i = 0; i < pInfoVO.getEtc().split(",").length; i++) {
				etc.add(Integer.parseInt(pInfoVO.getEtc().split(",")[i]));
			}
		}
		mv.addObject("etc", etc);
		mv.addObject("list", ar);
		mv.addObject("park", pInfoVO);
		mv.addObject("rest", rest);
		mv.setViewName("park/parkCheck");
		return mv;
	}
	
	@PostMapping("resInsert")
	public ModelAndView resInsert(ModelAndView mv, pReservationVO pReservationVO) throws Exception{
		int result = parkService.resInsert(pReservationVO);
		
		mv.setViewName("park/ParkMain");
		return mv;
	}
	
}
