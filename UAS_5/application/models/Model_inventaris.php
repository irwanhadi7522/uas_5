<?php


class Model_inventaris extends CI_Model{

    public function getAll(){
        return $this->db->get('data_inventaris')->result_array();
    }

}