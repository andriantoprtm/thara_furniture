<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Admin extends CI_Model {

function hapus($data){
            $this->db->where('id_user', $data['id_user']);
            $this->db->delete('users', $data);
        }
    }