// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.bulbview.recipeplanner.domain;

import com.bulbview.recipeplanner.domain.Schedule;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.Iterator;
import java.util.List;
import java.util.Random;
import javax.validation.ConstraintViolation;
import javax.validation.ConstraintViolationException;
import org.springframework.stereotype.Component;

privileged aspect ScheduleDataOnDemand_Roo_DataOnDemand {
    
    declare @type: ScheduleDataOnDemand: @Component;
    
    private Random ScheduleDataOnDemand.rnd = new SecureRandom();
    
    private List<Schedule> ScheduleDataOnDemand.data;
    
    public Schedule ScheduleDataOnDemand.getNewTransientSchedule(int index) {
        Schedule obj = new Schedule();
        setStartDate(obj, index);
        return obj;
    }
    
    public void ScheduleDataOnDemand.setStartDate(Schedule obj, int index) {
        Date startDate = new GregorianCalendar(Calendar.getInstance().get(Calendar.YEAR), Calendar.getInstance().get(Calendar.MONTH), Calendar.getInstance().get(Calendar.DAY_OF_MONTH), Calendar.getInstance().get(Calendar.HOUR_OF_DAY), Calendar.getInstance().get(Calendar.MINUTE), Calendar.getInstance().get(Calendar.SECOND) + new Double(Math.random() * 1000).intValue()).getTime();
        obj.setStartDate(startDate);
    }
    
    public Schedule ScheduleDataOnDemand.getSpecificSchedule(int index) {
        init();
        if (index < 0) index = 0;
        if (index > (data.size() - 1)) index = data.size() - 1;
        Schedule obj = data.get(index);
        return Schedule.findSchedule(obj.getId());
    }
    
    public Schedule ScheduleDataOnDemand.getRandomSchedule() {
        init();
        Schedule obj = data.get(rnd.nextInt(data.size()));
        return Schedule.findSchedule(obj.getId());
    }
    
    public boolean ScheduleDataOnDemand.modifySchedule(Schedule obj) {
        return false;
    }
    
    public void ScheduleDataOnDemand.init() {
        data = Schedule.findScheduleEntries(0, 10);
        if (data == null) throw new IllegalStateException("Find entries implementation for 'Schedule' illegally returned null");
        if (!data.isEmpty()) {
            return;
        }
        
        data = new ArrayList<com.bulbview.recipeplanner.domain.Schedule>();
        for (int i = 0; i < 10; i++) {
            Schedule obj = getNewTransientSchedule(i);
            try {
                obj.persist();
            } catch (ConstraintViolationException e) {
                StringBuilder msg = new StringBuilder();
                for (Iterator<ConstraintViolation<?>> it = e.getConstraintViolations().iterator(); it.hasNext();) {
                    ConstraintViolation<?> cv = it.next();
                    msg.append("[").append(cv.getConstraintDescriptor()).append(":").append(cv.getMessage()).append("=").append(cv.getInvalidValue()).append("]");
                }
                throw new RuntimeException(msg.toString(), e);
            }
            obj.flush();
            data.add(obj);
        }
    }
    
}
