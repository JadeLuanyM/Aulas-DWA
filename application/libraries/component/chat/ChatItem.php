<?php 
include_once APPPATH.'libraries/component/Component.php';
include_once 'ChatData.php';

class ChatItem extends Component {
    private $data;
    private $left;
    
    function __construct(ChatData $data, $left = true){
        $this->data = $data;
        $this->left = $left;
    }

    public function getHTML(){
        $html = '<div class="media mt-5 pt-3" style="background-color: '. ($this->left ? '#EFEFEF' : '#FFF').'">';
        $html .= $this->left ? '<img class="d-flex mr-3" src="'. $this->data->imagem() .'">' : '';
        $html .= '<div class="media-body">
          <h5 class="mt-0 font-weight-bold">'. $this->data->titulo() .'</h5>
          <p>'. $this->data->conteudo() .'</p></div>';
        $html .= !$this->left ? '<img class="d-flex ml-3" src="'. $this->data->imagem() .'">' : '';
        $html .= '</div>';
       return $html;
        
    }

}