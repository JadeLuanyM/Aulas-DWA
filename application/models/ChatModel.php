<?php 
defined('BASEPATH') OR exit('No direct script acess allowed');
include APPPATH. 'libraries/component/chat/ChatLoader.php';

class ChatModel extends CI_Model{

    function listaChat($index){
        $chat = new ChatLoader($index);
        return $chat->getHTML();
    }
}