// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.bulbview.recipeplanner.domain;

import com.bulbview.recipeplanner.domain.IngredientDataOnDemand;
import com.google.appengine.tools.development.testing.LocalServiceTestHelper;
import org.junit.AfterClass;
import org.junit.BeforeClass;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

privileged aspect IngredientIntegrationTest_Roo_IntegrationTest {
    
    declare @type: IngredientIntegrationTest: @RunWith(SpringJUnit4ClassRunner.class);
    
    declare @type: IngredientIntegrationTest: @ContextConfiguration(locations = "classpath:/META-INF/spring/applicationContext.xml");
    
    declare @type: IngredientIntegrationTest: @Transactional;
    
    @Autowired
    private IngredientDataOnDemand IngredientIntegrationTest.dod;
    
    private static final LocalServiceTestHelper IngredientIntegrationTest.helper = new LocalServiceTestHelper(new com.google.appengine.tools.development.testing.LocalDatastoreServiceTestConfig());
    
    @BeforeClass
    public static void IngredientIntegrationTest.setUp() {
        helper.setUp();
    }
    
    @AfterClass
    public static void IngredientIntegrationTest.tearDown() {
        helper.tearDown();
    }
    
    @Test
    public void IngredientIntegrationTest.testCountIngredients() {
        org.junit.Assert.assertNotNull("Data on demand for 'Ingredient' failed to initialize correctly", dod.getRandomIngredient());
        long count = com.bulbview.recipeplanner.domain.Ingredient.countIngredients();
        org.junit.Assert.assertTrue("Counter for 'Ingredient' incorrectly reported there were no entries", count > 0);
    }
    
    @Test
    public void IngredientIntegrationTest.testFindIngredient() {
        com.bulbview.recipeplanner.domain.Ingredient obj = dod.getRandomIngredient();
        org.junit.Assert.assertNotNull("Data on demand for 'Ingredient' failed to initialize correctly", obj);
        java.lang.Long id = obj.getId();
        org.junit.Assert.assertNotNull("Data on demand for 'Ingredient' failed to provide an identifier", id);
        obj = com.bulbview.recipeplanner.domain.Ingredient.findIngredient(id);
        org.junit.Assert.assertNotNull("Find method for 'Ingredient' illegally returned null for id '" + id + "'", obj);
        org.junit.Assert.assertEquals("Find method for 'Ingredient' returned the incorrect identifier", id, obj.getId());
    }
    
    @Test
    public void IngredientIntegrationTest.testFindAllIngredients() {
        org.junit.Assert.assertNotNull("Data on demand for 'Ingredient' failed to initialize correctly", dod.getRandomIngredient());
        long count = com.bulbview.recipeplanner.domain.Ingredient.countIngredients();
        org.junit.Assert.assertTrue("Too expensive to perform a find all test for 'Ingredient', as there are " + count + " entries; set the findAllMaximum to exceed this value or set findAll=false on the integration test annotation to disable the test", count < 250);
        java.util.List<com.bulbview.recipeplanner.domain.Ingredient> result = com.bulbview.recipeplanner.domain.Ingredient.findAllIngredients();
        org.junit.Assert.assertNotNull("Find all method for 'Ingredient' illegally returned null", result);
        org.junit.Assert.assertTrue("Find all method for 'Ingredient' failed to return any data", result.size() > 0);
    }
    
    @Test
    public void IngredientIntegrationTest.testFindIngredientEntries() {
        org.junit.Assert.assertNotNull("Data on demand for 'Ingredient' failed to initialize correctly", dod.getRandomIngredient());
        long count = com.bulbview.recipeplanner.domain.Ingredient.countIngredients();
        if (count > 20) count = 20;
        java.util.List<com.bulbview.recipeplanner.domain.Ingredient> result = com.bulbview.recipeplanner.domain.Ingredient.findIngredientEntries(0, (int) count);
        org.junit.Assert.assertNotNull("Find entries method for 'Ingredient' illegally returned null", result);
        org.junit.Assert.assertEquals("Find entries method for 'Ingredient' returned an incorrect number of entries", count, result.size());
    }
    
    @Test
    public void IngredientIntegrationTest.testFlush() {
        com.bulbview.recipeplanner.domain.Ingredient obj = dod.getRandomIngredient();
        org.junit.Assert.assertNotNull("Data on demand for 'Ingredient' failed to initialize correctly", obj);
        java.lang.Long id = obj.getId();
        org.junit.Assert.assertNotNull("Data on demand for 'Ingredient' failed to provide an identifier", id);
        obj = com.bulbview.recipeplanner.domain.Ingredient.findIngredient(id);
        org.junit.Assert.assertNotNull("Find method for 'Ingredient' illegally returned null for id '" + id + "'", obj);
        boolean modified =  dod.modifyIngredient(obj);
        java.lang.Integer currentVersion = obj.getVersion();
        obj.flush();
        org.junit.Assert.assertTrue("Version for 'Ingredient' failed to increment on flush directive", (currentVersion != null && obj.getVersion() > currentVersion) || !modified);
    }
    
    @Test
    public void IngredientIntegrationTest.testMerge() {
        com.bulbview.recipeplanner.domain.Ingredient obj = dod.getRandomIngredient();
        org.junit.Assert.assertNotNull("Data on demand for 'Ingredient' failed to initialize correctly", obj);
        java.lang.Long id = obj.getId();
        org.junit.Assert.assertNotNull("Data on demand for 'Ingredient' failed to provide an identifier", id);
        obj = com.bulbview.recipeplanner.domain.Ingredient.findIngredient(id);
        boolean modified =  dod.modifyIngredient(obj);
        java.lang.Integer currentVersion = obj.getVersion();
        com.bulbview.recipeplanner.domain.Ingredient merged =  obj.merge();
        obj.flush();
        org.junit.Assert.assertEquals("Identifier of merged object not the same as identifier of original object", merged.getId(), id);
        org.junit.Assert.assertTrue("Version for 'Ingredient' failed to increment on merge and flush directive", (currentVersion != null && obj.getVersion() > currentVersion) || !modified);
    }
    
    @Test
    public void IngredientIntegrationTest.testPersist() {
        org.junit.Assert.assertNotNull("Data on demand for 'Ingredient' failed to initialize correctly", dod.getRandomIngredient());
        com.bulbview.recipeplanner.domain.Ingredient obj = dod.getNewTransientIngredient(Integer.MAX_VALUE);
        org.junit.Assert.assertNotNull("Data on demand for 'Ingredient' failed to provide a new transient entity", obj);
        org.junit.Assert.assertNull("Expected 'Ingredient' identifier to be null", obj.getId());
        obj.persist();
        obj.flush();
        org.junit.Assert.assertNotNull("Expected 'Ingredient' identifier to no longer be null", obj.getId());
    }
    
    @Test
    @Transactional(propagation = Propagation.SUPPORTS)
    public void IngredientIntegrationTest.testRemove() {
        com.bulbview.recipeplanner.domain.Ingredient obj = dod.getRandomIngredient();
        org.junit.Assert.assertNotNull("Data on demand for 'Ingredient' failed to initialize correctly", obj);
        java.lang.Long id = obj.getId();
        org.junit.Assert.assertNotNull("Data on demand for 'Ingredient' failed to provide an identifier", id);
        obj = com.bulbview.recipeplanner.domain.Ingredient.findIngredient(id);
        obj.remove();
        obj.flush();
        org.junit.Assert.assertNull("Failed to remove 'Ingredient' with identifier '" + id + "'", com.bulbview.recipeplanner.domain.Ingredient.findIngredient(id));
    }
    
}
