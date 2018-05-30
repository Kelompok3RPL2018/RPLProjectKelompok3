<?php
class database extends CI_Model{

    function __construct(){
        $this->load->database();
    }

    public function insert_registration($data) {

        // Query to check whether username already exist or not
        $condition = "username =" . "'" . $data['username'] . "'";
        $this->db->select('*');
        $this->db->from('customer');
        $this->db->where($condition);
        $this->db->limit(1);
        $query = $this->db->get();
            if ($query->num_rows() == 0) {
        
        // Query to insert data in database
            $this->db->insert('customer', $data);
        if ($this->db->affected_rows() > 0) {
        return true;
        }
        } else {
        return false;
        }
        }

        public function insert_registration_admin($data) {

            // Query to check whether username already exist or not
            $condition = "admin_name =" . "'" . $data['admin_name'] . "'";
            $this->db->select('*');
            $this->db->from('admin');
            $this->db->where($condition);
            $this->db->limit(1);
            $query = $this->db->get();
                if ($query->num_rows() == 0) {
            
            // Query to insert data in database
                $this->db->insert('admin', $data);
            if ($this->db->affected_rows() > 0) {
            return true;
            }
            } else {
            return false;
            }
            }
        
        // Read data using username and password
        public function login($data) {
        
        $condition = "username =" . "'" . $data['username'] . "' AND " . "password =" . "'" . $data['password'] . "'";
        $this->db->select('*');
        $this->db->from('customer');
        $this->db->where($condition);
        $this->db->limit(1);
        $query = $this->db->get();
        
        if ($query->num_rows() == 1) {
        return true;
        } else {
        return false;
        }
        }
        
        public function adminlogin($data) {
        
            $condition = "admin_name =" . "'" . $data['admin_name'] . "' AND " . "password =" . "'" . $data['password'] . "'";
            $this->db->select('*');
            $this->db->from('admin');
            $this->db->where($condition);
            $this->db->limit(1);
            $query = $this->db->get();
            
            if ($query->num_rows() == 1) {
            return true;
            } else {
            return false;
            }
            }

        // Read data from database to show data in admin page
        public function read_user_information($username) {
        
        $condition = "username =" . "'" . $username . "'";
        $this->db->select('*');
        $this->db->from('customer');
        $this->db->where($condition);
        $this->db->limit(1);
        $query = $this->db->get();
        
        if ($query->num_rows() == 1) {
        return $query->result();
        } else {
        return false;
        }
        }

        public function read_admin_information($admin_name) {
        
            $condition = "admin_name =" . "'" . $admin_name . "'";
            $this->db->select('*');
            $this->db->from('admin');
            $this->db->where($condition);
            $this->db->limit(1);
            $query = $this->db->get();
            
            if ($query->num_rows() == 1) {
            return $query->result();
            } else {
            return false;
            }
            }

            public function ViewInstrument() {
        
                // $condition = "admin_name =" . "'" . $admin_name . "'";
                $this->db->select('*');
                $this->db->from('instrument');
                // $this->db->where($condition);
                // $this->db->limit(1);
                $query = $this->db->get();
                
                if ($query->num_rows() > 0) {
                    // echo "<table><tr><th>Username</th><th>Password</th></tr>";
                    // output data of each row
                    foreach ($query->result() as $row)
                    {
                      $data[] = $row;
                    }
                    return $data;
                        }
                     else {
                        echo "0 results";
                    }
                }
        
            public function new_instrument($path,$post){ 
                $data = array( 
                'brand' => $post['brand'], 
                'type' => $post['type'], 
                'color' => $post['color'], 
                'price' => $post['price'], 
                'instrument' => $post['instrument'], 
                'picture'=>$path 
                ); 
                
                return $this->db->insert('instrument', $data); 
                }
        
}

?>