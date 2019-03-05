package com.scit.wow;

import java.util.Date;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.util.WebUtils;

import com.scit.wow.dao.MemberDAO;
import com.scit.wow.vo.ExtraInfo;
import com.scit.wow.vo.Member;

@Controller
public class MemberController {
	
	@Autowired
	MemberDAO memberDAO;

	@RequestMapping(value="insertMember", method=RequestMethod.POST)
	public String insertMember(Member mem, Model model) {
		try {
			int result = memberDAO.insertMember(mem);
			if(result==1) {
				System.out.println(mem.getBirthdate());
				model.addAttribute("mem", mem);
				return "member/memberType";
			}
		} catch(Exception e) {
			e.printStackTrace();
		}
		
		return "redirect:/goSignUp";
	}
	
	@RequestMapping(value="goMemT", method=RequestMethod.GET)
	public String goMemT() {
		return "member/memberType";
	}
	
	@RequestMapping(value="memberType", method=RequestMethod.POST)
	public String memberType(Member mem, Model model, String memberType) {
		System.out.println(mem);
		model.addAttribute("memberType", memberType);
		model.addAttribute("mem", mem);
		
		return "member/extraInfo";
	}
	
	@RequestMapping(value="exInfoSave", method=RequestMethod.POST)
	public String exInfoSave(ExtraInfo extraInfo, Model model){
		try {
			memberDAO.insertExtraInfo(extraInfo);
		} catch(Exception e) {
			e.printStackTrace();
		}
		
		return "forward:/login";
	}
	@RequestMapping(value="login", method=RequestMethod.POST)
	public String login(Member mem, Model model, HttpSession hs, HttpServletResponse response) {
		Member member = null;
		
		try {
			member = memberDAO.login(mem);
			if(member==null||!mem.getPw().equals(member.getPw())) {
				model.addAttribute("loginFail", "ID 또는 비밀번호가 잘못되었습니다.");
				return "member/login";
			} else {
				hs.setAttribute("sessionLogin", member);
				
				// 1. 로그인이 성공하면, 그 다음으로 로그인 폼에서 쿠키가 체크된 상태로 로그인 요청이 왔는지를 확인한다.
	            if ( mem.isUseCookie() ){ // dto 클래스 안에 useCookie 항목에 폼에서 넘어온 쿠키사용 여부(true/false)가 들어있을 것임
	                // 쿠키 사용한다는게 체크되어 있으면...
	                // 쿠키를 생성하고 현재 로그인되어 있을 때 생성되었던 세션의 id를 쿠키에 저장한다.
	                Cookie cookie = new Cookie("loginCookie", hs.getId());
	                // 쿠키를 찾을 경로를 컨텍스트 경로로 변경해 주고...
	                cookie.setPath("/");
	                int amount = 60 * 60 * 24 * 7;
	                cookie.setMaxAge(amount); // 단위는 (초)임으로 7일정도로 유효시간을 설정해 준다.
	                // 쿠키를 적용해 준다.
	                response.addCookie(cookie);
	                 
	                // currentTimeMills()가 1/1000초 단위임으로 1000곱해서 더해야함
	                Date sessionLimit = new Date(System.currentTimeMillis() + (1000*amount));
	                // 현재 세션 id와 유효시간을 사용자 테이블에 저장한다.
	                memberDAO.keepLogin(member.getId(), hs.getId(), sessionLimit);
	            }


				
				return "redirect:/";
			}
		} catch(Exception e) {
			e.printStackTrace();
			model.addAttribute("loginFail", "ID 또는 비밀번호가 잘못되었습니다.");
			return "member/login";
		}
	}
	
	@RequestMapping(value="logout", method=RequestMethod.GET)
	public String logout(HttpSession hs, HttpServletRequest request, HttpServletResponse response) {
		Object obj = hs.getAttribute("sessionLogin");
        if ( obj != null ){
            Member mem = (Member)obj;
            // null이 아닐 경우 제거
            hs.removeAttribute("sessionLogin");
            hs.invalidate(); // 세션 전체를 날려버림
            //쿠키를 가져와보고
            Cookie loginCookie = WebUtils.getCookie(request, "loginCookie");
            if ( loginCookie != null ){
                // null이 아니면 존재하면!
                loginCookie.setPath("/");
                // 쿠키는 없앨 때 유효시간을 0으로 설정하는 것 !!! invalidate같은거 없음.
                loginCookie.setMaxAge(0);
                // 쿠키 설정을 적용한다.
                response.addCookie(loginCookie);
                 
                // 사용자 테이블에서도 유효기간을 현재시간으로 다시 세팅해줘야함.
                Date date = new Date(System.currentTimeMillis());
                memberDAO.keepLogin(mem.getId(), hs.getId(), date);
            }
        }

		return "redirect:/";
	}
}
