<?php
defined('BASEPATH') OR exit ('No direct script acess allowed');


class Chat extends MY_Controller{

    function __construct(){
        parent::__construct();
        $this->load->model('ChatModel', 'chat');
    }
    public function index(){
        $html = $this->chat->listaChat(1);
        $this->show($html);
    }
}