// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package br.com.walfarma.dominio;

import br.com.walfarma.dominio.CurvaABC;
import br.com.walfarma.dominio.ProdutoDataOnDemand;
import java.util.List;
import java.util.Random;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

privileged aspect CurvaABCDataOnDemand_Roo_DataOnDemand {
    
    declare @type: CurvaABCDataOnDemand: @Component;
    
    private Random CurvaABCDataOnDemand.rnd = new java.security.SecureRandom();
    
    private List<CurvaABC> CurvaABCDataOnDemand.data;
    
    @Autowired
    private ProdutoDataOnDemand CurvaABCDataOnDemand.produtoDataOnDemand;
    
    public CurvaABC CurvaABCDataOnDemand.getNewTransientCurvaABC(int index) {
        br.com.walfarma.dominio.CurvaABC obj = new br.com.walfarma.dominio.CurvaABC();
        obj.setId(new Integer(index).longValue());
        obj.setProduto(produtoDataOnDemand.getRandomProduto());
        obj.setQuantidadeVendida(java.math.BigDecimal.valueOf(index));
        obj.setTotalVenda(java.math.BigDecimal.valueOf(index));
        obj.setClassificacao(new Integer(index));
        obj.setClasse(new Integer(index).shortValue());
        return obj;
    }
    
    public CurvaABC CurvaABCDataOnDemand.getSpecificCurvaABC(int index) {
        init();
        if (index < 0) index = 0;
        if (index > (data.size() - 1)) index = data.size() - 1;
        CurvaABC obj = data.get(index);
        return CurvaABC.findCurvaABC(obj.get_id());
    }
    
    public CurvaABC CurvaABCDataOnDemand.getRandomCurvaABC() {
        init();
        CurvaABC obj = data.get(rnd.nextInt(data.size()));
        return CurvaABC.findCurvaABC(obj.get_id());
    }
    
    public boolean CurvaABCDataOnDemand.modifyCurvaABC(CurvaABC obj) {
        return false;
    }
    
    public void CurvaABCDataOnDemand.init() {
        data = br.com.walfarma.dominio.CurvaABC.findCurvaABCEntries(0, 10);
        if (data == null) throw new IllegalStateException("Find entries implementation for 'CurvaABC' illegally returned null");
        if (!data.isEmpty()) {
            return;
        }
        
        data = new java.util.ArrayList<br.com.walfarma.dominio.CurvaABC>();
        for (int i = 0; i < 10; i++) {
            br.com.walfarma.dominio.CurvaABC obj = getNewTransientCurvaABC(i);
            obj.persist();
            obj.flush();
            data.add(obj);
        }
    }
    
}