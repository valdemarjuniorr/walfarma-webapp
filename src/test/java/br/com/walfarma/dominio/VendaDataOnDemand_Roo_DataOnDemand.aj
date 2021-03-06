// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package br.com.walfarma.dominio;

import br.com.walfarma.dominio.Venda;
import java.util.List;
import java.util.Random;
import org.springframework.stereotype.Component;

privileged aspect VendaDataOnDemand_Roo_DataOnDemand {
    
    declare @type: VendaDataOnDemand: @Component;
    
    private Random VendaDataOnDemand.rnd = new java.security.SecureRandom();
    
    private List<Venda> VendaDataOnDemand.data;
    
    public Venda VendaDataOnDemand.getNewTransientVenda(int index) {
        br.com.walfarma.dominio.Venda obj = new br.com.walfarma.dominio.Venda();
        return obj;
    }
    
    public Venda VendaDataOnDemand.getSpecificVenda(int index) {
        init();
        if (index < 0) index = 0;
        if (index > (data.size() - 1)) index = data.size() - 1;
        Venda obj = data.get(index);
        return Venda.findVenda(obj.getId());
    }
    
    public Venda VendaDataOnDemand.getRandomVenda() {
        init();
        Venda obj = data.get(rnd.nextInt(data.size()));
        return Venda.findVenda(obj.getId());
    }
    
    public boolean VendaDataOnDemand.modifyVenda(Venda obj) {
        return false;
    }
    
    public void VendaDataOnDemand.init() {
        data = br.com.walfarma.dominio.Venda.findVendaEntries(0, 10);
        if (data == null) throw new IllegalStateException("Find entries implementation for 'Venda' illegally returned null");
        if (!data.isEmpty()) {
            return;
        }
        
        data = new java.util.ArrayList<br.com.walfarma.dominio.Venda>();
        for (int i = 0; i < 10; i++) {
            br.com.walfarma.dominio.Venda obj = getNewTransientVenda(i);
            obj.persist();
            obj.flush();
            data.add(obj);
        }
    }
    
}
