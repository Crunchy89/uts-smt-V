<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Admin extends MY_Controller
{
	public function __construct()
	{
		parent::__construct();
		$this->load->library('form_validation');
	}

	public function index()
	{
		$data['title'] = "admin page";
		$data['pengguna'] = $this->db->get('pengguna')->result();
		admin_page('index', $data);
	}

	public function tambah_pengguna()
	{
		$data['title'] = "Tambah Data";
		admin_page('form_tambah', $data);
	}

	public function save()
	{
		$gambar = $_FILES['gambar']['name'];
		if ($gambar) {
			$config['upload_path']          = "assets/img/";
			$config['allowed_types']        = 'JPG|jpg|jpeg|png';
			$config['max_size']             = 10240;
			$this->load->library('upload', $config);
			if ($this->upload->do_upload('gambar')) {
				$new_image = $this->upload->data('file_name');
			} else {
				$error = $this->upload->display_errors();
				$this->session->set_flashdata('message', '<div class="alert alert-danger text-center" role="alert">' . $error . '</div>');
			}
		}
		$nd = $this->input->post('nd');
		$nb = $this->input->post('nb');
		$email = $this->input->post('email');
		$nama = $this->input->post('nama');
		$password = $this->input->post('password');
		$level = $this->input->post('level');
		$this->db->set('nama_depan', $nd);
		$this->db->set('nama_belakang', $nb);
		$this->db->set('email', $email);
		$this->db->set('username', $nama);
		$this->db->set('password', $password);
		$this->db->set('level', $level);
		$this->db->set('gambar', $new_image);
		$this->db->insert('pengguna');
		redirect('admin');
	}

	public function edit_pengguna()
	{
		$data['title'] = "Edit Data";
		$id = $this->uri->segment('3');
		$data['user'] = $this->db->get_where('pengguna', ['id_pengguna' => $id])->row();
		admin_page('form_edit', $data);
	}

	public function update()
	{
		$old_image = $this->input->post('gambar_lama');
		$gambar = $_FILES['gambar']['name'];
		if ($gambar) {
			$config['upload_path']          = "assets/img/";
			$config['allowed_types']        = 'JPG|jpg|jpeg|png';
			$config['max_size']             = 10240;
			$this->load->library('upload', $config);
			if ($this->upload->do_upload('gambar')) {
				$new_image = $this->upload->data('file_name');
			} else {
				$error = $this->upload->display_errors();
				$this->session->set_flashdata('message', '<div class="alert alert-danger text-center" role="alert">' . $error . '</div>');
			}
		}
		$id = $this->input->post('id');
		$nd = $this->input->post('nd');
		$nb = $this->input->post('nb');
		$email = $this->input->post('email');
		$nama = $this->input->post('nama');
		$password = $this->input->post('password');
		$level = $this->input->post('level');
		$this->db->set('nama_depan', $nd);
		$this->db->set('nama_belakang', $nb);
		$this->db->set('email', $email);
		$this->db->set('username', $nama);
		$this->db->set('password', $password);
		$this->db->set('level', $level);
		$this->db->set('gambar', $new_image);
		$this->db->where('id_pengguna', $id);
		$this->db->update('pengguna');
		redirect('admin');
	}

	public function hapus_pengguna()
	{
		$id = $this->uri->segment('3');
		$this->db->where('id_pengguna', $id);
		$this->db->delete('pengguna');
		redirect('admin');
	}
}
