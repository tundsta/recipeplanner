package com.bulbview.recipeplanner.web.ui;

import com.bulbview.recipeplanner.web.EntityEditor;
import com.vaadin.annotations.AutoGenerated;
import com.vaadin.data.Item;
import com.vaadin.event.ShortcutAction.KeyCode;
import com.vaadin.spring.roo.addon.annotations.RooVaadinVisuallyComposableEntityForm;
import com.vaadin.ui.AbsoluteLayout;
import com.vaadin.ui.Alignment;
import com.vaadin.ui.Button;
import com.vaadin.ui.Button.ClickListener;
import com.vaadin.ui.CustomComponent;
import com.vaadin.ui.Field;
import com.vaadin.ui.HorizontalLayout;
import com.vaadin.ui.Label;
import com.vaadin.ui.Panel;
import com.vaadin.ui.TextField;
import com.vaadin.ui.TwinColSelect;
import com.vaadin.ui.VerticalLayout;

/**
 * Form for editing an entity. The layout of this form can be edited with the
 * Vaadin Visual Editor.
 * 
 * Fields are automatically bound to container data sources and item properties
 * based on their names (propertyId + "Field") in the aspect. Implementing
 * methods with the same name as used in the aspect allows "overriding"
 * functionality as such methods replace those from the aspect.
 */
@RooVaadinVisuallyComposableEntityForm(formBackingObject = com.bulbview.recipeplanner.domain.Recipe.class)
public class RecipeForm extends CustomComponent implements EntityEditor {

    @AutoGenerated
	private AbsoluteLayout mainLayout;
	@AutoGenerated
	private Panel scrollPanel;
	@AutoGenerated
	private VerticalLayout scrollContent;
	@AutoGenerated
	private HorizontalLayout buttonLayout;
	@AutoGenerated
	private Button deleteButton;
	@AutoGenerated
	private Button cancelButton;
	@AutoGenerated
	private Button saveButton;
	@AutoGenerated
	private Label errorMessageLabel;
	@AutoGenerated
	private Label label_1;
	@AutoGenerated
	private VerticalLayout fieldLayout;
	@AutoGenerated
	private TwinColSelect ingredientsField;
	@AutoGenerated
	private IngredientQuantityForm ingredientQuantityForm_1;
	@AutoGenerated
	private TextField nameField;

	/*- VaadinEditorProperties={"grid":"RegularGrid,20","showGrid":true,"snapToGrid":true,"snapToObject":true,"movingGuides":false,"snappingDistance":10} */

	

	/*- VaadinEditorProperties={"grid":"RegularGrid,20","showGrid":true,"snapToGrid":true,"snapToObject":true,"movingGuides":false,"snappingDistance":10} */

	

	/*- VaadinEditorProperties={"grid":"RegularGrid,20","showGrid":true,"snapToGrid":true,"snapToObject":true,"movingGuides":false,"snappingDistance":10} */

	

	/*- VaadinEditorProperties={"grid":"RegularGrid,20","showGrid":true,"snapToGrid":true,"snapToObject":true,"movingGuides":false,"snappingDistance":10} */

	// data item being edited
    private Item item;

    public RecipeForm() {
        buildMainLayout();
        setCompositionRoot(mainLayout);

        configure();

        // make saving the form the default action on Enter keypress
        saveButton.setClickShortcut(KeyCode.ENTER);

        // TODO add user code here
    }

    public void addSaveActionListener(ClickListener listener) {
        saveButton.addListener(listener);
    }

    public void addCancelActionListener(ClickListener listener) {
        cancelButton.addListener(listener);
    }

    public void addDeleteActionListener(ClickListener listener) {
        deleteButton.addListener(listener);
    }

    public void setSaveAllowed(boolean canSave) {
        saveButton.setVisible(canSave);
        cancelButton.setVisible(canSave);
        saveButton.setEnabled(canSave);
        cancelButton.setEnabled(canSave);

        // do not change the enabled state of the delete button
        fieldLayout.setEnabled(canSave);
    }

    public void setDeleteAllowed(boolean canDelete) {
        deleteButton.setVisible(canDelete);
        deleteButton.setEnabled(canDelete);
    }

    public void setCommitErrorMessage(String message) {
        errorMessageLabel.setVisible(message != null);
   	    errorMessageLabel.setValue(message);
    }

    public void commit() {
        if (getItemDataSource() != null) {
            validateFields();
            setCommitErrorMessage(null);
            commitFields();
        }
    }

    public void setItemDataSource(Item item) {
        // TODO implement

        this.item = item;

        setFieldValues(item);
        setCommitErrorMessage(null);
    }

    public Item getItemDataSource() {
        return item;
    }

    @Override
    public void focus() {
        Field field = getFirstField();
        if (field != null) {
            field.focus();
        }
    }

