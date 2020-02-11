package com.airline.a1.board;

import java.util.List;

import javax.naming.NoInitialContextException;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.airline.a1.boardUtil.Pager;

@Controller
@RequestMapping("/notice/**")
public class NoticeController {

	@Autowired
	private NoticeService noticeService;
	
	@ModelAttribute(name = "notice")
	public NoticeVO getNotice()throws Exception{
			return new NoticeVO();
	}
	

	
	
	/**** summerNote ****/	
	
	@PostMapping(value = "summerfileDelete")
	public ModelAndView summerfileDelete(String file, HttpSession session)throws Exception{
		boolean check = noticeService.summerfileDelete(file, session);
		String result = "Delete Fail";
		if(check) {
			result = "Delete Success";
		}
		ModelAndView mv = new ModelAndView();
		mv.setViewName("board/common/common_ajaxResult");
		mv.addObject("result", result);
		return mv;
	}
	
	@PostMapping(value = "summerFile")
	public ModelAndView summerFile(MultipartFile file, HttpSession session)throws Exception{
		System.out.println("ddd1123123213");
		String fileName = noticeService.summerfile(file, session);
		//System.out.println(file.getOriginalFilename()); test
		ModelAndView mv = new ModelAndView();
		
		mv.setViewName("board/common/common_ajaxResult");
		mv.addObject("result", fileName);
		return mv;
	}
	
	
	
	/**** File ****/
	@PostMapping(value = "noticeFileDelete")
	public ModelAndView noticeFileDelete(NoticeFilesVO noticeFilesVO)throws Exception{
			ModelAndView mv = new ModelAndView();
			int result = noticeService.NoticeFileDelete(noticeFilesVO);
			mv.setViewName("board/common/common_ajaxResult");
			mv.addObject("result", result);
			
			return mv;
	}
	
	

	
	/**** NoticeWrite****/
	
		@GetMapping("noticeWrite")
		public ModelAndView noticeWrite()throws Exception{
				ModelAndView mv = new ModelAndView();
				mv.addObject("board", "notice");
				mv.setViewName("board/boardWrite");
					
				return mv;
		}
		
	
	  @PostMapping("noticeWrite")
	  public ModelAndView noticeWrite(NoticeVO noticeVO, MultipartFile[] file)throws Exception{
			  
		  ModelAndView mv = new ModelAndView(); 	  	
		  int result =noticeService.noticeWrite(noticeVO, file);
	  
	  String msg = "작성에 실패하였습니다.다시 작성해주세요."; 
	  String path = "../";
	  
	  if(result > 0) { 
		  
		  msg = "작성되었습니다."; 
		  }
	  
	  mv.setViewName("board/common/result"); 
	  mv.addObject("message", msg);
	  mv.addObject("path", path);
	  
	  return mv; 
	  }
	 
	 
	
	/**** NoticeList ****/
	  
	  @GetMapping("noticeList") 
	  public ModelAndView noticeList(Pager pager)throws Exception{ 
		 List<BoardVO> ar = noticeService.noticeList(pager); 
		 ModelAndView mv = new ModelAndView(); 
		 int totalCount = noticeService.noticeCount(pager);
	  
	  mv.addObject("tc", totalCount); 
	  mv.addObject("board", "notice");
	  mv.addObject("list", ar); 
	  mv.addObject("pager", pager);
	  mv.setViewName("board/boardList");
	  
	  return mv; 
	  
	  }
	  
	  @GetMapping("noticeList1")
	  public ModelAndView noticeList1(Pager pager)throws Exception{
		 
		  List<BoardVO> ar = noticeService.subNoticeList(pager);
		  ModelAndView mv = new ModelAndView(); 
		  int totalCount = noticeService.noticeCount2(pager);
		  	  
		  mv.addObject("tc", totalCount); 
		  mv.addObject("board", "notice");
		  mv.addObject("list", ar);
		  mv.addObject("pager", pager);
		  mv.setViewName("board/boardList1");
		  return mv; 
	  }	    
	  
	  
	/**** NoticeSelect ****/
	  
	  @GetMapping("noticeSelect")
	  public ModelAndView NoticeSelect(NoticeVO noticeVO)throws Exception{
		  ModelAndView mv = new ModelAndView();
		  NoticeVO noticeVO2= noticeService.noticeSelect(noticeVO);
		  List<BoardVO> ar =noticeService.listView(noticeVO);			
		 	  
		  	mv.addObject("vo", noticeVO2);
		  	mv.addObject("list", ar);
		  	mv.addObject("board", "notice");
			mv.setViewName("board/boardSelect");
				
			return mv;
		  
	  }
	  
	  
	/**** Notice Update ****/
	  
		@GetMapping("noticeUpdate")
		public ModelAndView noticeUpdate(NoticeVO noticeVO, Pager pager)throws Exception{
			ModelAndView mv = new ModelAndView();
			noticeVO.setNum(noticeVO.getNum());
			noticeVO = noticeService.noticeSelect(noticeVO);
		
			mv.addObject("board", "notice");
			mv.addObject("vo", noticeVO);
			mv.setViewName("board/boardUpdate");
			
			return mv;
		}
		
	  
	  
	  @PostMapping("noticeUpdate")
	  public ModelAndView noticeUpdate(NoticeVO noticeVO, MultipartFile[] file,HttpSession session)throws Exception{
		  ModelAndView mv = new ModelAndView();
		  
		  
		  int result = noticeService.noticeUpdate(noticeVO,file,session);
		  
		  if(result>0) {
			  mv.addObject("message", "게시글이 수정되었습니다.");
		  }else {
			  mv.addObject("message", "수정에 실패하였습니다. 다시 시도해주세요.");
		  }
		  mv.addObject("path", "noticeList");
		  mv.setViewName("board/common/result");
		  
		  return mv;
	  }

	  
	  
	/**** noticeDelete ****/
	
	@GetMapping("noticeDelete")
	public ModelAndView noticeDelete(NoticeVO noticeVO)throws Exception{
		ModelAndView mv = new ModelAndView();
		int result = noticeService.noticeDelete(noticeVO);
		if(result>0) {
			mv.addObject("message", "게시글이 삭제되었습니다.");
		}else {
			mv.addObject("message", "삭제에 실패하였습니다. 다시 시도해주세요.");
		}
			mv.addObject("path","noticeList");
			mv.setViewName("board/common/result");
			
			return mv;
	}
	 

}
