<?php
defined('BASEPATH') OR exit ('No direct script acess allowed');

    
    class ChatData extends CI_Object{

        private $img_path = 'https://mdbootstrap.com/img/Photos/Others/placeholder1.jpg ';
        private $conteudo;
        private $titulo;
 
        function __construct($item){
            $this->conteudo = $item->conteudo;
            $this->titulo = $item->titulo;
            
        }

        public function imagem(){
            return $this->img_path;
        }

        public function conteudo(){
            return $this->conteudo;
        }

        public function titulo(){
            return $this->titulo;
        }

}