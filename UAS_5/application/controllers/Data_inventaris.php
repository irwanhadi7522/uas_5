<?php

class Data_inventaris extends CI_Controller{
    public function __construct(){

        parent ::__construct();
    
        //load model
        $this->load->model('model_inventaris'); 
        
    }
    
    public function index(){
        $data['contents']='data_inventaris/index';
        $data['inventaris'] = $this->model_inventaris->getAll();
		$this->load->view('templates/index', $data);
    }
    public function tambah_inventaris(){
        $data['contents'] = 'data_inventaris/tambah_inventaris';
        $this->load->view('templates/index', $data);
    }
}