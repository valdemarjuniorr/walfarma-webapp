// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package br.com.walfarma.dominio;

import br.com.walfarma.dominio.ContatoDataOnDemand;
import br.com.walfarma.dominio.Convenio;
import br.com.walfarma.dominio.EnderecoDataOnDemand;
import java.util.List;
import java.util.Random;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

privileged aspect ConvenioDataOnDemand_Roo_DataOnDemand {
    
    declare @type: ConvenioDataOnDemand: @Component;
    
    private Random ConvenioDataOnDemand.rnd = new java.security.SecureRandom();
    
    private List<Convenio> ConvenioDataOnDemand.data;
    
    @Autowired
    private EnderecoDataOnDemand ConvenioDataOnDemand.enderecoDataOnDemand;
    
    @Autowired
    private ContatoDataOnDemand ConvenioDataOnDemand.contatoDataOnDemand;
    
    public Convenio ConvenioDataOnDemand.getNewTransientConvenio(int index) {
        br.com.walfarma.dominio.Convenio obj = new br.com.walfarma.dominio.Convenio();
        obj.setId(new Integer(index).longValue());
        java.lang.String descricao = "descricao_" + index;
        if (descricao.length() > 256) {
            descricao  = descricao.substring(0, 256);
        }
        obj.setDescricao(descricao);
        java.lang.String cnpj = "cnpj_" + index;
        if (cnpj.length() > 14) {
            cnpj  = cnpj.substring(0, 14);
        }
        obj.setCnpj(cnpj);
        obj.setEndereco(enderecoDataOnDemand.getRandomEndereco());
        obj.setContato(contatoDataOnDemand.getRandomContato());
        obj.setDesconto(java.math.BigDecimal.valueOf(index));
        java.lang.String inscricaoEstadual = "inscricaoEstadual_" + index;
        if (inscricaoEstadual.length() > 20) {
            inscricaoEstadual  = inscricaoEstadual.substring(0, 20);
        }
        obj.setInscricaoEstadual(inscricaoEstadual);
        obj.setConvenioEspecial(Boolean.TRUE);
        obj.setCategoriaSemDesconto("categoriaSemDesconto_" + index);
        obj.setStatusTransferencia(br.com.walfarma.dominio.StatusTransferencia.class.getEnumConstants()[0]);
        obj.setBloqueado(Boolean.TRUE);
        obj.setObservacao("observacao_" + index);
        return obj;
    }
    
    public Convenio ConvenioDataOnDemand.getSpecificConvenio(int index) {
        init();
        if (index < 0) index = 0;
        if (index > (data.size() - 1)) index = data.size() - 1;
        Convenio obj = data.get(index);
        return Convenio.findConvenio(obj.get_id());
    }
    
    public Convenio ConvenioDataOnDemand.getRandomConvenio() {
        init();
        Convenio obj = data.get(rnd.nextInt(data.size()));
        return Convenio.findConvenio(obj.get_id());
    }
    
    public boolean ConvenioDataOnDemand.modifyConvenio(Convenio obj) {
        return false;
    }
    
    public void ConvenioDataOnDemand.init() {
        data = br.com.walfarma.dominio.Convenio.findConvenioEntries(0, 10);
        if (data == null) throw new IllegalStateException("Find entries implementation for 'Convenio' illegally returned null");
        if (!data.isEmpty()) {
            return;
        }
        
        data = new java.util.ArrayList<br.com.walfarma.dominio.Convenio>();
        for (int i = 0; i < 10; i++) {
            br.com.walfarma.dominio.Convenio obj = getNewTransientConvenio(i);
            obj.persist();
            obj.flush();
            data.add(obj);
        }
    }
    
}