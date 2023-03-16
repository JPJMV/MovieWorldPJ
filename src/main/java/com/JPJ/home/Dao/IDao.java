package com.JPJ.home.Dao;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

import com.JPJ.home.Dto.MovieDto;
import com.JPJ.home.Dto.ReviewDto;
import com.JPJ.home.Dto.Criteria;
import com.JPJ.home.Dto.MemberDto;
import com.JPJ.home.Dto.ScheduleDto;
import com.JPJ.home.Dto.StoreDto;
import com.JPJ.home.Dto.dto;

public interface IDao {
	
	//회원관리
	public int memberJoin(String mid, String mpw, String mname, String memail, String mbirth, String mphone);//회원 가입 insert
	public int checkId(String mid);//아이디 존재여부 확인 select
	public int checkIdAndPW(String mid, String mpw);//아이디와 비밀번호의 존재 및 일치 여부 select
	public MemberDto getMemberInfo(String mid);//아이디로 조회하여 회원정보 가져오기 select
	public List<MemberDto> getallmember();
	public void pointP(String mid); //포인트 추가하기
	public void pointD(String mid); //포인트 추가하기

	public ArrayList<ScheduleDto> getMemberSchedule(String rid); // 세션 멤버의 예매 스케쥴 불러오기
	public ArrayList<ScheduleDto> getMemberReservation(String rid); // 세션 멤버의 예매 정보 불러오기	
	public void memberModify(String mid, String mpw, String mbirth, String mphone, String memail);
	
	
	public ArrayList<ScheduleDto> getSchedule();//스케쥴 날짜 가져오기
	public List<ScheduleDto> dayMovieschedule(String sday); //무비 스케쥴 불러오기
	public List<MovieDto> Movielistimg(); //무비 스케쥴(영화제목만) 불러오기
	
	
	public List<MovieDto> getcmovielist(); //개봉예정작 리스트 불러오기
	public MovieDto getcmovie(String mnum); //개봉예정작 불러오기
	public List<MovieDto> getfmovielist(); //개봉예정작 리스트 불러오기
	public MovieDto getfmovie(String mnum); //개봉예정작 불러오기
	
	public List<ScheduleDto> MovieSchedule(String mname);//현재 상영작 스케줄 날짜 가져오기
	public List<ScheduleDto> movieday(String mname);
	
	public ScheduleDto rschedule(String snum);//예매 스케쥴 좌석 페이지로 가져오기
	public ArrayList<String> rscheduleseat(String snum); //예매 좌석 가져오기
	public void book(int snum, String rseat, String rid); //영화 예매하기
	public void reservDelete(String rnum); //예매 삭제하기
	
	
	public ArrayList<StoreDto> getPopcorn(); //팝콘리스트 가져오기
	public ArrayList<StoreDto> getSnacks(); //스낵리스트 가져오기
	public ArrayList<StoreDto> getcombo(); //콤보리스트 가져오기
	public ArrayList<StoreDto> getBeverage(); //음료리스트 가져오기
	public StoreDto getstore(String img); // 스토어 하위 리스트 작성
	
	//리뷰 게시판
	public void writeReview(String rid, String rname, String rmovie, String rgrade, String rcontent, String rtitle); //리뷰작성하기 insert
	public int ReviewAllCount(); //리뷰 게시판 총 글의 개수 가져오기
	public List<ReviewDto> ReviewList(Criteria cri); //리뷰 게시판 리스트 가져오기 select
	public ReviewDto Review(String rnum); //선택한 글 번호의 정보 가져오기 select
	public void reviewDelete(String rnum); //글 삭제
	public void ReviewModify(String rnum, String rgrade, String rcontent, String rtitle); // 해당 글 번호로 조회 수정
	public ArrayList<MovieDto> movierank();
	public ArrayList<MovieDto> fmovierank();
	public ArrayList<StoreDto> storerank();
	


	
}
