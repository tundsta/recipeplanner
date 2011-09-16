package com.bulbview.recipeplanner.domain;

import org.springframework.roo.addon.entity.RooEntity;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.tostring.RooToString;
import java.util.Set;
import com.bulbview.recipeplanner.domain.Ingredient;
import java.util.HashSet;
import javax.persistence.ManyToMany;
import javax.persistence.CascadeType;
import javax.persistence.ManyToOne;

@RooJavaBean
@RooToString
@RooEntity
public class IngredientQuantity {

    @ManyToOne
    private Ingredient ingredient;

    private double amount;
}
