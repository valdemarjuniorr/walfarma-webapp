// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package br.com.walfarma.dominio;

import br.com.walfarma.dominio.MovimentacaoCaixaDataOnDemand;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.transaction.annotation.Transactional;

privileged aspect MovimentacaoCaixaIntegrationTest_Roo_IntegrationTest {
    
    declare @type: MovimentacaoCaixaIntegrationTest: @RunWith(SpringJUnit4ClassRunner.class);
    
    declare @type: MovimentacaoCaixaIntegrationTest: @ContextConfiguration(locations = "classpath:/META-INF/spring/applicationContext.xml");
    
    declare @type: MovimentacaoCaixaIntegrationTest: @Transactional;
    
    @Autowired
    private MovimentacaoCaixaDataOnDemand MovimentacaoCaixaIntegrationTest.dod;
    
    @Test
    public void MovimentacaoCaixaIntegrationTest.testCountMovimentacaoCaixas() {
        org.junit.Assert.assertNotNull("Data on demand for 'MovimentacaoCaixa' failed to initialize correctly", dod.getRandomMovimentacaoCaixa());
        long count = br.com.walfarma.dominio.MovimentacaoCaixa.countMovimentacaoCaixas();
        org.junit.Assert.assertTrue("Counter for 'MovimentacaoCaixa' incorrectly reported there were no entries", count > 0);
    }
    
    @Test
    public void MovimentacaoCaixaIntegrationTest.testFindMovimentacaoCaixa() {
        br.com.walfarma.dominio.MovimentacaoCaixa obj = dod.getRandomMovimentacaoCaixa();
        org.junit.Assert.assertNotNull("Data on demand for 'MovimentacaoCaixa' failed to initialize correctly", obj);
        java.lang.Long id = obj.getId();
        org.junit.Assert.assertNotNull("Data on demand for 'MovimentacaoCaixa' failed to provide an identifier", id);
        obj = br.com.walfarma.dominio.MovimentacaoCaixa.findMovimentacaoCaixa(id);
        org.junit.Assert.assertNotNull("Find method for 'MovimentacaoCaixa' illegally returned null for id '" + id + "'", obj);
        org.junit.Assert.assertEquals("Find method for 'MovimentacaoCaixa' returned the incorrect identifier", id, obj.getId());
    }
    
    @Test
    public void MovimentacaoCaixaIntegrationTest.testFindAllMovimentacaoCaixas() {
        org.junit.Assert.assertNotNull("Data on demand for 'MovimentacaoCaixa' failed to initialize correctly", dod.getRandomMovimentacaoCaixa());
        long count = br.com.walfarma.dominio.MovimentacaoCaixa.countMovimentacaoCaixas();
        org.junit.Assert.assertTrue("Too expensive to perform a find all test for 'MovimentacaoCaixa', as there are " + count + " entries; set the findAllMaximum to exceed this value or set findAll=false on the integration test annotation to disable the test", count < 250);
        java.util.List<br.com.walfarma.dominio.MovimentacaoCaixa> result = br.com.walfarma.dominio.MovimentacaoCaixa.findAllMovimentacaoCaixas();
        org.junit.Assert.assertNotNull("Find all method for 'MovimentacaoCaixa' illegally returned null", result);
        org.junit.Assert.assertTrue("Find all method for 'MovimentacaoCaixa' failed to return any data", result.size() > 0);
    }
    
    @Test
    public void MovimentacaoCaixaIntegrationTest.testFindMovimentacaoCaixaEntries() {
        org.junit.Assert.assertNotNull("Data on demand for 'MovimentacaoCaixa' failed to initialize correctly", dod.getRandomMovimentacaoCaixa());
        long count = br.com.walfarma.dominio.MovimentacaoCaixa.countMovimentacaoCaixas();
        if (count > 20) count = 20;
        java.util.List<br.com.walfarma.dominio.MovimentacaoCaixa> result = br.com.walfarma.dominio.MovimentacaoCaixa.findMovimentacaoCaixaEntries(0, (int) count);
        org.junit.Assert.assertNotNull("Find entries method for 'MovimentacaoCaixa' illegally returned null", result);
        org.junit.Assert.assertEquals("Find entries method for 'MovimentacaoCaixa' returned an incorrect number of entries", count, result.size());
    }
    
    @Test
    public void MovimentacaoCaixaIntegrationTest.testFlush() {
        br.com.walfarma.dominio.MovimentacaoCaixa obj = dod.getRandomMovimentacaoCaixa();
        org.junit.Assert.assertNotNull("Data on demand for 'MovimentacaoCaixa' failed to initialize correctly", obj);
        java.lang.Long id = obj.getId();
        org.junit.Assert.assertNotNull("Data on demand for 'MovimentacaoCaixa' failed to provide an identifier", id);
        obj = br.com.walfarma.dominio.MovimentacaoCaixa.findMovimentacaoCaixa(id);
        org.junit.Assert.assertNotNull("Find method for 'MovimentacaoCaixa' illegally returned null for id '" + id + "'", obj);
        boolean modified =  dod.modifyMovimentacaoCaixa(obj);
        java.lang.Integer currentVersion = obj.getVersion();
        obj.flush();
        org.junit.Assert.assertTrue("Version for 'MovimentacaoCaixa' failed to increment on flush directive", (currentVersion != null && obj.getVersion() > currentVersion) || !modified);
    }
    
    @Test
    public void MovimentacaoCaixaIntegrationTest.testMerge() {
        br.com.walfarma.dominio.MovimentacaoCaixa obj = dod.getRandomMovimentacaoCaixa();
        org.junit.Assert.assertNotNull("Data on demand for 'MovimentacaoCaixa' failed to initialize correctly", obj);
        java.lang.Long id = obj.getId();
        org.junit.Assert.assertNotNull("Data on demand for 'MovimentacaoCaixa' failed to provide an identifier", id);
        obj = br.com.walfarma.dominio.MovimentacaoCaixa.findMovimentacaoCaixa(id);
        boolean modified =  dod.modifyMovimentacaoCaixa(obj);
        java.lang.Integer currentVersion = obj.getVersion();
        br.com.walfarma.dominio.MovimentacaoCaixa merged = (br.com.walfarma.dominio.MovimentacaoCaixa) obj.merge();
        obj.flush();
        org.junit.Assert.assertEquals("Identifier of merged object not the same as identifier of original object", merged.getId(), id);
        org.junit.Assert.assertTrue("Version for 'MovimentacaoCaixa' failed to increment on merge and flush directive", (currentVersion != null && obj.getVersion() > currentVersion) || !modified);
    }
    
    @Test
    public void MovimentacaoCaixaIntegrationTest.testPersist() {
        org.junit.Assert.assertNotNull("Data on demand for 'MovimentacaoCaixa' failed to initialize correctly", dod.getRandomMovimentacaoCaixa());
        br.com.walfarma.dominio.MovimentacaoCaixa obj = dod.getNewTransientMovimentacaoCaixa(Integer.MAX_VALUE);
        org.junit.Assert.assertNotNull("Data on demand for 'MovimentacaoCaixa' failed to provide a new transient entity", obj);
        org.junit.Assert.assertNull("Expected 'MovimentacaoCaixa' identifier to be null", obj.getId());
        obj.persist();
        obj.flush();
        org.junit.Assert.assertNotNull("Expected 'MovimentacaoCaixa' identifier to no longer be null", obj.getId());
    }
    
    @Test
    public void MovimentacaoCaixaIntegrationTest.testRemove() {
        br.com.walfarma.dominio.MovimentacaoCaixa obj = dod.getRandomMovimentacaoCaixa();
        org.junit.Assert.assertNotNull("Data on demand for 'MovimentacaoCaixa' failed to initialize correctly", obj);
        java.lang.Long id = obj.getId();
        org.junit.Assert.assertNotNull("Data on demand for 'MovimentacaoCaixa' failed to provide an identifier", id);
        obj = br.com.walfarma.dominio.MovimentacaoCaixa.findMovimentacaoCaixa(id);
        obj.remove();
        obj.flush();
        org.junit.Assert.assertNull("Failed to remove 'MovimentacaoCaixa' with identifier '" + id + "'", br.com.walfarma.dominio.MovimentacaoCaixa.findMovimentacaoCaixa(id));
    }
    
}
