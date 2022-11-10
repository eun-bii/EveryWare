package com.kh.app00;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.app00.calendar.service.CalendarService;
import com.kh.app00.calendar.vo.CalendarVo;
import com.kh.app00.commute.service.CommuteService;
import com.kh.app00.commute.vo.CommuteVo;
import com.kh.app00.emp.vo.EmpVo;

@Controller
public class HomeController {
    
    private final CommuteService commuteService;
    private final CalendarService calendarService;
    
    //생성자
    @Autowired
    public HomeController(CommuteService commuteService, CalendarService calendarService) {
        this.commuteService = commuteService;
        this.calendarService = calendarService;
    }
    
    @GetMapping("/")
    public String commuteWidget(HttpSession session, EmpVo empVo, Model model, HttpServletRequest request) {
        
        //사원 정보 (로그인 유저)
        EmpVo loginMember = (EmpVo)session.getAttribute("loginMember");
        empVo.setEmpCode(loginMember.getEmpCode());
        
        
        //근태 위젯의 출퇴근 시간 조회
        String startTimeFormat = null;
        String endTimeFormat = null;
        CommuteVo commuteVo;
        
        if((commuteVo = commuteService.selectCommute(empVo)) != null) {
            startTimeFormat = commuteVo.getStartTimeFormat();
            endTimeFormat = commuteVo.getEndTimeFormat();
            
            model.addAttribute("startTimeFormat", startTimeFormat);
            model.addAttribute("endTimeFormat", endTimeFormat);
        }else {
            model.addAttribute("startTimeFormat", null);
            model.addAttribute("endTimeFormat", null);
        }
        //근태 끝
        
        
        //일정
        List<CalendarVo> calendar = null;
        
        calendar = calendarService.getAllCalendar(loginMember);
		request.setAttribute("calendarList", calendar);
        
        //일정 끝
		
        return "home";
    }
	
	@RequestMapping(value = "/")
	public String home() {
		return "home";
	}
	
}
