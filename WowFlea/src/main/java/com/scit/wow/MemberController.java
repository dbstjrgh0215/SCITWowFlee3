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
				model.addAttribute("loginFail", "ID �Ǵ� ��й�ȣ�� �߸��Ǿ����ϴ�.");
				return "member/login";
			} else {
				hs.setAttribute("sessionLogin", member);
				
				// 1. �α����� �����ϸ�, �� �������� �α��� ������ ��Ű�� üũ�� ���·� �α��� ��û�� �Դ����� Ȯ���Ѵ�.
	            if ( mem.isUseCookie() ){ // dto Ŭ���� �ȿ� useCookie �׸� ������ �Ѿ�� ��Ű��� ����(true/false)�� ������� ����
	                // ��Ű ����Ѵٴ°� üũ�Ǿ� ������...
	                // ��Ű�� �����ϰ� ���� �α��εǾ� ���� �� �����Ǿ��� ������ id�� ��Ű�� �����Ѵ�.
	                Cookie cookie = new Cookie("loginCookie", hs.getId());
	                // ��Ű�� ã�� ��θ� ���ؽ�Ʈ ��η� ������ �ְ�...
	                cookie.setPath("/");
	                int amount = 60 * 60 * 24 * 7;
	                cookie.setMaxAge(amount); // ������ (��)������ 7�������� ��ȿ�ð��� ������ �ش�.
	                // ��Ű�� ������ �ش�.
	                response.addCookie(cookie);
	                 
	                // currentTimeMills()�� 1/1000�� ���������� 1000���ؼ� ���ؾ���
	                Date sessionLimit = new Date(System.currentTimeMillis() + (1000*amount));
	                // ���� ���� id�� ��ȿ�ð��� ����� ���̺� �����Ѵ�.
	                memberDAO.keepLogin(member.getId(), hs.getId(), sessionLimit);
	            }


				
				return "redirect:/";
			}
		} catch(Exception e) {
			e.printStackTrace();
			model.addAttribute("loginFail", "ID �Ǵ� ��й�ȣ�� �߸��Ǿ����ϴ�.");
			return "member/login";
		}
	}
	
	@RequestMapping(value="logout", method=RequestMethod.GET)
	public String logout(HttpSession hs, HttpServletRequest request, HttpServletResponse response) {
		Object obj = hs.getAttribute("sessionLogin");
        if ( obj != null ){
            Member mem = (Member)obj;
            // null�� �ƴ� ��� ����
            hs.removeAttribute("sessionLogin");
            hs.invalidate(); // ���� ��ü�� ��������
            //��Ű�� �����ͺ���
            Cookie loginCookie = WebUtils.getCookie(request, "loginCookie");
            if ( loginCookie != null ){
                // null�� �ƴϸ� �����ϸ�!
                loginCookie.setPath("/");
                // ��Ű�� ���� �� ��ȿ�ð��� 0���� �����ϴ� �� !!! invalidate������ ����.
                loginCookie.setMaxAge(0);
                // ��Ű ������ �����Ѵ�.
                response.addCookie(loginCookie);
                 
                // ����� ���̺����� ��ȿ�Ⱓ�� ����ð����� �ٽ� �����������.
                Date date = new Date(System.currentTimeMillis());
                memberDAO.keepLogin(mem.getId(), hs.getId(), date);
            }
        }

		return "redirect:/";
	}
}
