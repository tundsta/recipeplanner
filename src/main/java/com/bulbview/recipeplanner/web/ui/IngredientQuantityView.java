package com.bulbview.recipeplanner.web.ui;

import com.bulbview.recipeplanner.web.AbstractEntityView;
import com.bulbview.recipeplanner.web.EntityEditor;
import com.vaadin.spring.roo.addon.annotations.RooVaadinEntityView;
import com.vaadin.ui.Table;

@RooVaadinEntityView(formBackingObject = com.bulbview.recipeplanner.domain.IngredientQuantity.class)
public class IngredientQuantityView extends AbstractEntityView<com.bulbview.recipeplanner.domain.IngredientQuantity> {

    @Override
    protected EntityEditor createForm() {
        return new IngredientQuantityForm();
    }

    @Override
    protected void configureTable(Table table) {
        table.setContainerDataSource(getTableContainer());
        table.setVisibleColumns(getTableColumns());

        setupGeneratedColumns(table);
    }

}
