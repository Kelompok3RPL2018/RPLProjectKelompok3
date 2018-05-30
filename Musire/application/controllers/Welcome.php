<?php

class Welcome extends CI_Controller{
	public function __construct(){
		parent::__construct();
		$this->load->library('session');
		$this->load->library('form_validation');
		$this->load->helper('form');
		$this->load->helper('url');
		$this->load->model('database');
	}
	
public function index()
	{
		if(isset($this->session->userdata['username'])){
			?><script>window.alert("Anda Masih Login!");</script><?php
			$this->load->view('header_customer');
			$this->load->view('Dashboard');
			$this->load->view('footer');
		}
		else{
			if(isset($this->session->userdata['admin_name'])){
				?><script>window.alert("Anda Masih Login!");</script><?php
				$this->load->view('header_admin');
				$this->load->view('Dashboard');
				$this->load->view('footer');
			}
			else{
			$this->load->view('Customer_Login');
			}
		}
    }
}
    
?>