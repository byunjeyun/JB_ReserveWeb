package com.jb.reserveWeb;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.jb.reserveWeb.dao.IDao;
import com.jb.reserveWeb.dto.*;



@Controller
public class WebController {

	@Autowired
	private SqlSession sqlSession;

	@RequestMapping(value = "/")
	public String home() {

		return "java";

	}

	@RequestMapping(value = "/main")
	public String main(Model model) {
	IDao dao = sqlSession.getMapper(IDao.class);
	ArrayList<BoardDto> bDtos = dao.review_listDao();


	model.addAttribute("review01", bDtos.get(0));
	model.addAttribute("review02", bDtos.get(1));
	model.addAttribute("review03", bDtos.get(2));
	model.addAttribute("review04", bDtos.get(3));
	model.addAttribute("review05", bDtos.get(4));
	

	return "main";
			
	}
		
		
	@RequestMapping(value ="/login")
	public String login() {
		
		return "login";
	}
		
	@RequestMapping(value = "/loginOk", method=RequestMethod.POST)
	public String loginOk(HttpServletRequest request, Model model) {
		
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		IDao dao = sqlSession.getMapper(IDao.class);
		
		int checkId = dao.checkIdDao(id);
		int checkPw = dao.checkPwDao(id, pw);
		
		model.addAttribute("checkId", checkId);
		model.addAttribute("checkPw", checkPw);
		
		
						
		if (checkPw == 1) {
							
			AdminDto adminDto = dao.loginInfoDao(id);
			HttpSession session = request.getSession();
			
			session.setAttribute("id", adminDto.getId());
			
			
			model.addAttribute("id", adminDto.getId());
			}
			
				
		return "loginOk";
	}
	
	@RequestMapping(value = "/logout")
	public String logout(HttpSession session) {
		
		session.invalidate();
		
		return "login";
				
	}
	
	@RequestMapping(value = "admin")
	public String admin() {
		
		return "admin";
	}
		

	@RequestMapping(value = "/index")
	public String index() {

		return "index";
	}

	@RequestMapping(value = "/java")
	public String java() {

		return "java";
	}

	@RequestMapping(value = "/python")
	public String python() {

		return "python";
	}

	@RequestMapping(value = "/calendar")
	public String calendar() {

		return "calendar";
	}

	@RequestMapping(value = "/doReservation", method = RequestMethod.POST)
	public String reservation(@RequestParam String name, @RequestParam Integer rguest, @RequestParam String room_name,
			@RequestParam String startRdate, @RequestParam String endRdate,
			@RequestParam(required = false) String special) {
		LocalDate startDate = LocalDate.parse(startRdate);
		LocalDate endDate = LocalDate.parse(endRdate);
		String bbq_yn = "N";
		String campfire_yn = "N";
		if (special.equals("bbq")) {
			bbq_yn = "Y";
		} else if (special.equals("campfire")) {
			campfire_yn = "Y";
		}

		IDao dao = sqlSession.getMapper(IDao.class);
		dao.reservationInputDao(name, room_name, startDate, endDate, rguest, bbq_yn, campfire_yn);

		return "redirect:/calendar";
	}

	@RequestMapping(value = "/css")
	public String css() {

		return "css";
	}

	@RequestMapping(value = "/oracle")
	public String oracle() {

		return "oracle";
	}

	@RequestMapping(value = "/sujung")
	public String sujung() {

		return "sujung";
	}

	@RequestMapping(value = "/register_ok")
	public String register_ok() {

		return "register_ok";
	}

	@RequestMapping(value = "/location")
	public String location() {

		return "location";
	}

	@RequestMapping(value = "/review")
	public String review(HttpServletRequest request, Model model) {

		IDao dao = sqlSession.getMapper(IDao.class);

		ArrayList<BoardDto> bDots = dao.review_listDao();

		model.addAttribute("review_list", bDots);

		return "review";
	}

	@RequestMapping(value = "/review_input")
	public String review_input() {

		return "review_input";
	}

	@RequestMapping(value = "/reviewOk")
	public String r_inputOk(HttpServletRequest request, Model model) {

		String ruser = request.getParameter("ruser");
		String rname = request.getParameter("rname");
		String rcontent = request.getParameter("rcontent");
		String rscore = request.getParameter("rscore");

		IDao dao = sqlSession.getMapper(IDao.class);
		dao.r_inputDao(ruser, rname, rcontent, rscore);

		return "redirect:review";
	}

	@RequestMapping(value = "/qna")
	public String qna(HttpServletRequest request, Model model) {

		IDao dao = sqlSession.getMapper(IDao.class);
		ArrayList<QboardDto> bDots = dao.qna_listDao();
		model.addAttribute("qna_list", bDots);

		return "qna";
	}

	@RequestMapping(value = "/reservationList")
	public String reservationList(Model model, @RequestParam String year, @RequestParam String month,
			@RequestParam String date) {
		int intMonth = Integer.valueOf(month) + 1;

		String strMonth = String.valueOf(intMonth);

		if (month.length() <= 1) {
			month = "0" + strMonth;
		}

		if (date.length() <= 1) {
			date = "0" + date;
		}

		model.addAttribute("year", year);
		model.addAttribute("month", month);
		model.addAttribute("date", date);

		return "reservationList";
	}

	@RequestMapping(value = "/qna_input")
	public String qna_input() {

		return "qna_input";
	}

	@RequestMapping(value = "/qnaOk")
	public String qna_inputOk(HttpServletRequest request, Model model) {

		String qname = request.getParameter("qname");
		String qtitle = request.getParameter("qtitle");
		String qcontent = request.getParameter("qcontent");
		String qphone = request.getParameter("qphone");

		IDao dao = sqlSession.getMapper(IDao.class);
		dao.q_inputDao(qname, qtitle, qcontent, qphone);

		return "redirect:qna";
	}

	@RequestMapping(value = "/qview")
	public String qview(HttpServletRequest request, Model model) {

		String qnum = request.getParameter("qnum");
		IDao dao = sqlSession.getMapper(IDao.class);
		QboardDto QboardDto = dao.viewDao(qnum);

		model.addAttribute("QboardDto", QboardDto);

		return "qview";
	}

	@RequestMapping(value = "/delete")
	public String delete(HttpServletRequest request) {

		String qnum = request.getParameter("qnum");
		IDao dao = sqlSession.getMapper(IDao.class);
		dao.deleteDao(qnum);
		return "redirect:qna";
	}
}
