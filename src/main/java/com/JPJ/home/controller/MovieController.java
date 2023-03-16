package com.JPJ.home.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.JPJ.home.Dao.IDao;
import com.JPJ.home.Dto.MovieDto;
import com.JPJ.home.Dto.PageDto;
import com.JPJ.home.Dto.ReviewDto;
import com.JPJ.home.Dto.ScheduleDto;
import com.JPJ.home.Dto.Criteria;
import com.JPJ.home.Dto.MemberDto;

@Controller
public class MovieController {
   
   @Autowired
   private SqlSession sqlSession;

   // 현재 상영 영화
   @RequestMapping(value = "cmovielist")
   public String cmovielist(Model model) {
	   IDao dao = sqlSession.getMapper(IDao.class);
	   List<MovieDto> mlist = dao.getcmovielist();
	   model.addAttribute("mlist", mlist);
      return "Movie/cmovielist";
   }
   @RequestMapping(value = "cmovie")
   public String cmovie(HttpServletRequest request, Model model) {
	   String mnum = request.getParameter("mnum");
	   IDao dao = sqlSession.getMapper(IDao.class);
	   MovieDto movie = dao.getcmovie(mnum);
	   //System.out.println(movie);
	   model.addAttribute("movie", movie);
      return "Movie/cmovie";
   }  
   
   // 개봉 예정 영화
   @RequestMapping(value = "fmovielist")
   public String fmovielist(Model model) {
	   IDao dao = sqlSession.getMapper(IDao.class);
	   List<MovieDto> mlist = dao.getfmovielist();
	   model.addAttribute("mlist", mlist);	   
      return "Movie/fmovielist";
   }
   @RequestMapping(value = "fmovie")
   public String fmovie(HttpServletRequest request, Model model) {  
	   String mnum = request.getParameter("mnum");  
	   IDao dao = sqlSession.getMapper(IDao.class);  
	   MovieDto movie = dao.getfmovie(mnum);  
	   System.out.println(movie);   
	   model.addAttribute("movie", movie);
      return "Movie/fmovie";
   }
   
   
   @RequestMapping(value = "reviewwrite")
   public String moviereviews(HttpServletResponse response, HttpSession session, Model model) throws IOException {
	   String sessionId = (String) session.getAttribute("memberId");
		if(sessionId!=null) {
		   IDao dao = sqlSession.getMapper(IDao.class);
		   List<MovieDto> movie = dao.Movielistimg();
		   MemberDto memberDto = dao.getMemberInfo(sessionId);
		   System.out.println(memberDto);
		   model.addAttribute("movie", movie);
		   model.addAttribute("memberId", sessionId);
		   model.addAttribute("memberDto", memberDto);
		   		return "Movie/reviewwrite";
		   } else{ 
			   ScriptUtils.alertAndMovePage(response, "로그인이 필요합니다.", "login");		   
			   return "Member/login";
      }
   }
   
	@RequestMapping(value = "/ReviewOk")
	public String ReviewOk(HttpServletRequest request) {
		
		String rid = request.getParameter("rid");
		String rname = request.getParameter("rname");
		String rmovie = request.getParameter("rmovie");
		String rgrade = request.getParameter("rgrade");
		String rcontent = request.getParameter("rcontent");
		String rtitle = request.getParameter("rtitle");
		
		IDao dao = sqlSession.getMapper(IDao.class);
		
		dao.writeReview(rid, rname, rmovie, rgrade, rcontent, rtitle);
		
		return "redirect:reviewList";
	}
   
   @RequestMapping(value = "reviewList")
	   public String movieList(Model model, Criteria cri, HttpServletRequest request) {
			int pageNumInt = 0;
			if(request.getParameter("pageNum") == null) {
				pageNumInt = 1;
				cri.setPageNum(pageNumInt);
			} else {
				pageNumInt = Integer.parseInt(request.getParameter("pageNum"));
				cri.setPageNum(pageNumInt);
			}
			IDao dao = sqlSession.getMapper(IDao.class);
			int totalRecord = dao.ReviewAllCount();
			//cri.setPageNum();
			cri.setStartNum(cri.getPageNum()-1 * cri.getAmount());//해당 페이지의 시작번호를 설정
			PageDto pageDto = new PageDto(cri, totalRecord);
			List<ReviewDto> ReviewDtos = dao.ReviewList(cri);
			model.addAttribute("pageMaker", pageDto);
			model.addAttribute("rdtos", ReviewDtos);
			model.addAttribute("currPage", pageNumInt);

      return "Movie/reviewList";
      
   }
   
   @RequestMapping(value = "review")
   public String review(HttpServletRequest request, Model model) {
		String rnum = request.getParameter("rnum");
		IDao dao = sqlSession.getMapper(IDao.class);
		ReviewDto rBoardDto = dao.Review(rnum);
		
		model.addAttribute("rdto", rBoardDto);
		model.addAttribute("rid", rBoardDto.getRid());//글쓴 유저의 id값 전송
		
      return "Movie/review";
   }
   
   @RequestMapping(value = "reviewDelete")
   public String reviewDelete(HttpServletRequest request, Model model) {
		String rnum = request.getParameter("rnum");
		
		IDao dao = sqlSession.getMapper(IDao.class);
		
		dao.reviewDelete(rnum);

      return "redirect:reviewList";
   }
   
   @RequestMapping(value = "reviewmodify")
   public String reviewmodify(HttpServletRequest request, Model model) {
		String rnum = request.getParameter("rnum");
		IDao dao = sqlSession.getMapper(IDao.class);
		ReviewDto rBoardDto = dao.Review(rnum);
		model.addAttribute("rdto", rBoardDto);
		
      return "Movie/reviewmodify";
   }
   
	@RequestMapping(value = "/ReviewModifyOk")
	public String ReviewModifyOk(HttpServletRequest request) {
		
		String rnum = request.getParameter("rnum");
		String rgrade = request.getParameter("rgrade");
		String rcontent = request.getParameter("rcontent");
		String rtitle = request.getParameter("rtitle");
		
		IDao dao = sqlSession.getMapper(IDao.class);
		
		dao.ReviewModify(rnum, rgrade, rcontent, rtitle);
		
		return "redirect:reviewList";
	}


}