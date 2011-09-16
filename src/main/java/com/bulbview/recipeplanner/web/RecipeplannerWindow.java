package com.bulbview.recipeplanner.web;

import com.vaadin.ui.Window;

public class RecipeplannerWindow extends Window {

    public RecipeplannerWindow() {

        // entity manager
        RecipeplannerEntityManagerView entityManagerView = new RecipeplannerEntityManagerView();
        setContent(entityManagerView);

        // select window theme
        setTheme("recipeplanner");
    }
}
