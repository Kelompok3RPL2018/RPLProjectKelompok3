<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Instrument extends CI_Controller {

    public function __construct(){
        parent::__construct();
		$this->load->library('session');
		$this->load->library('form_validation');
		$this->load->helper('form');
		$this->load->helper('url');
		$this->load->model('database');
	}
	
	public function AddInstrumentView(){
		if(!isset($this->session->userdata['username'])){
			?><script>window.alert("Anda Belum Login!");</script><?php
			$this->load->view('Admin_Login');
		}
		else{
		$this->load->view('AddInstrument');
		}
	}



}