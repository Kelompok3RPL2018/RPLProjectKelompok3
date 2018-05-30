<?php

class Admin extends CI_Controller{

        public function __construct(){
            parent::__construct();
            $this->load->library('session');
            $this->load->library('form_validation');
            $this->load->helper(array('form', 'url'));
            $this->load->helper('url');
            $this->load->model('database');
        }

        public function AdminLoginView(){
            if(isset($this->session->userdata['admin_name'])){
                ?><script>window.alert("Anda Masih Login!");</script><?php
                $this->load->view('header_admin');
                $this->load->view('Dashboard');
                $this->load->view('footer');
            }
            else{
            $this->load->view('Admin_Login');
            }
        }

        public function Login(){

        $this->form_validation->set_rules('admin_name', 'AdminName', 'trim|required');
        $this->form_validation->set_rules('password', 'Password', 'trim|required');

        if ($this->form_validation->run() == FALSE) {
            if(isset($this->session->userdata['admin_name'])){
                $this->load->view('header_admin');
                $this->load->view('Dashboard');
                $this->load->view('footer');
            }
            else{
                $this->load->view('Admin_Login');
            }
        } 
        else {
            $data = array(
            'admin_name' => $this->input->post('admin_name'),
            'password' => $this->input->post('password')
            );
            $result = $this->database->adminlogin($data);
            if ($result == TRUE) {

                $admin_name = $this->input->post('admin_name');
                $result = $this->database->read_admin_information($admin_name);
                if ($result != false) {
                    $session_data = array(
                    'admin_name' => $result[0]->admin_name,
                    'contact' => $result[0]->contact,
                    );
                    // Add user data in session
                    $this->session->set_userdata($session_data);
                    // $username = $this->session->userdata('username')
                    ?><script>window.alert("Login Sukses!");</script><?php
                    $this->load->view('header_admin');
                    $this->load->view('Dashboard', $session_data);
                    $this->load->view('footer');
                    }
            } 
            else {
                ?><script>window.alert("AdminName / Password salah!");</script><?php
                $this->load->view('Admin_Login', $data);
                }
            }
        }

        // Logout from admin page
        public function logout() {
            $sess_array = array(
            'admin_name' => '',
            'password' => ''
            );
        $this->session->unset_userdata($sess_array);
        session_destroy();
        // $data['message_display'] = 'Successfully Logout';
        ?><script>window.alert("Anda telah logout!");</script><?php
        //  $this->load->view('Customer_Login', $data);
        $this->load->view('Customer_Login');
        }

        public function AddAdminView(){
            if(isset($this->session->userdata['admin_name'])){

                $this->load->view('AddAdmin');
            }
            else{
            ?><script>window.alert("Anda Harus Login terlebih dahulu!");</script><?php
            $this->load->view('Admin_Login');
            }

        }

        public function Register(){

        $this->form_validation->set_rules('admin_name', 'Admin Name', 'trim|required|min_length[5]|max_length[10]');
        $this->form_validation->set_rules('password', 'Password', 'trim|required');
        $this->form_validation->set_rules('contact', 'contact', 'trim|required');

        if ($this->form_validation->run() == FALSE) {
            ?><script> window.alert("Buat akun gagal, data yang anda input tidak memenuhi syarat!"); </script><?php
            $this->load->view('AddAdmin');
            } else {
                $data = array(
                'contact' => $this->input->post('contact'),
                'admin_name' => $this->input->post('admin_name'),
                'password' => $this->input->post('password')
                );
            $result = $this->database->insert_registration_admin($data);
            if ($result == TRUE) {
                ?><script>window.alert("Terimakasih, Add Admin Berhasil!");</script><?php
                $this->load->view('header_admin');
                $this->load->view('Dashboard');
                $this->load->view('footer');
            } else {
                ?><script>window.alert("Nama Admin tersebut sudah ada, Add admin gagal!");</script><?php
                $this->load->view('AddAdmin', $data);
            }
            }
            
        }
         
            public function AddInstrumentView(){
                if(isset($this->session->userdata['admin_name'])){
                    $this->load->view('AddInstrument');
                }
                else{
                ?><script>window.alert("Anda Harus Login terlebih dahulu!");</script><?php
                $this->load->view('Admin_Login');
                }

            }

            public function ViewInstrument(){
                $data["instrument"]=$this->database->ViewInstrument();
                $this->load->view('data', $data);
            }
         
            public function AddInstrument()
            {
                $this->form_validation->set_rules('brand', 'Brand', 'required');
                $this->form_validation->set_rules('type', 'Type', 'required');
                $this->form_validation->set_rules('color', 'Color', 'required');
                $this->form_validation->set_rules('price', 'Price', 'required');
                $this->form_validation->set_rules('instrument', 'Instrument', 'required');
                if ($this->form_validation->run() === FALSE){
                    ?><script> window.alert("Data tidak memenuhi syarat!"); </script><?php
                    $this->load->view('AddInstrument');
                }else{

                    $config['upload_path']          = './Image/';
                    $config['allowed_types']        = 'gif|jpg|png';
                    $config['max_size']             = 2048000;
                    $config['max_width']            = 1024;
                    $config['max_height']           = 768;
    
                    $this->load->library('upload', $config);
    
                    if ( ! $this->upload->do_upload('imagefile'))
                    {
                            // $error = array('error' => $this->upload->display_errors());
                            ?><script> window.alert("Image tidak memenuhi syarat!"); </script><?php
                            $this->load->view('AddInstrument');
                    }
                    else
                    {
                            // $data = array('upload_data' => $this->upload->data());
                            // $this->load->view('upload_success', $data);
                            $this->database->new_instrument($this->upload->data('full_path'),$this->input->post());
                            ?><script> window.alert("Add Instrument berhasil, Upload Sukses!"); </script><?php
                            $data["instrument"]=$this->database->ViewInstrument();
                            $this->load->view('data', $data);
                            // $this->load->view('header_admin');
                            // $this->load->view('Dashboard');
                            // $this->load->view('footer');
                    }
            }
        }
    }

?>