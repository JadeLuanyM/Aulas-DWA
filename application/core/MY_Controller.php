<?php

class MY_Controller extends CI_Controller {

    public function __construct(){
        parent::__construct();
    }

    function show($html){
        $aux = $this->load->view('common/header', null, true);
        $aux .= $html;        
        $aux .= $this->load->view('common/footer', null, true);
        $aux .= $this->load->view('exemplo/navbar', null, true);
        $aux .= $this->load->view('exemplo/rodape', null, true);
        echo $aux;
     }
}