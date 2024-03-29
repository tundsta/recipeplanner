// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.bulbview.recipeplanner.web.ui;

import com.bulbview.recipeplanner.domain.Schedule;
import com.bulbview.recipeplanner.web.EntityTableColumnGenerator;
import com.vaadin.data.Item;
import com.vaadin.data.util.BeanContainer;
import com.vaadin.data.util.BeanItem;
import com.vaadin.ui.Table;
import java.lang.Class;
import java.lang.Long;
import java.lang.Object;
import java.lang.String;
import java.util.List;

privileged aspect ScheduleView_Roo_VaadinEntityView {
    
    public String ScheduleView.getEntityName() {
        return "Schedule";
    }
    
    public Class<Schedule> ScheduleView.getEntityClass() {
        return Schedule.class;
    }
    
    public boolean ScheduleView.isCreateAllowed() {
        return true;
    }
    
    public boolean ScheduleView.isUpdateAllowed() {
        return true;
    }
    
    public boolean ScheduleView.isDeleteAllowed() {
        return true;
    }
    
    public List<Schedule> ScheduleView.listEntities() {
        List<Schedule> list = Schedule.findAllSchedules();
        return list;
    }
    
    public Schedule ScheduleView.saveEntity(Schedule entity) {
        if (entity == null) {
            return null;
        }
        return (Schedule) entity.merge();
    }
    
    public void ScheduleView.deleteEntity(Schedule entity) {
        if (entity != null) {
            entity.remove();
        }
    }
    
    public boolean ScheduleView.isNewEntity(Schedule entity) {
        return (entity != null && getIdForEntity(entity) == null);
    }
    
    public String ScheduleView.getIdProperty() {
        return "id";
    }
    
    public String ScheduleView.getVersionProperty() {
        return "version";
    }
    
    public Schedule ScheduleView.createEntityInstance() {
        return new Schedule();
    }
    
    public BeanContainer<Long, Schedule> ScheduleView.getTableContainer() {
        BeanContainer<Long, Schedule> container = new BeanContainer<Long, Schedule>(Schedule.class);
        container.setBeanIdProperty("id");
        for (Schedule entity : Schedule.findAllSchedules()) {
            container.addBean(entity);
        }
        return container;
    }
    
    public Item ScheduleView.getItemForEntity(Schedule entity) {
        Item item = getTable().getItem(entity.getId());
        if (item == null) {
            item = new BeanItem<Schedule>(entity);
        }
        return item;
    }
    
    public Schedule ScheduleView.getEntityForItem(Item item) {
        if (item != null) {
            return ((BeanItem<Schedule>) item).getBean();
        } else {
            return null;
        }
    }
    
    public Object ScheduleView.getIdForEntity(Schedule entity) {
        return entity != null ? entity.getId() : null;
    }
    
    public void ScheduleView.setupGeneratedColumns(Table table) {
        table.removeGeneratedColumn("recipes");
        table.addGeneratedColumn("recipes", new EntityTableColumnGenerator((String) getRecipeCaptionPropertyId()));
    }
    
    public Object ScheduleView.getRecipeCaptionPropertyId() {
        return "name";
    }
    
}
