// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package br.com.walfarma.dominio;

import br.com.walfarma.dominio.BancoDataOnDemand;
import br.com.walfarma.dominio.Cheque;
import br.com.walfarma.dominio.ClienteDataOnDemand;
import br.com.walfarma.dominio.ContasRecebidasDataOnDemand;
import java.util.List;
import java.util.Random;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

privileged aspect ChequeDataOnDemand_Roo_DataOnDemand {
    
    declare @type: ChequeDataOnDemand: @Component;
    
    private Random ChequeDataOnDemand.rnd = new java.security.SecureRandom();
    
    private List<Cheque> ChequeDataOnDemand.data;
    
    @Autowired
    private BancoDataOnDemand ChequeDataOnDemand.bancoDataOnDemand;
    
    @Autowired
    private ClienteDataOnDemand ChequeDataOnDemand.clienteDataOnDemand;
    
    @Autowired
    private ContasRecebidasDataOnDemand ChequeDataOnDemand.contasRecebidasDataOnDemand;
    
    public Cheque ChequeDataOnDemand.getNewTransientCheque(int index) {
        br.com.walfarma.dominio.Cheque obj = new br.com.walfarma.dominio.Cheque();
        obj.setId(new Integer(index).longValue());
        obj.setBanco(bancoDataOnDemand.getRandomBanco());
        obj.setCliente(clienteDataOnDemand.getRandomCliente());
        java.lang.String cpf = "cpf_" + index;
        if (cpf.length() > 11) {
            cpf  = cpf.substring(0, 11);
        }
        obj.setCpf(cpf);
        java.lang.String correntista = "correntista_" + index;
        if (correntista.length() > 50) {
            correntista  = correntista.substring(0, 50);
        }
        obj.setCorrentista(correntista);
        obj.setValor(java.math.BigDecimal.valueOf(index));
        obj.setVencimento(new java.util.GregorianCalendar(java.util.Calendar.getInstance().get(java.util.Calendar.YEAR), java.util.Calendar.getInstance().get(java.util.Calendar.MONTH), java.util.Calendar.getInstance().get(java.util.Calendar.DAY_OF_MONTH), java.util.Calendar.getInstance().get(java.util.Calendar.HOUR_OF_DAY), java.util.Calendar.getInstance().get(java.util.Calendar.MINUTE), java.util.Calendar.getInstance().get(java.util.Calendar.SECOND) + new Double(Math.random() * 1000).intValue()).getTime());
        obj.setVenda(null);
        obj.setContasRecebidas(contasRecebidasDataOnDemand.getRandomContasRecebidas());
        obj.setDataHoraCadastro(new java.util.GregorianCalendar(java.util.Calendar.getInstance().get(java.util.Calendar.YEAR), java.util.Calendar.getInstance().get(java.util.Calendar.MONTH), java.util.Calendar.getInstance().get(java.util.Calendar.DAY_OF_MONTH), java.util.Calendar.getInstance().get(java.util.Calendar.HOUR_OF_DAY), java.util.Calendar.getInstance().get(java.util.Calendar.MINUTE), java.util.Calendar.getInstance().get(java.util.Calendar.SECOND) + new Double(Math.random() * 1000).intValue()).getTime());
        return obj;
    }
    
    public Cheque ChequeDataOnDemand.getSpecificCheque(int index) {
        init();
        if (index < 0) index = 0;
        if (index > (data.size() - 1)) index = data.size() - 1;
        Cheque obj = data.get(index);
        return Cheque.findCheque(obj.get_id());
    }
    
    public Cheque ChequeDataOnDemand.getRandomCheque() {
        init();
        Cheque obj = data.get(rnd.nextInt(data.size()));
        return Cheque.findCheque(obj.get_id());
    }
    
    public boolean ChequeDataOnDemand.modifyCheque(Cheque obj) {
        return false;
    }
    
    public void ChequeDataOnDemand.init() {
        data = br.com.walfarma.dominio.Cheque.findChequeEntries(0, 10);
        if (data == null) throw new IllegalStateException("Find entries implementation for 'Cheque' illegally returned null");
        if (!data.isEmpty()) {
            return;
        }
        
        data = new java.util.ArrayList<br.com.walfarma.dominio.Cheque>();
        for (int i = 0; i < 10; i++) {
            br.com.walfarma.dominio.Cheque obj = getNewTransientCheque(i);
            obj.persist();
            obj.flush();
            data.add(obj);
        }
    }
    
}
