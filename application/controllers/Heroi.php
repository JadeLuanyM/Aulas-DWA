<?php

class Heroi extends CI_Controller{

    public function index(){
        //lista de...
    }

    public function register(){   //form cadastro
        $this->load->view('common/header.php');
        $this->load->view('exemplo/navbar');

       $this->load->model('HeroModel', 'hero');
       $this->hero->salva();

        $data['conteudo'] = $this->load->view('hero/data', null, true);
        $data['conteudo'] .= $this->load->view('hero/power', null, true);
        $this->load->view('hero/form', $data);

        $this->load->view('exemplo/rodape');
        $this->load->view('common/footer.php');
    }

    public function edit($id){
        // form de edição
    }

    public function delete($id){
        // remove o heroi
    }
        // ATIVIDADE . CRIE A VISUALIZAÇÃO DO METODO DETAILS
    public function details($id){
        $this->load->model('HeroModel', 'model');
        $v = $this->model->get_data($id);

        //aqui vai exibir os dados
    }
}