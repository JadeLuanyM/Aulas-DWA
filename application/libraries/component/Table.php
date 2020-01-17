<?php 
include_once 'Component.php';

class Table extends Component {

    //atributos
    private $data;
    private $label;

    //classes do cabeçalho da tabela
    private $header_classes = '';

    //classes do corpo da tabela
    private $body_classes = '';

    private $use_action_button = false;
    //construtor
    function __construct(array $data, array $label){
        $this->label = $label;
        $this->data = $data;
    }

    //métodos
    function getHTML(){
        $html = '<table class="table '.$this->body_classes.'">';
        $html .= $this->header();
        $html .= $this->body();
        $html .= '</table>';
        return $html;
    }
    
    public function addHeaderClass($class){
        $this->header_classes .= $class.' ';
    }

    private function header(){
        $html = '<thead class="'.$this->header_classes.'"><tr><br><br>';
        foreach ($this->label as $name){
            $html .= '<th scope="col">'.$name.'</th>';
        }

        if($this->use_action_button){
            $html .= '<th scope="col"></th>';
        }

        $html .= '</tr></thead>';
        return $html;
    }

    private function body(){
        $html = '<tbody>';
        foreach ($this->data as $row){
            $html .= '<tr>';
                foreach ($row as $cel){
                    $html .= '<td>'.$cel.'</td>';
                }
                if($this->use_action_button){
                    $html .= '<td>'.$this->action_buttons($row['id']).'</td>';
                }

            $html .= '</tr>';
        }
        $html .= '</tbody>';
        return $html;
    }

    private function action_buttons($id){
        $html = '<a href="'.base_url('cliente/editar/'.$id).'">';
        $html .='<i title="Editar" class="far fa-edit blue-text mr-2"></i></a>';
        $html .= '<a href="'.base_url('cliente/deletar/'.$id).'">';
        $html .='<i title="Deletar" class="far fa-trash-alt red-text mr-2"></i></a>';

        return $html;
    }

    public function useZebra(){
        $this->body_classes .= 'table-striped ';
    }

    public function useBorder(){
        $this->body_classes .= 'table-bordered ';
    }
    //For the cursor
    public function useHover(){
        $this->body_classes .= 'table-hover ';
    }
        //Small Row 
    public function smRow(){
        $this->body_classes .= 'table-sm ';
    }
    //Use the action Botton
    public function useActionButton(){
        $this->use_action_button = true;
    }

}