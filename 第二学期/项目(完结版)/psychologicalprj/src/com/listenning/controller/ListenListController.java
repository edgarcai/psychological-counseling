package com.listenning.controller;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.entity.Course;
import com.entity.Teacher;
import com.entity.UserCount;
import com.indexing.service.CourseServiceImpl;
import com.indexing.service.TeacherServiceImpl;
import com.listenning.dao.UserCountDaoImpl;
import com.listenning.service.UserCountServiceImpl;
import com.util.Page;

import net.sf.json.JSONArray;

@Controller
public class ListenListController {
	private Logger logger = Logger.getLogger(ListenListController.class);

	@Resource
	private TeacherServiceImpl teacherServiceImpl;
	@Resource
	private CourseServiceImpl courseServiceImpl;
	@Resource
	private UserCountServiceImpl UserCountServiceImpl;
	

	@RequestMapping("/listenList")
	public String IndexConrol(HttpSession session, Model model, HttpServletResponse response) throws Exception {
		int pageNum = 1;
		String gender = "default";
		String age = "default";
		List<Teacher> canListeners = teacherServiceImpl.listListeners(pageNum, Page.PageSize, gender, age);
		long totalCount = teacherServiceImpl.countListeners(gender, age);

		Page<Teacher> page = new Page<Teacher>();
		page.setList(canListeners);
		page.setPageNum(pageNum);
		page.setPageSize(Page.PageSize);
		page.setTotalCount(totalCount);

		logger.info("before add.. pageNum : " + pageNum);
		model.addAttribute("page", page);
		model.addAttribute("pageNum", pageNum);

		session.setAttribute("gender", gender);
		session.setAttribute("age", age);
		
	    //用户访问量计数
		UserCountServiceImpl.addCount();
		
		
		return "listen-list";

	}
	@RequestMapping("/selectcount")
	public void selectCount(HttpSession session, Model model,
								HttpServletRequest request,HttpServletResponse response) throws Exception {
		if(session.getAttribute("userId")==null) request.getRequestDispatcher("/login/regist").forward(request, response);
		List<UserCount> list=UserCountServiceImpl.selectUserCount();
		JSONArray json = JSONArray.fromObject(list); 
		session.setAttribute("usercount",json);
		
		request.getRequestDispatcher("preshowchart?time=a").forward(request, response);
//		return "test";
	}

	@RequestMapping("/selectListener")
	public String selectControl(@RequestParam("gender") String gender, @RequestParam("age") String age,
			HttpSession session, Model model) throws Exception {

		session.setAttribute("gender", gender);
		session.setAttribute("age", age);
		List<Teacher> canListeners = teacherServiceImpl.listListeners(1, Page.PageSize, gender, age);
		long totalCount = teacherServiceImpl.countListeners(gender, age);
		Page<Teacher> page = new Page<Teacher>();
		page.setPageNum(1);
		page.setList(canListeners);
		page.setPageSize(Page.PageSize);
		page.setTotalCount(totalCount);
		model.addAttribute("page", page);
		return "listen-list";
	}

	@RequestMapping("/nextPage")
	public String nextPage(String gender, String age, HttpSession session, Model model, int pageNum) throws Exception {
		// 如果gender 和 age 为空
		if (gender == null && age == null) {
			gender = (String) session.getAttribute("gender");
			age = (String) session.getAttribute("age");
		}
		List<Teacher> canListeners = teacherServiceImpl.listListeners(pageNum, Page.PageSize, gender, age);
		long totalCount = teacherServiceImpl.countListeners(gender, age);
		Page<Teacher> page = new Page<Teacher>();
		page.setPageNum(pageNum);
		page.setList(canListeners);
		page.setPageSize(Page.PageSize);
		page.setTotalCount(totalCount);
		model.addAttribute("page", page);
		return "listen-list";
	}

	@RequestMapping("/consulterDetail")
	public String consulterDetailController(@RequestParam("id") int id, Model model) {
		Teacher t = teacherServiceImpl.findTeacherById(id);
		String[] aString = t.getAuthenticationAptitudeName().split(" ");
		String[] goodats = t.getGoodats().split(" ");
		model.addAttribute("authenticationAptitudeName", Arrays.asList(aString));
		model.addAttribute("goodats", Arrays.asList(goodats));
		List<Course> courses = courseServiceImpl.listCoursesByTeacherId(id);
		model.addAttribute("courses", courses);
		model.addAttribute("teacher", t);
		return "consulter";
	}

	@RequestMapping("/consultAppointment")
	public String consultAppointmentController1(@RequestParam("id") int id, Model model) {
		DateFormat bf = new SimpleDateFormat("yyyy-MM-dd");
		Date date1 = new Date();
		String format = bf.format(date1);
		Teacher t = teacherServiceImpl.findTeacherById(id);
		String[] aString = t.getAuthenticationAptitudeName().split(" ");
		String[] goodats = t.getGoodats().split(" ");
		model.addAttribute("authenticationAptitudeName", Arrays.asList(aString));
		model.addAttribute("goodats", Arrays.asList(goodats));
		model.addAttribute("teacher", t);
		model.addAttribute("format", format);
		return "appointment-listening";
	}

}
