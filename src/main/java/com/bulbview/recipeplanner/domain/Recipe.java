package com.bulbview.recipeplanner.domain;

import org.springframework.roo.addon.entity.RooEntity;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.tostring.RooToString;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import java.util.Set;
import com.bulbview.recipeplanner.domain.IngredientQuantity;
import java.util.HashSet;
import javax.persistence.OneToMany;
import javax.persistence.CascadeType;

@RooJavaBean
@RooToString
@RooEntity
public class Recipe {

    @NotNull
    @Size(max = 50)
    private String name;

    @OneToMany(cascade = CascadeType.ALL)
    private Set<IngredientQuantity> ingredients = new HashSet<IngredientQuantity>();
}
