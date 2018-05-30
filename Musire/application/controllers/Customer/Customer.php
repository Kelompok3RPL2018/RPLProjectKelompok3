<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Customer extends CI_Controller {

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

	public function CreateAccountShow(){
		if(isset($this->session->userdata['username'])){
			?><script>window.alert("Anda Masih Login!");</script><?php
			$this->load->view('header_customer');
			$this->load->view('Dashboard');
			$this->load->view('footer');
		}
		else{
		$this->load->view('CreateAccount');
		}
	}

	public function Login(){

		$this->form_validation->set_rules('username', 'Username', 'trim|required');
		$this->form_validation->set_rules('password', 'Password', 'trim|required');
		
		if ($this->form_validation->run() == FALSE) {
			if(isset($this->session->userdata['username'])){
				$this->load->view('header_customer');
				$this->load->view('Dashboard');
				$this->load->view('footer');
			}
			else{
				$this->load->view('Customer_Login');
			}
		} 
		else {
			$data = array(
			'username' => $this->input->post('username'),
			'password' => $this->input->post('password')
			);
			$result = $this->database->login($data);
			if ($result == TRUE) {
		
				$username = $this->input->post('username');
				$result = $this->database->read_user_information($username);
				if ($result != false) {
					$session_data = array(
					'username' => $result[0]->username,
					'password' => $result[0]->password,
					'email' => $result[0]->customer_email,
					);
					// Add user data in session
					$this->session->set_userdata($session_data);
					// $username = $this->session->userdata('username')
					?><script>window.alert("Login Sukses!");</script><?php
					$this->load->view('header_customer');
					$this->load->view('Dashboard', $session_data);
					$this->load->view('footer');
					}
			} 
			else {
				?><script>window.alert("Username / Password salah!");</script><?php
				$this->load->view('Customer_Login', $data);
				}
			}
		}
		
		// Logout from admin page
		public function logout() {
			$sess_array = array(
			'username' => '',
			'password' => '',
			'email' => ''
			);
		$this->session->unset_userdata($sess_array);
		session_destroy();
		// $data['message_display'] = 'Successfully Logout';
		?><script>window.alert("Anda telah logout!");</script><?php
		//  $this->load->view('Customer_Login', $data);
		$this->load->view('Customer_Login');
		}

	public function Register(){
		$this->form_validation->set_rules('fname', 'First Name', 'trim|required');
		$this->form_validation->set_rules('lname', 'Last Name', 'trim|required');
		$this->form_validation->set_rules('pnumber', 'Phone Number', 'trim|required');
		$this->form_validation->set_rules('email', 'Email', 'trim|required');
		$this->form_validation->set_rules('homeAddress', 'Home Address', 'trim|required');
		$this->form_validation->set_rules('username', 'Username', 'trim|required|min_length[5]|max_length[10]');
		$this->form_validation->set_rules('password', 'Password', 'trim|required|max_length[10]');


		if ($this->form_validation->run() == FALSE) {
			?><script> window.alert("Buat akun gagal, data yang anda input tidak memenuhi syarat!"); </script><?php
			$this->load->view('CreateAccount');
			} else {
				$data = array(
				'firstname' => $this->input->post('fname'),
				'lastname' => $this->input->post('lname'),
				'contact_no' => $this->input->post('pnumber'),
				'customer_email' => $this->input->post('email'),
				'address' => $this->input->post('homeAddress'),
				'username' => $this->input->post('username'),
				'password' => $this->input->post('password')
				);
			$result = $this->database->insert_registration($data);
			if ($result == TRUE) {
				?><script>window.alert("Terimakasih, Registrasi Berhasil!");</script><?php
				$this->load->view('Customer_Login', $data);
			} else {
				?><script>window.alert("Username telah dipakai, buat akun gagal!");</script><?php
				$this->load->view('CreateAccount', $data);
			}
			}
			
	}

	public function UserInfo(){
	
	}

	public function username(){
		$this->load->view('User_info');
	}

}

