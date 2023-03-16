package com.JPJ.home.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
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
import com.JPJ.home.Dto.MemberDto;
import com.JPJ.home.Dto.MovieDto;
import com.JPJ.home.Dto.ScheduleDto;
import com.JPJ.home.Dto.dto;

@Controller
public class ReservationController {
   
   @Autowired
   private SqlSession sqlSession;

   
   @RequestMapping(value = "Dayschedule")
   public String Dayschedule(Model model, HttpServletRequest request) {
 
	   IDao dao = sqlSession.getMapper(IDao.class);
	   
	   ArrayList<ScheduleDto> dayschedule = dao.getSchedule();
	   
	   
	   model.addAttribute("day", dayschedule);
	   
	   return "book/Dayschedule";
   }
   
   @RequestMapping(value = "Movielist")
   public String Movielist(HttpServletRequest request, Model model) {
 
	   String sday= request.getParameter("sday");

	   IDao dao = sqlSession.getMapper(IDao.class);
	   
	   List<ScheduleDto> daydata = dao.dayMovieschedule(sday);
	   List<MovieDto> movie = dao.Movielistimg();

	   model.addAttribute("day", daydata);
	   model.addAttribute("sday", sday);
	   model.addAttribute("movie", movie);
	   return "book/Movielist";
   }
 
   @RequestMapping(value = "rschedule")
   public String rschedule(HttpSession session, HttpServletRequest request, Model model) {
	   
	   String sessionId = (String) session.getAttribute("memberId");
	   
	   String snum= request.getParameter("snum");
	   
	   //System.out.println(snum);
	   
	   IDao dao = sqlSession.getMapper(IDao.class);
	   
	   
	   ScheduleDto sDtos = dao.rschedule(snum);
	   ArrayList<String> sdto = dao.rscheduleseat(snum);
	   
	   //System.out.println(sdto);
	   model.addAttribute("sdata", sDtos);
	   model.addAttribute("sdto", sdto);
	   return "book/seat";
   }
   @RequestMapping(value = "seatOk")
   public String seatOk(HttpServletResponse response, HttpServletRequest request, Model model, HttpSession session) throws IOException {
	   
	   String snum = request.getParameter("snum");
	   String rseat = request.getParameter("rseat");
	   String rid = request.getParameter("rid");
	   String sessionId = (String) session.getAttribute("memberId");
	   if(sessionId !=null) {
		   IDao dao = sqlSession.getMapper(IDao.class);
		   
		   dao.pointP(rid);
		   
		   dao.book(Integer.parseInt(snum), rseat, rid);
		   
		   ScriptUtils.alertAndMovePage(response, "예매완료  500포인트가 적립되었습니다.", "MyPage");
		   
		   return "redirect:MyPage";
		   } else { 
			   ScriptUtils.alertAndMovePage(response, "로그인이 필요합니다.", "login");
			   return "Member/login";
		   }
   }
   @RequestMapping(value = "Movieschedule")
   public String Movieschedule(HttpServletRequest request, Model model) {
 
	   String mname= request.getParameter("mname");

	   IDao dao = sqlSession.getMapper(IDao.class);
	   
	   List<ScheduleDto> moviedata = dao.MovieSchedule(mname);
	   List<ScheduleDto> movieday = dao.movieday(mname);

	   model.addAttribute("moviedata", moviedata);
	   model.addAttribute("mname", mname);
	   model.addAttribute("movieday", movieday);
	   
	   return "book/Movieschedule";
   }
   
   @RequestMapping(value = "Cmovielist")
   public String Cmovielist(HttpServletRequest request, Model model) {
 
	   String snum= request.getParameter("snum");
	   
	   
	   IDao dao = sqlSession.getMapper(IDao.class);
	   
	   
	   ScheduleDto sDtos = dao.rschedule(snum);
	   ArrayList<String> Cdto = dao.rscheduleseat(snum);
	   
	  
	   model.addAttribute("Cdto", Cdto);
	   model.addAttribute("sDtos", sDtos);
	   return "book/Cmovielist";
   }
   
   @RequestMapping(value = "reservDelete")
   public String reviewDelete(HttpSession session, HttpServletResponse response, HttpServletRequest request, Model model) throws IOException {
		String rnum = request.getParameter("rnum");
		
		String sessionId = (String) session.getAttribute("memberId");
		
		IDao dao = sqlSession.getMapper(IDao.class);
		
		dao.pointD(sessionId);
		
		dao.reservDelete(rnum);
		ScriptUtils.alertAndMovePage(response, "취소하였습니다.", "MyPage");
      return "redirect:MyPage";
   }
   
   private String redirectUrl(HttpServletRequest request) {
	   if (request.getHeader("Referer") != null) {
	     return "redirect:" + request.getHeader("Referer");
	   } else {
	     return "redirect:/main";
	   }
	 }
   
}