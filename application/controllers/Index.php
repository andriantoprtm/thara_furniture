<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Index extends CI_Controller
{

    public function __construct()
    {
        parent::__construct();
        $this->load->model('app');
    }

    public function index()
    {

        $data['data'] = $this->app->get_all('produk');
        $data['title'] = 'Thara Furniture';
        $this->load->view('templates/navbar', $data);
        $this->load->view('templates/slide', $data);
        $this->load->view('index', $data);
        $this->load->view('templates/footer');
    }
}
