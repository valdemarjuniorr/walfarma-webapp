// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package br.com.walfarma.dominio;

import br.com.walfarma.dominio.EnderecoDataOnDemand;
import br.com.walfarma.dominio.Fornecedor;
import java.util.List;
import java.util.Random;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

privileged aspect FornecedorDataOnDemand_Roo_DataOnDemand {
    
    declare @type: FornecedorDataOnDemand: @Component;
    
    private Random FornecedorDataOnDemand.rnd = new java.security.SecureRandom();
    
    private List<Fornecedor> FornecedorDataOnDemand.data;
    
    @Autowired
    private EnderecoDataOnDemand FornecedorDataOnDemand.enderecoDataOnDemand;
    
    public Fornecedor FornecedorDataOnDemand.getNewTransientFornecedor(int index) {
        br.com.walfarma.dominio.Fornecedor obj = new br.com.walfarma.dominio.Fornecedor();
        obj.setId(new Integer(index).longValue());
        java.lang.String cnpj = "cnpjxxxx_" + index;
        if (cnpj.length() > 50) {
            cnpj  = cnpj.substring(0, 50);
        }
        obj.setCnpj(cnpj);
        obj.setLast_update(new java.util.GregorianCalendar(java.util.Calendar.getInstance().get(java.util.Calendar.YEAR), java.util.Calendar.getInstance().get(java.util.Calendar.MONTH), java.util.Calendar.getInstance().get(java.util.Calendar.DAY_OF_MONTH), java.util.Calendar.getInstance().get(java.util.Calendar.HOUR_OF_DAY), java.util.Calendar.getInstance().get(java.util.Calendar.MINUTE), java.util.Calendar.getInstance().get(java.util.Calendar.SECOND) + new Double(Math.random() * 1000).intValue()).getTime());
        obj.setDesconto_maximo(new Integer(index));
        java.lang.String fornecedor = "fornecedor_" + index;
        if (fornecedor.length() > 256) {
            fornecedor  = fornecedor.substring(0, 256);
        }
        obj.setFornecedor(fornecedor);
        obj.setEndereco(enderecoDataOnDemand.getSpecificEndereco(index));
        return obj;
    }
    
    public Fornecedor FornecedorDataOnDemand.getSpecificFornecedor(int index) {
        init();
        if (index < 0) index = 0;
        if (index > (data.size() - 1)) index = data.size() - 1;
        Fornecedor obj = data.get(index);
        return Fornecedor.findFornecedor(obj.get_id());
    }
    
    public Fornecedor FornecedorDataOnDemand.getRandomFornecedor() {
        init();
        Fornecedor obj = data.get(rnd.nextInt(data.size()));
        return Fornecedor.findFornecedor(obj.get_id());
    }
    
    public boolean FornecedorDataOnDemand.modifyFornecedor(Fornecedor obj) {
        return false;
    }
    
    public void FornecedorDataOnDemand.init() {
        data = br.com.walfarma.dominio.Fornecedor.findFornecedorEntries(0, 10);
        if (data == null) throw new IllegalStateException("Find entries implementation for 'Fornecedor' illegally returned null");
        if (!data.isEmpty()) {
            return;
        }
        
        data = new java.util.ArrayList<br.com.walfarma.dominio.Fornecedor>();
        for (int i = 0; i < 10; i++) {
            br.com.walfarma.dominio.Fornecedor obj = getNewTransientFornecedor(i);
            obj.persist();
            obj.flush();
            data.add(obj);
        }
    }
    
}
