// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package br.com.walfarma.dominio;

import br.com.walfarma.dominio.VendedorDataOnDemand;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.transaction.annotation.Transactional;

privileged aspect VendedorIntegrationTest_Roo_IntegrationTest {
    
    declare @type: VendedorIntegrationTest: @RunWith(SpringJUnit4ClassRunner.class);
    
    declare @type: VendedorIntegrationTest: @ContextConfiguration(locations = "classpath:/META-INF/spring/applicationContext.xml");
    
    declare @type: VendedorIntegrationTest: @Transactional;
    
    @Autowired
    private VendedorDataOnDemand VendedorIntegrationTest.dod;
    
    @Test
    public void VendedorIntegrationTest.testCountVendedors() {
        org.junit.Assert.assertNotNull("Data on demand for 'Vendedor' failed to initialize correctly", dod.getRandomVendedor());
        long count = br.com.walfarma.dominio.Vendedor.countVendedors();
        org.junit.Assert.assertTrue("Counter for 'Vendedor' incorrectly reported there were no entries", count > 0);
    }
    
    @Test
    public void VendedorIntegrationTest.testFindVendedor() {
        br.com.walfarma.dominio.Vendedor obj = dod.getRandomVendedor();
        org.junit.Assert.assertNotNull("Data on demand for 'Vendedor' failed to initialize correctly", obj);
        java.lang.Long id = obj.get_id();
        org.junit.Assert.assertNotNull("Data on demand for 'Vendedor' failed to provide an identifier", id);
        obj = br.com.walfarma.dominio.Vendedor.findVendedor(id);
        org.junit.Assert.assertNotNull("Find method for 'Vendedor' illegally returned null for id '" + id + "'", obj);
        org.junit.Assert.assertEquals("Find method for 'Vendedor' returned the incorrect identifier", id, obj.get_id());
    }
    
    @Test
    public void VendedorIntegrationTest.testFindAllVendedors() {
        org.junit.Assert.assertNotNull("Data on demand for 'Vendedor' failed to initialize correctly", dod.getRandomVendedor());
        long count = br.com.walfarma.dominio.Vendedor.countVendedors();
        org.junit.Assert.assertTrue("Too expensive to perform a find all test for 'Vendedor', as there are " + count + " entries; set the findAllMaximum to exceed this value or set findAll=false on the integration test annotation to disable the test", count < 250);
        java.util.List<br.com.walfarma.dominio.Vendedor> result = br.com.walfarma.dominio.Vendedor.findAllVendedors();
        org.junit.Assert.assertNotNull("Find all method for 'Vendedor' illegally returned null", result);
        org.junit.Assert.assertTrue("Find all method for 'Vendedor' failed to return any data", result.size() > 0);
    }
    
    @Test
    public void VendedorIntegrationTest.testFindVendedorEntries() {
        org.junit.Assert.assertNotNull("Data on demand for 'Vendedor' failed to initialize correctly", dod.getRandomVendedor());
        long count = br.com.walfarma.dominio.Vendedor.countVendedors();
        if (count > 20) count = 20;
        java.util.List<br.com.walfarma.dominio.Vendedor> result = br.com.walfarma.dominio.Vendedor.findVendedorEntries(0, (int) count);
        org.junit.Assert.assertNotNull("Find entries method for 'Vendedor' illegally returned null", result);
        org.junit.Assert.assertEquals("Find entries method for 'Vendedor' returned an incorrect number of entries", count, result.size());
    }
    
    @Test
    public void VendedorIntegrationTest.testFlush() {
        br.com.walfarma.dominio.Vendedor obj = dod.getRandomVendedor();
        org.junit.Assert.assertNotNull("Data on demand for 'Vendedor' failed to initialize correctly", obj);
        java.lang.Long id = obj.get_id();
        org.junit.Assert.assertNotNull("Data on demand for 'Vendedor' failed to provide an identifier", id);
        obj = br.com.walfarma.dominio.Vendedor.findVendedor(id);
        org.junit.Assert.assertNotNull("Find method for 'Vendedor' illegally returned null for id '" + id + "'", obj);
        boolean modified =  dod.modifyVendedor(obj);
        java.lang.Integer currentVersion = obj.getVersion();
        obj.flush();
        org.junit.Assert.assertTrue("Version for 'Vendedor' failed to increment on flush directive", (currentVersion != null && obj.getVersion() > currentVersion) || !modified);
    }
    
    @Test
    public void VendedorIntegrationTest.testMerge() {
        br.com.walfarma.dominio.Vendedor obj = dod.getRandomVendedor();
        org.junit.Assert.assertNotNull("Data on demand for 'Vendedor' failed to initialize correctly", obj);
        java.lang.Long id = obj.get_id();
        org.junit.Assert.assertNotNull("Data on demand for 'Vendedor' failed to provide an identifier", id);
        obj = br.com.walfarma.dominio.Vendedor.findVendedor(id);
        boolean modified =  dod.modifyVendedor(obj);
        java.lang.Integer currentVersion = obj.getVersion();
        br.com.walfarma.dominio.Vendedor merged = (br.com.walfarma.dominio.Vendedor) obj.merge();
        obj.flush();
        org.junit.Assert.assertEquals("Identifier of merged object not the same as identifier of original object", merged.get_id(), id);
        org.junit.Assert.assertTrue("Version for 'Vendedor' failed to increment on merge and flush directive", (currentVersion != null && obj.getVersion() > currentVersion) || !modified);
    }
    
    @Test
    public void VendedorIntegrationTest.testPersist() {
        org.junit.Assert.assertNotNull("Data on demand for 'Vendedor' failed to initialize correctly", dod.getRandomVendedor());
        br.com.walfarma.dominio.Vendedor obj = dod.getNewTransientVendedor(Integer.MAX_VALUE);
        org.junit.Assert.assertNotNull("Data on demand for 'Vendedor' failed to provide a new transient entity", obj);
        org.junit.Assert.assertNull("Expected 'Vendedor' identifier to be null", obj.get_id());
        obj.persist();
        obj.flush();
        org.junit.Assert.assertNotNull("Expected 'Vendedor' identifier to no longer be null", obj.get_id());
    }
    
    @Test
    public void VendedorIntegrationTest.testRemove() {
        br.com.walfarma.dominio.Vendedor obj = dod.getRandomVendedor();
        org.junit.Assert.assertNotNull("Data on demand for 'Vendedor' failed to initialize correctly", obj);
        java.lang.Long id = obj.get_id();
        org.junit.Assert.assertNotNull("Data on demand for 'Vendedor' failed to provide an identifier", id);
        obj = br.com.walfarma.dominio.Vendedor.findVendedor(id);
        obj.remove();
        obj.flush();
        org.junit.Assert.assertNull("Failed to remove 'Vendedor' with identifier '" + id + "'", br.com.walfarma.dominio.Vendedor.findVendedor(id));
    }
    
}
