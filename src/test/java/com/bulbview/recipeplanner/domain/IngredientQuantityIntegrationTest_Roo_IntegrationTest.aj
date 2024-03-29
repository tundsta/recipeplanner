// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.bulbview.recipeplanner.domain;

import com.bulbview.recipeplanner.domain.IngredientQuantityDataOnDemand;
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

privileged aspect IngredientQuantityIntegrationTest_Roo_IntegrationTest {
    
    declare @type: IngredientQuantityIntegrationTest: @RunWith(SpringJUnit4ClassRunner.class);
    
    declare @type: IngredientQuantityIntegrationTest: @ContextConfiguration(locations = "classpath:/META-INF/spring/applicationContext.xml");
    
    declare @type: IngredientQuantityIntegrationTest: @Transactional;
    
    @Autowired
    private IngredientQuantityDataOnDemand IngredientQuantityIntegrationTest.dod;
    
    private static final LocalServiceTestHelper IngredientQuantityIntegrationTest.helper = new LocalServiceTestHelper(new com.google.appengine.tools.development.testing.LocalDatastoreServiceTestConfig());
    
    @BeforeClass
    public static void IngredientQuantityIntegrationTest.setUp() {
        helper.setUp();
    }
    
    @AfterClass
    public static void IngredientQuantityIntegrationTest.tearDown() {
        helper.tearDown();
    }
    
    @Test
    public void IngredientQuantityIntegrationTest.testCountIngredientQuantitys() {
        org.junit.Assert.assertNotNull("Data on demand for 'IngredientQuantity' failed to initialize correctly", dod.getRandomIngredientQuantity());
        long count = com.bulbview.recipeplanner.domain.IngredientQuantity.countIngredientQuantitys();
        org.junit.Assert.assertTrue("Counter for 'IngredientQuantity' incorrectly reported there were no entries", count > 0);
    }
    
    @Test
    public void IngredientQuantityIntegrationTest.testFindIngredientQuantity() {
        com.bulbview.recipeplanner.domain.IngredientQuantity obj = dod.getRandomIngredientQuantity();
        org.junit.Assert.assertNotNull("Data on demand for 'IngredientQuantity' failed to initialize correctly", obj);
        java.lang.Long id = obj.getId();
        org.junit.Assert.assertNotNull("Data on demand for 'IngredientQuantity' failed to provide an identifier", id);
        obj = com.bulbview.recipeplanner.domain.IngredientQuantity.findIngredientQuantity(id);
        org.junit.Assert.assertNotNull("Find method for 'IngredientQuantity' illegally returned null for id '" + id + "'", obj);
        org.junit.Assert.assertEquals("Find method for 'IngredientQuantity' returned the incorrect identifier", id, obj.getId());
    }
    
    @Test
    public void IngredientQuantityIntegrationTest.testFindAllIngredientQuantitys() {
        org.junit.Assert.assertNotNull("Data on demand for 'IngredientQuantity' failed to initialize correctly", dod.getRandomIngredientQuantity());
        long count = com.bulbview.recipeplanner.domain.IngredientQuantity.countIngredientQuantitys();
        org.junit.Assert.assertTrue("Too expensive to perform a find all test for 'IngredientQuantity', as there are " + count + " entries; set the findAllMaximum to exceed this value or set findAll=false on the integration test annotation to disable the test", count < 250);
        java.util.List<com.bulbview.recipeplanner.domain.IngredientQuantity> result = com.bulbview.recipeplanner.domain.IngredientQuantity.findAllIngredientQuantitys();
        org.junit.Assert.assertNotNull("Find all method for 'IngredientQuantity' illegally returned null", result);
        org.junit.Assert.assertTrue("Find all method for 'IngredientQuantity' failed to return any data", result.size() > 0);
    }
    
    @Test
    public void IngredientQuantityIntegrationTest.testFindIngredientQuantityEntries() {
        org.junit.Assert.assertNotNull("Data on demand for 'IngredientQuantity' failed to initialize correctly", dod.getRandomIngredientQuantity());
        long count = com.bulbview.recipeplanner.domain.IngredientQuantity.countIngredientQuantitys();
        if (count > 20) count = 20;
        java.util.List<com.bulbview.recipeplanner.domain.IngredientQuantity> result = com.bulbview.recipeplanner.domain.IngredientQuantity.findIngredientQuantityEntries(0, (int) count);
        org.junit.Assert.assertNotNull("Find entries method for 'IngredientQuantity' illegally returned null", result);
        org.junit.Assert.assertEquals("Find entries method for 'IngredientQuantity' returned an incorrect number of entries", count, result.size());
    }
    
    @Test
    public void IngredientQuantityIntegrationTest.testFlush() {
        com.bulbview.recipeplanner.domain.IngredientQuantity obj = dod.getRandomIngredientQuantity();
        org.junit.Assert.assertNotNull("Data on demand for 'IngredientQuantity' failed to initialize correctly", obj);
        java.lang.Long id = obj.getId();
        org.junit.Assert.assertNotNull("Data on demand for 'IngredientQuantity' failed to provide an identifier", id);
        obj = com.bulbview.recipeplanner.domain.IngredientQuantity.findIngredientQuantity(id);
        org.junit.Assert.assertNotNull("Find method for 'IngredientQuantity' illegally returned null for id '" + id + "'", obj);
        boolean modified =  dod.modifyIngredientQuantity(obj);
        java.lang.Integer currentVersion = obj.getVersion();
        obj.flush();
        org.junit.Assert.assertTrue("Version for 'IngredientQuantity' failed to increment on flush directive", (currentVersion != null && obj.getVersion() > currentVersion) || !modified);
    }
    
    @Test
    public void IngredientQuantityIntegrationTest.testMerge() {
        com.bulbview.recipeplanner.domain.IngredientQuantity obj = dod.getRandomIngredientQuantity();
        org.junit.Assert.assertNotNull("Data on demand for 'IngredientQuantity' failed to initialize correctly", obj);
        java.lang.Long id = obj.getId();
        org.junit.Assert.assertNotNull("Data on demand for 'IngredientQuantity' failed to provide an identifier", id);
        obj = com.bulbview.recipeplanner.domain.IngredientQuantity.findIngredientQuantity(id);
        boolean modified =  dod.modifyIngredientQuantity(obj);
        java.lang.Integer currentVersion = obj.getVersion();
        com.bulbview.recipeplanner.domain.IngredientQuantity merged =  obj.merge();
        obj.flush();
        org.junit.Assert.assertEquals("Identifier of merged object not the same as identifier of original object", merged.getId(), id);
        org.junit.Assert.assertTrue("Version for 'IngredientQuantity' failed to increment on merge and flush directive", (currentVersion != null && obj.getVersion() > currentVersion) || !modified);
    }
    
    @Test
    public void IngredientQuantityIntegrationTest.testPersist() {
        org.junit.Assert.assertNotNull("Data on demand for 'IngredientQuantity' failed to initialize correctly", dod.getRandomIngredientQuantity());
        com.bulbview.recipeplanner.domain.IngredientQuantity obj = dod.getNewTransientIngredientQuantity(Integer.MAX_VALUE);
        org.junit.Assert.assertNotNull("Data on demand for 'IngredientQuantity' failed to provide a new transient entity", obj);
        org.junit.Assert.assertNull("Expected 'IngredientQuantity' identifier to be null", obj.getId());
        obj.persist();
        obj.flush();
        org.junit.Assert.assertNotNull("Expected 'IngredientQuantity' identifier to no longer be null", obj.getId());
    }
    
    @Test
    @Transactional(propagation = Propagation.SUPPORTS)
    public void IngredientQuantityIntegrationTest.testRemove() {
        com.bulbview.recipeplanner.domain.IngredientQuantity obj = dod.getRandomIngredientQuantity();
        org.junit.Assert.assertNotNull("Data on demand for 'IngredientQuantity' failed to initialize correctly", obj);
        java.lang.Long id = obj.getId();
        org.junit.Assert.assertNotNull("Data on demand for 'IngredientQuantity' failed to provide an identifier", id);
        obj = com.bulbview.recipeplanner.domain.IngredientQuantity.findIngredientQuantity(id);
        obj.remove();
        obj.flush();
        org.junit.Assert.assertNull("Failed to remove 'IngredientQuantity' with identifier '" + id + "'", com.bulbview.recipeplanner.domain.IngredientQuantity.findIngredientQuantity(id));
    }
    
}
