// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.bulbview.recipeplanner.web.ui;

import com.bulbview.recipeplanner.domain.Recipe;
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

privileged aspect RecipeView_Roo_VaadinEntityView {
    
    public String RecipeView.getEntityName() {
        return "Recipe";
    }
    
    public Class<Recipe> RecipeView.getEntityClass() {
        return Recipe.class;
    }
    
    public boolean RecipeView.isCreateAllowed() {
        return true;
    }
    
    public boolean RecipeView.isUpdateAllowed() {
        return true;
    }
    
    public boolean RecipeView.isDeleteAllowed() {
        return true;
    }
    
    public List<Recipe> RecipeView.listEntities() {
        List<Recipe> list = Recipe.findAllRecipes();
        return list;
    }
    
    public Recipe RecipeView.saveEntity(Recipe entity) {
        if (entity == null) {
            return null;
        }
        return (Recipe) entity.merge();
    }
    
    public void RecipeView.deleteEntity(Recipe entity) {
        if (entity != null) {
            entity.remove();
        }
    }
    
    public boolean RecipeView.isNewEntity(Recipe entity) {
        return (entity != null && getIdForEntity(entity) == null);
    }
    
    public String RecipeView.getIdProperty() {
        return "id";
    }
    
    public String RecipeView.getVersionProperty() {
        return "version";
    }
    
    public Recipe RecipeView.createEntityInstance() {
        return new Recipe();
    }
    
    public BeanContainer<Long, Recipe> RecipeView.getTableContainer() {
        BeanContainer<Long, Recipe> container = new BeanContainer<Long, Recipe>(Recipe.class);
        container.setBeanIdProperty("id");
        for (Recipe entity : Recipe.findAllRecipes()) {
            container.addBean(entity);
        }
        return container;
    }
    
    public Item RecipeView.getItemForEntity(Recipe entity) {
        Item item = getTable().getItem(entity.getId());
        if (item == null) {
            item = new BeanItem<Recipe>(entity);
        }
        return item;
    }
    
    public Recipe RecipeView.getEntityForItem(Item item) {
        if (item != null) {
            return ((BeanItem<Recipe>) item).getBean();
        } else {
            return null;
        }
    }
    
    public Object RecipeView.getIdForEntity(Recipe entity) {
        return entity != null ? entity.getId() : null;
    }
    
    public void RecipeView.setupGeneratedColumns(Table table) {
        table.removeGeneratedColumn("ingredients");
        table.addGeneratedColumn("ingredients", new EntityTableColumnGenerator((String) getIngredientQuantityCaptionPropertyId()));
    }
    
    public Object RecipeView.getIngredientQuantityCaptionPropertyId() {
        return null;
    }
    
}