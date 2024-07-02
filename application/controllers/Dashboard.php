<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Dashboard extends CI_Controller
{

    function __construct()
    {
        parent::__construct();
        $this->load->model('kategori_model');
        $this->load->model('rekening_model');
        $this->load->model('pembelian_model');
        if (!$this->session->userdata('email')) {
            $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">Silahkan Login terlebih dahulu!
                <button class="close" type="button" data-dismiss="alert" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button></div>');
            redirect('member');
        }
    }
    public function index()
    {
        $data['title'] = 'Dashboard';

        $this->load->view('templates/navbar', $data, FALSE);
        $this->load->view('member/dashboard', $data, FALSE);
        $this->load->view('templates/footer', $data, FALSE);
    }
    public function belanja()
    {
        $pelanggan = $this->session->userdata('id_user');
        $pembelian = $this->pembelian_model->user($pelanggan);
        // $pembelian = $this->pembelian_model->transaksi();
        $data = array(
            'title' => 'Konfirmasi Pembayaran',
            // 'header'=>$header,
            'pembelian' => $pembelian
        );

        $this->load->view('templates/navbar', $data, FALSE);
        $this->load->view('member/belanja', $data, FALSE);
        $this->load->view('templates/footer', $data, FALSE);
    }

    public function konfirmasi($id_transaksi)
    {
        if ($id_transaksi == null) {
            redirect('dashboard/belanja');
        } else {
            $transaksi = $this->pembelian_model->user('header_transaksi', ['id_user' => $this->session->userdata('email')]);
            $rekening = $this->rekening_model->get_all();
            $kode = $this->pembelian_model->transaksi();
            $header_transaksi = $this->pembelian_model->get($id_transaksi);

            $this->form_validation->set_rules('nama_bank', 'Nama Bank', 'required|trim', [
                'required' => 'Nama Bank harus diisi.'
            ]);
            $this->form_validation->set_rules('rekening_pembayaran', 'Nomor Rekening', 'required|trim', [
                'required' => 'Nomor Rekening harus diisi.'
            ]);
            $this->form_validation->set_rules('rekening_pelanggan', 'Nama Pemilik Rekening', 'required|trim', [
                'required' => 'Rekening Pemilik harus diisi.'
            ]);
            if ($this->form_validation->run()) {
                if (!empty($_FILES['bukti_bayar']['name'])) {

                    $config['upload_path'] = './assets/admin/image/';
                    $config['allowed_types'] = 'jpg|png|jpeg';
                    $this->load->library('upload', $config);

                    if (!$this->upload->do_upload('bukti_bayar')) {

                        $data = array(
                            'title' => 'Konfirmasi Pembayaran',
                            'transaksi' => $transaksi,
                            'rekening' => $rekening,
                            'kode' => $kode,
                            'header_transaksi' => $header_transaksi
                        );

                        $this->load->view('templates/navbar', $data, FALSE);
                        $this->load->view('member/konfirmasi', $data, FALSE);
                        $this->load->view('templates/footer', $data, FALSE);
                    } else {
                        $upload_gambar = array('upload_data' => $this->upload->data());

                        $i = $this->input;
                        //proses insert
                        $data = [
                            'id_pembelian' => $header_transaksi->id_pembelian,
                            'id_rekening' => $i->post('id_rekening'),
                            'id_transaksi' => $i->post('id_transaksi'),
                            'nama_bank' => $i->post('nama_bank'),
                            'status' => 'Sudah dibayar',
                            'rekening_pembayaran' => $i->post('rekening_pembayaran'),
                            'rekening_pelanggan' => $i->post('rekening_pelanggan'),
                            'bukti_bayar' => $upload_gambar['upload_data']['file_name']
                        ];

                        $this->pembelian_model->update_pembelian($data);
                        $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">Konfirmasi Berhasil. Produk akan segera kami proses.
                        <button class="close" type="button" data-dismiss="alert" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button></div>');
                        redirect(base_url('keranjang/berhasil'), 'refresh');
                    }
                }
            }
            $data = array(
                'title' => 'Konfirmasi Pembayaran', 'transaksi' => $transaksi,
                'rekening' => $rekening,
                'kode' => $kode,
                'header_transaksi' => $header_transaksi
            );

            $this->load->view('templates/navbar', $data, FALSE);
            $this->load->view('member/konfirmasi', $data, FALSE);
            $this->load->view('templates/footer', $data, FALSE);
        }
    }
    public function delete($id_transaksi)
    {
        // Lakukan proses penghapusan data transaksi berdasarkan ID
        // Contoh:
        $this->db->where('id_transaksi', $id_transaksi);
        $this->db->delete('header_transaksi');

        // Redirect kembali ke halaman dashboard setelah penghapusan
        redirect('dashboard/belanja');
    }



    public function logout()
    {
        $this->session->unset_userdata('id_user');
        $this->session->unset_userdata('nama');
        $this->session->unset_userdata('email');
        $this->session->unset_userdata('password');

        $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">Anda berhasil keluar!
                <button class="close" type="button" data-dismiss="alert" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button></div>');
        redirect('Member');
    }
    public function ubahProfil()
    {
        $user = $this->ModelUser->cekData(['email' => $this->session->userdata('email')])->row_array();

        $data = [
            'image' => $user['image'],
            'user' => $user['nama'],
            'email' => $user['email'],
            'tanggal_input' => $user['tanggal_input'],
            'judul' => 'Profil Saya'
        ];

        // Validasi Nama
        $this->form_validation->set_rules('nama', 'Nama Lengkap', 'required|trim', [
            'required' => 'Nama tidak boleh kosong'
        ]);

        //Cek jika validasi gagal dan default
        if ($this->form_validation->run() == false) {
            $this->load->view('templates/templates-user/header', $data);
            $this->load->view('member/ubah-member', $data);
            $this->load->view('templates/templates-user/modal');
            $this->load->view('templates/templates-user/footer', $data);
        } else {
            $nama = $this->input->post('nama', true);
            $email = $this->input->post('email', true);

            //jika ada gambar yang akan diupload
            $upload_image = $_FILES['image']['name'];

            if ($upload_image) {
                $config['upload_path'] = './assets/img/profile/';
                $config['allowed_types'] = 'gif|jpg|png|JPG|PNG|jpeg|JPEG';
                $config['max_size'] = '3000';
                $config['max_width'] = '1024';
                $config['max_height'] = '1000';
                $config['file_name'] = 'pro' . time();

                $this->load->library('upload', $config);

                if ($this->upload->do_upload('image')) {
                    $gambar_lama = $user['image'];
                    if ($gambar_lama != 'default.jpg') {
                        unlink(FCPATH . 'assets/img/profile/' . $gambar_lama);
                    }

                    $gambar_baru = $this->upload->data('file_name');
                    $this->db->set('image', $gambar_baru);
                } else {
                    $error = $this->upload->display_errors();
                    $this->session->set_flashdata('pesan', '<div class="alert alert-danger alert-message" role="alert">Profil gagal diubah <br><b>' . $error . '</b></div>');
                    redirect('member/myprofil');
                }

                $this->db->set('nama', $nama);
                $this->db->where('email', $email);
                $this->db->update('user');

                $this->session->set_flashdata('pesan', '<div class="alert alert-success alert-message" role="alert">Profil Berhasil diubah </div>');
                redirect('member/myprofil');
            } else {
                $this->db->set('nama', $nama);
                $this->db->where('email', $email);
                $this->db->update('user');

                $this->session->set_flashdata('pesan', '<div class="alert alert-success alert-message" role="alert">Profil Berhasil diubah </div>');
                redirect('member/myprofil');
            }
        }
    }
}
