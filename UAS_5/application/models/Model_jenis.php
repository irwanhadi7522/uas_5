<?php

class Model_jenis extends CI_Model{

    public function getAll(){
        return $this->db->get('daftar_jenis')->result_array();
    }
    public function simpan($data)
    {

        $query = $this->db->insert("daftar_jenis", $data);

        if($query){
            return true;
        }else{
            return false;
        }

    }
    public function hapus($id){
        $query = $this->db->delete("daftar_jenis", $id);
        if($query){
            return true;
        }else{
            return false;
        }
    }
    public function edit($id_jenis){
        $query = $this->db->where('id_jenis', $id_jenis)->get("daftar_jenis");
        if($query){
            return true;
        }else{
            return false;
        }
    }
    public function edit_simpan($data, $id)
    {

        $query = $this->db->update("daftar_jenis", $data, $id);

        if($query){
            return true;
        }else{
            return false;
        }

    }
}