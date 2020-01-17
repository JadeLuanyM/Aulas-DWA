<?php
defined('BASEPATH') OR exit('No direct script acess allowed');

class Home extends CI_Controller{

    public function index(){
        $this->load->view('common/header');
        $this->load->view('exemplo/navbar');
        $this->load->view('exemplo/jumbotron');
        $this->load->view('exemplo/linha1');
        $this->load->view('exemplo/pagination');
        $this->load->view('exemplo/rodape');
        $this->load->view('common/footer.php');
    }
    public function basico(){
        $this->load->view('common/header');
        $this->load->view('exemplo02/header');
        $this->load->view('exemplo02/navbar');
        $this->load->view('exemplo02/fullpage');
      //main.php (linha 215 - 482)
        $this->load->view('common/footer');
    }
}