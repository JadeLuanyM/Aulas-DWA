<?php

class Carro extends MY_Controller {

    function __construct(){
        parent::__construct();
        $this->load->model('CarroModel', 'model');
    }
    
    public function index(){
        $data['carros'] = $this->model->lista_carros();
        $html = $this->load->view('carro/lista', $data, true);
        $this->show($html);
    }
    public function detalhe($id){
        $data['nome_carro'] = $this->model->nome_carro($id);
        $data['fotos'] = $this->model->lista_fotos($id);
        $html = $this->load->view('carro/detalhe', $data, true);
        $this->show($html);
    }

    public function cadastro(){
        $this->model->cria_carro();
        $html = $this->load->view('carro/cadastro', null, true);
        $this->show($html);
    }
   
}