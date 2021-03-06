// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package br.com.walfarma.dominio;

import br.com.walfarma.dominio.SubstanciaDataOnDemand;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.transaction.annotation.Transactional;

privileged aspect SubstanciaIntegrationTest_Roo_IntegrationTest {
    
    declare @type: SubstanciaIntegrationTest: @RunWith(SpringJUnit4ClassRunner.class);
    
    declare @type: SubstanciaIntegrationTest: @ContextConfiguration(locations = "classpath:/META-INF/spring/applicationContext.xml");
    
    declare @type: SubstanciaIntegrationTest: @Transactional;
    
    @Autowired
    private SubstanciaDataOnDemand SubstanciaIntegrationTest.dod;
    
    @Test
    public void SubstanciaIntegrationTest.testCountSubstancias() {
        org.junit.Assert.assertNotNull("Data on demand for 'Substancia' failed to initialize correctly", dod.getRandomSubstancia());
        long count = br.com.walfarma.dominio.Substancia.countSubstancias();
        org.junit.Assert.assertTrue("Counter for 'Substancia' incorrectly reported there were no entries", count > 0);
    }
    
    @Test
    public void SubstanciaIntegrationTest.testFindSubstancia() {
        br.com.walfarma.dominio.Substancia obj = dod.getRandomSubstancia();
        org.junit.Assert.assertNotNull("Data on demand for 'Substancia' failed to initialize correctly", obj);
        java.lang.Long id = obj.get_id();
        org.junit.Assert.assertNotNull("Data on demand for 'Substancia' failed to provide an identifier", id);
        obj = br.com.walfarma.dominio.Substancia.findSubstancia(id);
        org.junit.Assert.assertNotNull("Find method for 'Substancia' illegally returned null for id '" + id + "'", obj);
        org.junit.Assert.assertEquals("Find method for 'Substancia' returned the incorrect identifier", id, obj.get_id());
    }
    
    @Test
    public void SubstanciaIntegrationTest.testFindAllSubstancias() {
        org.junit.Assert.assertNotNull("Data on demand for 'Substancia' failed to initialize correctly", dod.getRandomSubstancia());
        long count = br.com.walfarma.dominio.Substancia.countSubstancias();
        org.junit.Assert.assertTrue("Too expensive to perform a find all test for 'Substancia', as there are " + count + " entries; set the findAllMaximum to exceed this value or set findAll=false on the integration test annotation to disable the test", count < 250);
        java.util.List<br.com.walfarma.dominio.Substancia> result = br.com.walfarma.dominio.Substancia.findAllSubstancias();
        org.junit.Assert.assertNotNull("Find all method for 'Substancia' illegally returned null", result);
        org.junit.Assert.assertTrue("Find all method for 'Substancia' failed to return any data", result.size() > 0);
    }
    
    @Test
    public void SubstanciaIntegrationTest.testFindSubstanciaEntries() {
        org.junit.Assert.assertNotNull("Data on demand for 'Substancia' failed to initialize correctly", dod.getRandomSubstancia());
        long count = br.com.walfarma.dominio.Substancia.countSubstancias();
        if (count > 20) count = 20;
        java.util.List<br.com.walfarma.dominio.Substancia> result = br.com.walfarma.dominio.Substancia.findSubstanciaEntries(0, (int) count);
        org.junit.Assert.assertNotNull("Find entries method for 'Substancia' illegally returned null", result);
        org.junit.Assert.assertEquals("Find entries method for 'Substancia' returned an incorrect number of entries", count, result.size());
    }
    
    @Test
    public void SubstanciaIntegrationTest.testFlush() {
        br.com.walfarma.dominio.Substancia obj = dod.getRandomSubstancia();
        org.junit.Assert.assertNotNull("Data on demand for 'Substancia' failed to initialize correctly", obj);
        java.lang.Long id = obj.get_id();
        org.junit.Assert.assertNotNull("Data on demand for 'Substancia' failed to provide an identifier", id);
        obj = br.com.walfarma.dominio.Substancia.findSubstancia(id);
        org.junit.Assert.assertNotNull("Find method for 'Substancia' illegally returned null for id '" + id + "'", obj);
        boolean modified =  dod.modifySubstancia(obj);
        java.lang.Integer currentVersion = obj.getVersion();
        obj.flush();
        org.junit.Assert.assertTrue("Version for 'Substancia' failed to increment on flush directive", (currentVersion != null && obj.getVersion() > currentVersion) || !modified);
    }
    
    @Test
    public void SubstanciaIntegrationTest.testMerge() {
        br.com.walfarma.dominio.Substancia obj = dod.getRandomSubstancia();
        org.junit.Assert.assertNotNull("Data on demand for 'Substancia' failed to initialize correctly", obj);
        java.lang.Long id = obj.get_id();
        org.junit.Assert.assertNotNull("Data on demand for 'Substancia' failed to provide an identifier", id);
        obj = br.com.walfarma.dominio.Substancia.findSubstancia(id);
        boolean modified =  dod.modifySubstancia(obj);
        java.lang.Integer currentVersion = obj.getVersion();
        br.com.walfarma.dominio.Substancia merged = (br.com.walfarma.dominio.Substancia) obj.merge();
        obj.flush();
        org.junit.Assert.assertEquals("Identifier of merged object not the same as identifier of original object", merged.get_id(), id);
        org.junit.Assert.assertTrue("Version for 'Substancia' failed to increment on merge and flush directive", (currentVersion != null && obj.getVersion() > currentVersion) || !modified);
    }
    
    @Test
    public void SubstanciaIntegrationTest.testPersist() {
        org.junit.Assert.assertNotNull("Data on demand for 'Substancia' failed to initialize correctly", dod.getRandomSubstancia());
        br.com.walfarma.dominio.Substancia obj = dod.getNewTransientSubstancia(Integer.MAX_VALUE);
        org.junit.Assert.assertNotNull("Data on demand for 'Substancia' failed to provide a new transient entity", obj);
        org.junit.Assert.assertNull("Expected 'Substancia' identifier to be null", obj.get_id());
        obj.persist();
        obj.flush();
        org.junit.Assert.assertNotNull("Expected 'Substancia' identifier to no longer be null", obj.get_id());
    }
    
    @Test
    public void SubstanciaIntegrationTest.testRemove() {
        br.com.walfarma.dominio.Substancia obj = dod.getRandomSubstancia();
        org.junit.Assert.assertNotNull("Data on demand for 'Substancia' failed to initialize correctly", obj);
        java.lang.Long id = obj.get_id();
        org.junit.Assert.assertNotNull("Data on demand for 'Substancia' failed to provide an identifier", id);
        obj = br.com.walfarma.dominio.Substancia.findSubstancia(id);
        obj.remove();
        obj.flush();
        org.junit.Assert.assertNull("Failed to remove 'Substancia' with identifier '" + id + "'", br.com.walfarma.dominio.Substancia.findSubstancia(id));
    }
    
}
