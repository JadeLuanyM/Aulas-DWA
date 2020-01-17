<?php
defined('BASEPATH') OR exit ('No direct script acess allowed');
include 'ChatItem.php';
include_once 'ChatData.php';

  class ChatLoader extends CI_Object{

      private $chat_index;
      private $chat_item_list;

        function __construct($chat_index){
          $this->chat_index = $chat_index;
          $this->loadChatData();
            
        }

        private function loadChatData(){
          $sql = "SELECT CONCAT(nome, ' ',sobrenome) AS titulo, conteudo FROM chat_item, chat_usuario WHERE chat_list_id = ". $this->chat_index ." AND chat_usuario.id = user_id";
          $rs = $this->db->query($sql);
          $this->chat_item_list = $rs->result();
        }

        public function getHTML() {
            $html = ''; $i = 0;
            foreach($this->chat_item_list AS $item) {
                $data = new ChatData($item);
                $item = new ChatItem($data, ($i++ % 2 == 0));
                $html .= $item->getHTML();

                
            }
            return $html;

        }
    }