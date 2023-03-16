package com.JPJ.home.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.JPJ.home.Dao.IDao;
import com.JPJ.home.Dto.StoreDto;

@Controller
public class StoreController {
   
   @Autowired
   private SqlSession sqlSession;
   
   @RequestMapping(value = "storehome")
   public String storehome() {
      return "Store/storehome";
   }
   
   @RequestMapping(value = "Popcorn")
   public String Popcorn(Model model) {
	   IDao dao = sqlSession.getMapper(IDao.class); 
	   ArrayList<StoreDto> st = dao.getPopcorn();
	   model.addAttribute("st", st); 
      return "Store/Popcorn";
   }
   
   @RequestMapping(value = "Snacks")
   public String Snacks(Model model) {
	   IDao dao = sqlSession.getMapper(IDao.class); 
	   ArrayList<StoreDto> st = dao.getSnacks();
	   model.addAttribute("st", st); 
      return "Store/Snacks";
   }
   
   @RequestMapping(value = "combo")
   public String combo(Model model) {
	   IDao dao = sqlSession.getMapper(IDao.class); 
	   ArrayList<StoreDto> st = dao.getcombo();
	   model.addAttribute("st", st); 
      return "Store/combo";
   }
   @RequestMapping(value = "Beverage")
   public String Beverage(Model model) {
	   IDao dao = sqlSession.getMapper(IDao.class); 
	   ArrayList<StoreDto> st = dao.getBeverage();
	   model.addAttribute("st", st); 
      return "Store/Beverage";
   }
   
   
   @RequestMapping(value = "Bever")
   public String Bever(HttpServletRequest request, Model model) {
 
      String img= request.getParameter("img");

      IDao dao = sqlSession.getMapper(IDao.class);
      
     
      StoreDto bdto = dao.getstore(img);
     
      
      model.addAttribute("bdto", bdto);
      
      return "Store/Bever";
   }

   @RequestMapping(value = "Com")
   public String Com(HttpServletRequest request, Model model) {
 
      String img= request.getParameter("img");

      IDao dao = sqlSession.getMapper(IDao.class);
      
     
      StoreDto bdto = dao.getstore(img);
     
      
      model.addAttribute("bdto", bdto);
      
      return "Store/Com";
   }
   
   @RequestMapping(value = "Pop")
   public String Pop(HttpServletRequest request, Model model) {
 
      String img= request.getParameter("img");

      IDao dao = sqlSession.getMapper(IDao.class);
      
     
      StoreDto bdto = dao.getstore(img);
     
      
      model.addAttribute("bdto", bdto);
      
      return "Store/Pop";
   }
   
   @RequestMapping(value = "Snac")
   public String Snac(HttpServletRequest request, Model model) {
 
      String img= request.getParameter("img");

      IDao dao = sqlSession.getMapper(IDao.class);
      
     
      StoreDto bdto = dao.getstore(img);
     
      
      model.addAttribute("bdto", bdto);
      
      return "Store/Snac";
   }
   
}