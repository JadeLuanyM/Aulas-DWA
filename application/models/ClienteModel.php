<?php
include_once APPPATH . 'libraries/Pessoa.php';
include_once APPPATH . 'libraries/component/Table.php';

class ClienteModel extends CI_Model {

    public function gera_tabela() {
        $html = '';
        $num = 1; //contador

        $pessoa = new Pessoa(); //new cria objetos de uma classe
        $data = $pessoa->lista();
        $label = ['Nº', 'Nome', 'Sobrenome', 'Idade', 'Sexo'];
        $table = new Table($data, $label);
        $table->addHeaderClass('white-text black text-center');
        //$table->useZebra();
        $table->useHover();
        $table->smRow();
        $table->useBorder();
        $table->useActionButton();
        return $table->getHTML();
    }

  

    public function detalhe($id) {

        $costumer = new Costumer();
        $cliente = $costumer->lista();
        return $cliente[$id - 1]; //para não ter 0
    }

    public function salva_usuario() {
        if( sizeof($_POST) == 0) return;                        
        //definir as regras de validação                    //required = obrigatório //trim (string) = retira os "espaços"
        $this->form_validation->set_rules('nome', 'Nome do Cliente', 'trim|required|min_length[2]|max_length[20]');
        $this->form_validation->set_rules('snome', 'Sobrenome do Cliente', 'trim|required|min_length[3]|max_length[80]');
        $this->form_validation->set_rules('idade', 'Idade do Cliente', 'trim|required|is_natural|greater_than_equal_to[18]|less_than_equal_to[105]');
        $this->form_validation->set_rules('sexo', 'Gênero do Cliente', 'trim|required|in_list[Feminino, Masculino]');

        //realizar a validação
        if ( $this->form_validation->run()){
            //passou na validação
             //executar a ação do formulário
             $data = $this->input->post();
             $pessoa = new Pessoa();
             $pessoa->cria_usuario($data);
             redirect('Cliente/lista');
        }
    }

    public function edita_usuario($id) {
        if( sizeof($_POST) == 0) return;

        $data = $this->input->post();
        $pessoa = new Pessoa();
        $pessoa->edita_usuario($data, $id);
        redirect('Cliente/lista');
  
    }

    public function read($id) {
        $pessoa = new Pessoa();
        return $pessoa->user_data($id);

    }

    public function deletar($id) {
        $pessoa = new Pessoa();
        $pessoa->delete($id);
    }
}
