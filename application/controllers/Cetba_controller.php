<?php defined('BASEPATH') or exit('No direct script access allowed');
class Cetba_controller extends CI_Controller
{
    function  __construct()
    {
        parent::__construct();
        $this->load->model('cetba_model');
        $this->load->library('session');
        $this->load->library('javascript');
        $this->load->library('form_validation');
        $this->load->library('email');
        $this->load->library(['ion_auth', 'form_validation']);
        $this->load->helper(['url', 'language']);
        $this->session->set_userdata('logged_in',$this->ion_auth->logged_in());
        $this->form_validation->set_error_delimiters($this->config->item('error_start_delimiter', 'ion_auth'), $this->config->item('error_end_delimiter', 'ion_auth'));
        $this->lang->load('auth');
       
    }

    public function menu()
    {

        $data['polozky'] = $this->cetba_model->get_menu_kategorie();
        

        $config['base_url'] = 'http://localhost/maturitaknihy/cetba_controller/menu';

        $this->load->view('layout/hlava', $data);
        
        $this->load->view('layout/pata');
    }

   
    public function prebal($id) 
    {
        $data['knihy'] = $this->cetba_model->get_prebal($id);
        $data['polozky'] = $this->cetba_model->get_menu_kategorie();

        $this->load->view('layout/hlava', $data);
        $this->load->view('content/prebal');
        $this->load->view('layout/pata');
    }
    
    
    
    
    public function strankovani($id) 
    {
        $data['knihy'] = $this->cetba_model->get_strana($id);
        $data['polozky'] = $this->cetba_model->get_menu_kategorie();

        $this->load->view('layout/hlava', $data);
        $this->load->view('content/strana');
        $this->load->view('layout/pata');
    }
    public function formular()
    {

        $data['polozky'] = $this->cetba_model->get_menu_kategorie();
  

        $this->load->view('layout/hlava', $data);
        $this->load->view('content/formular');
        $this->load->view('layout/pata');
    }

}
