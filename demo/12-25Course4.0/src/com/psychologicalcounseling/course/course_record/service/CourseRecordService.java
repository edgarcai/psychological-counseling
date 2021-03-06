package com.psychologicalcounseling.course.course_record.service;

import java.io.Serializable;
import java.util.Date;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.psychologicalcounseling.course.course_intr.dao.CourseIntrDaoImpl;
import com.psychologicalcounseling.course.course_record.dao.InsertCourseRecordDaoImpl;
import com.psychologicalcounseling.course.course_record.dao.UpdateCourseRecordDaoImpl;
import com.psychologicalcounseling.entity.Course;
import com.psychologicalcounseling.entity.User;
import com.psychologicalcounseling.user.dao.FindUserDaoImpl;


@Service
@Transactional(readOnly=false)
public class CourseRecordService {
	
	@Resource
	private InsertCourseRecordDaoImpl insertCourseRecordDaoImpl;
	@Resource
	private UpdateCourseRecordDaoImpl updateCourseRecordDaoImpl;
	@Resource
	private CourseIntrDaoImpl courseIntrDaoImpl;
	@Resource
	private FindUserDaoImpl findUserDaoImpl;
	
	public int addCourseRecord(int userId,int courseId,Date date,int logId) {
		Course course = courseIntrDaoImpl.findById(courseId);
		User user = findUserDaoImpl.selectUserById(userId);
		Serializable crid = insertCourseRecordDaoImpl.insertCourseRecord(user, course, date, logId);
		if(crid==null) {
			System.out.println("课程学习记录插入失败");
			return 0;
		}else {
			int i = (int)crid;
			System.out.println("课程学习记录插入成功");
			return i;
		}
	}
	
	@Transactional
	public void setCourseRecord(int time,int totaltime,int crid) {
		//计算播放了的视频的百分比
		int percent = time*100/totaltime;
		//调用dao方法更新数据
		int i =updateCourseRecordDaoImpl.updateCourseRecord(time, percent, crid);
		if(i==0) {
			System.out.println("更新学习记录表失败");
		}else {
			System.out.println("更新学习记录表成功");
		}
	}
	
}
