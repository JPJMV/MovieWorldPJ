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
import com.JPJ.home.Dto.MovieDto;
import com.JPJ.home.Dto.StoreDto;

@Controller
public class HomeController {
   
   @Autowired
   private SqlSession sqlSession;

   @RequestMapping(value = "/")
   public String home(Model model) {
      IDao dao = sqlSession.getMapper(IDao.class); 
      ArrayList<MovieDto> rankdto = dao.movierank();
      ArrayList<MovieDto> fankdto = dao.fmovierank();
      ArrayList<StoreDto> sankdto = dao.storerank();
      model.addAttribute("rankdto", rankdto);
      model.addAttribute("fankdto", fankdto);
      model.addAttribute("sankdto", sankdto);
      
      return "index";
   }
   
   @RequestMapping(value = "index")
   public String index(Model model) {
      IDao dao = sqlSession.getMapper(IDao.class); 
      ArrayList<MovieDto> rankdto = dao.movierank();
      ArrayList<MovieDto> fankdto = dao.fmovierank();
      ArrayList<StoreDto> sankdto = dao.storerank();
      model.addAttribute("rankdto", rankdto);
      model.addAttribute("fankdto", fankdto);
      model.addAttribute("sankdto", sankdto);
      return "index"; 
   }
   
   @RequestMapping(value = "QnA")
   public String QnA() {
      return "Service/QnA";
   }
   
}