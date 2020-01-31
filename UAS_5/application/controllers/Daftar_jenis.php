<?php

class Daftar_jenis extends CI_Controller{
    public function __construct(){

        parent ::__construct();

        //load model
        $this->load->model('model_jenis'); 

    }

   
    public function index(){
        $this->load->model('Model_jenis');
        $data['jenis'] = $this->Model_jenis->getAll();
        $data['contents']='daftar_jenis/index';
		$this->load->view('templates/index' ,$data);
    }
    public function tambah_jenis(){
        $data['contents']='Daftar_jenis/tambah_jenis';
		$this->load->view('templates/index', $data);
    }
    public function simpan()
    {
        $data = array(

            'jenis'       => $this->input->post("jenis"),
            'ket_jenis'         => $this->input->post("ket_jenis")

        );

        $this->model_jenis->simpan($data);

        $this->session->set_flashdata('notif', '<div class="alert alert-success alert-dismissible"> Success! data berhasil disimpan didatabase.
                                                </div>');

        //redirect
        redirect('Daftar_jenis/');

    }
    public function hapus($id_jenis){
        $id['id_jenis'] = $this->uri->segment(3);
        $this->model_jenis->hapus($id);
        redirect('Daftar_jenis/');
    }
    public function edit($id_jenis){
        $id_jenis = $this->uri->segment('3');
            $data ['contents'] = 'daftar_jenis/edit_jenis';
        $data['jenis']= $this->model_jenis->edit($id_jenis);
       	$this->load->view('templates/index', $data);

    }
    public function edit_simpan()
    {
        $id['id_jenis'] = $this->input->post("id_jenis");
        $data = array(

            'jenis'           => $this->input->post("jenis"),
            'ket_jenis'         => $this->input->post("ket_jenis")

        );

        $this->model_jenis->edit_simpan($data, $id);

        $this->session->set_flashdata('notif', '<div class="alert alert-success alert-dismissible"> Success! data berhasil diupdate didatabase.
                                                </div>');

        //redirect
        redirect('Daftar_jenis/');
    }
}