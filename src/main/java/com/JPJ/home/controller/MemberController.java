package com.JPJ.home.controller;

import java.io.IOException;
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
import com.JPJ.home.Dto.ScheduleDto;

@Controller
public class MemberController {
   
   @Autowired
   private SqlSession sqlSession;
   
   @RequestMapping(value = "login")
   public String login() {
      return "Member/login";
   }
   
	@RequestMapping(value = "/loginOk")
	public String loginOk(HttpServletRequest request, Model model, HttpSession session) {
		
		String mid = request.getParameter("mid");
		String mpw = request.getParameter("mpw");
		
		IDao dao = sqlSession.getMapper(IDao.class);
		
		int checkIdFlag =  dao.checkId(mid);
		//로그인하려는 아이디 존재시 1, 로그인하려는 아이디가 존재하지 않으면 0이 반환
		int checkIdPwFlag = dao.checkIdAndPW(mid, mpw);
		//로그인하려는 아이디와 비밀번호가 모두 일치하는 데이터가 존재하면 1 아니면 0이 반환		
		
		model.addAttribute("checkIdFlag", checkIdFlag);		
		model.addAttribute("checkIdPwFlag", checkIdPwFlag);
		
		if(checkIdPwFlag == 1) { //로그인 실행 
			
			session.setAttribute("memberId", mid);
			MemberDto memberDto = dao.getMemberInfo(mid);
			
			model.addAttribute("memberDto", memberDto);
			model.addAttribute("mid", mid);
		}
		
		
		return "Member/loginOk";
	}
	
	@RequestMapping(value = "/logout")
	public String logout(HttpSession session) {
		
		session.invalidate();
		
		return "Member/login";
	}
   
   @RequestMapping(value = "join")
   public String join() {
      return "Member/join";
   }
   @RequestMapping(value = "joinOk")
   public String joinOk(HttpServletRequest request, HttpSession session, Model model) {
      
      String mid = request.getParameter("mid");
      String mpw = request.getParameter("mpw");
      String mname = request.getParameter("mname");
      String memail = request.getParameter("memail");
      
      String mbirth = request.getParameter("mbirth");
      String mphone = request.getParameter("mphone");
      
      IDao dao = sqlSession.getMapper(IDao.class);
      
      int joinFlag = dao.memberJoin( mid, mpw,  mname, memail, mbirth,  mphone);
      //joinFlag가 1이면 회원가입 성공, 아니면 실패
      //System.out.println("가입성공여부:"+joinFlag);
      
      //가입하려는 아이디가 존재하는지 여부를 체크하는 메서드 삽입 예정
      
      if(joinFlag == 1) {//회원가입 성공시 바로 로그인 진행
         session.setAttribute("memberId", mid);
         session.setAttribute("memberName", mname);
         
         model.addAttribute("mname", mname);
         model.addAttribute("mid", mid);
         
         return "Member/joinOk";
      } else { //회원가입 실패
         return "Member/joinFail";
      }    
   }
   @RequestMapping(value = "MyPage")
	public String MyPage(HttpServletResponse response, Model model, HttpSession session) throws IOException {
		
		String sessionId = (String) session.getAttribute("memberId");
		if(sessionId !=null) {
			IDao dao = sqlSession.getMapper(IDao.class);
			ArrayList<ScheduleDto> MemberReservation = dao.getMemberReservation(sessionId);
			ArrayList<ScheduleDto> memberSchedule = dao.getMemberSchedule(sessionId);
			MemberDto memberDto = dao.getMemberInfo(sessionId);
			
			
			
			model.addAttribute("MemberReservation", MemberReservation);
			model.addAttribute("memberSchedule", memberSchedule);
			model.addAttribute("MemberDto", memberDto);		
			return "Member/MyPage";
		} else {
			ScriptUtils.alertAndMovePage(response, "로그인이 필요합니다.", "login");
			return "Member/login";
		}
	}
   
   @RequestMapping(value = "membership")
   public String membership(HttpSession session) {
      return "Member/membership";
   }
   
   @RequestMapping(value = "memberModify")
   public String memberModify(HttpSession session, Model model) {
	   
	   String sessionId = (String) session.getAttribute("memberId");
	   
	   IDao dao = sqlSession.getMapper(IDao.class);
	   
	   MemberDto memberDto = dao.getMemberInfo(sessionId);
	   
	   model.addAttribute("memberDto", memberDto);
	   
	   
	   
      return "Member/memberModify";
   }
   
   @RequestMapping(value = "memberModifyOk")
   public String memberModifyOk(HttpServletResponse response, HttpServletRequest request, HttpSession session, Model model) throws IOException {
	   String mid = request.getParameter("mid");
	   String mpw = request.getParameter("mpw");
	   String mbirth = request.getParameter("mbirth");
	   String mphone = request.getParameter("mphone");
	   String memail = request.getParameter("memail");
	      
 
	   IDao dao = sqlSession.getMapper(IDao.class);
	   dao.memberModify(mid,mpw,mbirth,mphone,memail);
	   ScriptUtils.alertAndMovePage(response, "수정되었습니다.", "MyPage");
      return "redirect:MyPage";
   }
   
   
}