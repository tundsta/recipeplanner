// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.bulbview.recipeplanner.web.ui;

import com.bulbview.recipeplanner.domain.Ingredient;
import com.bulbview.recipeplanner.web.EntityTableColumnGenerator;
import com.vaadin.data.Item;
import com.vaadin.data.util.BeanContainer;
import com.vaadin.data.util.BeanItem;
import com.vaadin.ui.Table;
import java.lang.Class;
import java.lang.Long;
import java.lang.String;
import java.util.List;

privileged aspect IngredientView_Roo_VaadinEntityView {
    
    public String IngredientView.getEntityName() {
        return "Ingredient";
    }
    
    public Class<Ingredient> IngredientView.getEntityClass() {
        return Ingredient.class;
    }
    
    public boolean IngredientView.isCreateAllowed() {
        return true;
    }
    
    public boolean IngredientView.isUpdateAllowed() {
        return true;
    }
    
    public boolean IngredientView.isDeleteAllowed() {
        return true;
    }
    
    public List<Ingredient> IngredientView.listEntities() {
        List<Ingredient> list = Ingredient.findAllIngredients();
        return list;
    }
    
    public Ingredient IngredientView.saveEntity(Ingredient entity) {
        if (entity == null) {
            return null;
        }
        return (Ingredient) entity.merge();
    }
    
    public void IngredientView.deleteEntity(Ingredient entity) {
        if (entity != null) {
            entity.remove();
        }
    }
    
    public boolean IngredientView.isNewEntity(Ingredient entity) {
        return (entity != null && getIdForEntity(entity) == null);
    }
    
    public String IngredientView.getIdProperty() {
        return "id";
    }
    
    public String IngredientView.getVersionProperty() {
        return "version";
    }
    
    public Ingredient IngredientView.createEntityInstance() {
        return new Ingredient();
    }
    
    public BeanContainer<Long, Ingredient> IngredientView.getTableContainer() {
        BeanContainer<Long, Ingredient> container = new BeanContainer<Long, Ingredient>(Ingredient.class);
        container.setBeanIdProperty("id");
        for (Ingredient entity : Ingredient.findAllIngredients()) {
            container.addBean(entity);
        }
        return container;
    }
    
    public Item IngredientView.getItemForEntity(Ingredient entity) {
        Item item = getTable().getItem(entity.getId());
        if (item == null) {
            item = new BeanItem<Ingredient>(entity);
        }
        return item;
    }
    
    public Ingredient IngredientView.getEntityForItem(Item item) {
        if (item != null) {
            return ((BeanItem<Ingredient>) item).getBean();
        } else {
            return null;
        }
    }
    
    public Object IngredientView.getIdForEntity(Ingredient entity) {
        return entity != null ? entity.getId() : null;
    }
    
    public void IngredientView.setupGeneratedColumns(Table table) {
        // Add generated columns here
    }
    
}