    @AutoGenerated
	private AbsoluteLayout buildMainLayout() {
		// common part: create layout
		mainLayout = new AbsoluteLayout();
		mainLayout.setImmediate(false);
		mainLayout.setWidth("100%");
		mainLayout.setHeight("100%");
		mainLayout.setMargin(false);
		
		// top-level component properties
		setWidth("100.0%");
		setHeight("100.0%");
		
		// scrollPanel
		scrollPanel = buildScrollPanel();
		mainLayout.addComponent(scrollPanel,
				"top:0.0px;right:3.0px;bottom:2.0px;left:0.0px;");
		
		return mainLayout;
	}

	@AutoGenerated
	private Panel buildScrollPanel() {
		// common part: create layout
		scrollPanel = new Panel();
		scrollPanel.setImmediate(false);
		scrollPanel.setWidth("100.0%");
		scrollPanel.setHeight("100.0%");
		
		// scrollContent
		scrollContent = buildScrollContent();
		scrollPanel.setContent(scrollContent);
		
		return scrollPanel;
	}

	@AutoGenerated
	private VerticalLayout buildScrollContent() {
		// common part: create layout
		scrollContent = new VerticalLayout();
		scrollContent.setImmediate(false);
		scrollContent.setWidth("100.0%");
		scrollContent.setHeight("-1px");
		scrollContent.setMargin(true);
		scrollContent.setSpacing(true);
		
		// fieldLayout
		fieldLayout = buildFieldLayout();
		scrollContent.addComponent(fieldLayout);
		
		// label_1
		label_1 = new Label();
		label_1.setImmediate(false);
		label_1.setWidth("-1px");
		label_1.setHeight("-1px");
		label_1.setValue("BooooooooooLLLLL");
		scrollContent.addComponent(label_1);
		
		// errorMessageLabel
		errorMessageLabel = new Label();
		errorMessageLabel.setStyleName("errormessage");
		errorMessageLabel.setImmediate(false);
		errorMessageLabel.setWidth("-1px");
		errorMessageLabel.setHeight("-1px");
		errorMessageLabel.setValue("Label");
		scrollContent.addComponent(errorMessageLabel);
		
		// buttonLayout
		buttonLayout = buildButtonLayout();
		scrollContent.addComponent(buttonLayout);
		
		return scrollContent;
	}

	@AutoGenerated
	private VerticalLayout buildFieldLayout() {
		// common part: create layout
		fieldLayout = new VerticalLayout();
		fieldLayout.setImmediate(false);
		fieldLayout.setWidth("100.0%");
		fieldLayout.setHeight("-1px");
		fieldLayout.setMargin(false);
		fieldLayout.setSpacing(true);
		
		// nameField
		nameField = new TextField();
		nameField.setCaption("Name");
		nameField.setImmediate(true);
		nameField.setWidth("-1px");
		nameField.setHeight("-1px");
		nameField.setSecret(false);
		fieldLayout.addComponent(nameField);
		
		// ingredientQuantityForm_1
		ingredientQuantityForm_1 = new IngredientQuantityForm();
		ingredientQuantityForm_1.setImmediate(false);
		ingredientQuantityForm_1.setWidth("100.0%");
		ingredientQuantityForm_1.setHeight("500px");
		fieldLayout.addComponent(ingredientQuantityForm_1);
		
		// ingredientsField
		ingredientsField = new TwinColSelect();
		ingredientsField.setCaption("Ingredients");
		ingredientsField.setImmediate(true);
		ingredientsField.setWidth("-1px");
		ingredientsField.setHeight("-1px");
		fieldLayout.addComponent(ingredientsField);
		
		return fieldLayout;
	}

	@AutoGenerated
	private HorizontalLayout buildButtonLayout() {
		// common part: create layout
		buttonLayout = new HorizontalLayout();
		buttonLayout.setImmediate(false);
		buttonLayout.setWidth("-1px");
		buttonLayout.setHeight("-1px");
		buttonLayout.setMargin(false);
		buttonLayout.setSpacing(true);
		
		// saveButton
		saveButton = new Button();
		saveButton.setStyleName("primary");
		saveButton.setCaption("Save");
		saveButton.setImmediate(true);
		saveButton.setWidth("-1px");
		saveButton.setHeight("-1px");
		buttonLayout.addComponent(saveButton);
		
		// cancelButton
		cancelButton = new Button();
		cancelButton.setCaption("Cancel");
		cancelButton.setImmediate(true);
		cancelButton.setWidth("-1px");
		cancelButton.setHeight("-1px");
		buttonLayout.addComponent(cancelButton);
		
		// deleteButton
		deleteButton = new Button();
		deleteButton.setStyleName("link");
		deleteButton.setCaption("Delete");
		deleteButton.setImmediate(true);
		deleteButton.setWidth("-1px");
		deleteButton.setHeight("-1px");
		buttonLayout.addComponent(deleteButton);
		buttonLayout.setComponentAlignment(deleteButton, new Alignment(48));
		
		return buttonLayout;
	}

}
