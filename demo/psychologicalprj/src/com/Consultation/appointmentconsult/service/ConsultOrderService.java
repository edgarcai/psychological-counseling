package com.Consultation.appointmentconsult.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.Consultation.appointmentconsult.dao.ConsultOrderDao;
import com.Consultation.appointmentconsult.dao.ConsultOrderTeacherDao;
import com.Consultation.appointmentconsult.dao.ConsultOrderUserDao;
import com.entity.ConsultationRecord;
import com.entity.Teacher;
/**
 * 
 *@desc:咨询订单相关service
 *@author chunhui
 *@date:Nov 29, 20182:02:02 PM
 */
import com.entity.User;
@Service
@Transactional(readOnly=false)
public class ConsultOrderService {
	@Resource
	private ConsultOrderDao consultOrderDao;
	@Resource
	private ConsultOrderUserDao consultOrderUserDao;
	@Resource
	private ConsultOrderTeacherDao consultOrderTeacherDao;
	
	@Transactional(readOnly=true)
	public boolean findIsHasPhone(int userId) {
		return this.consultOrderDao.selectIsHasPhoneNum(userId);
	}
	public void modifyUserPhoneById(int userId,String userPhone) {
		this.consultOrderDao.updateUserPhoneById(userId, userPhone);
	}

	public int generateConsultOrder(int userId,int teacherId,String date,String teacherPrice,String content,String consultType) {
		String[] aStrings=content.split("-");
		User user=this.consultOrderUserDao.selectUserById(userId);
		Teacher teacher=this.consultOrderTeacherDao.selectTeacherById(teacherId);
		float price=Float.valueOf(teacherPrice);
		ConsultationRecord consultationRecord=new ConsultationRecord();
		consultationRecord.setUser(user);
		consultationRecord.setTeacher(teacher);
		consultationRecord.setConsultationrecordOrderTime(date);
		consultationRecord.setConsultationrecordStartTime(aStrings[0]);
		consultationRecord.setConsultationrecordEndTime(aStrings[1]);
		consultationRecord.setConsultationrecordPrice(price);
		consultationRecord.setConsultationrecordMethod(consultType);
		//订单流水号	
		int consultOrderId=this.consultOrderDao.insertConsultOrder(consultationRecord);
		return consultOrderId;
	}
	public void modifyRandomNum(String randomNum,int orderId) {
		this.consultOrderDao.updateConsultOrder(randomNum,orderId);
	}
	@Transactional(readOnly=true)
	public boolean findIsConsult(int teacherId,String orderTime,String startTime,String endTime) {
		return this.consultOrderDao.selectIsConsult(teacherId, orderTime, startTime, endTime);
	}
	public void modifyConsultState(int consultOrderId) {
		this.consultOrderDao.updateConsultState(consultOrderId);
	}
	public void delConsultOrderMessage(int consultOrderId) {
		this.consultOrderDao.deleteConsultOrderMessage(consultOrderId);
	}

}