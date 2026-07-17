<?php

/**
 * Created by PhpStorm.
 * User: administrator
 * Date: 17/12/2019
 * Time: 03:19
 */

class Pages extends CI_Controller
{
    private $data;

    public function __construct()
    {
        parent::__construct();
    }


    //about us
    function about_us($alias)
    {
        $this->data['title'] = 'About Centre';

        //centre
        $centre = $this->centre_model->get_by(['alias' => $alias, 'status' => 'publish']);

        if (!$centre)
            show_404('Centre not found');

        $this->data['centre'] = $centre;

        //render view
        $this->load->view('centres/header', $this->data);
        $this->load->view('centres/pages/about_us');
        $this->load->view('centres/footer');
    }

    //programmes
    function programmes($c_alias, $alias, $in_alias = null)
    {
        //centre
        $centre = $this->centre_model->get_by(['alias' => $c_alias, 'status' => 'publish']);

        if (!$centre)
            show_404('Centre not found');

        $this->data['centre'] = $centre;

        //page
        $page = $this->page_model->get_by(['alias' => $alias, 'centre_id' => $centre->id, 'status' => 'publish']);

        if (!$page)
            show_404('Page not found');

        $this->data['page'] = $page;

        //check sub page  
        if ($in_alias != null) {
            //page
            $sub_page = $this->page_model->get_by(['alias' => $in_alias, 'centre_id' => $centre->id, 'status' => 'publish']);

            if (!$sub_page)
                show_404('Sub page not found');

            $this->data['sub_page'] = $sub_page;
        } else {
            $this->data['sub_page'] = [];
        }

        //title
        $this->data['title'] = "Research Programmes";

        //render view
        $this->load->view('centres/header', $this->data);
        $this->load->view('centres/pages/programmes');
        $this->load->view('centres/footer');
    }

    //services
    function services($c_alias, $alias, $in_alias = null)
    {
        //centre
        $centre = $this->centre_model->get_by(['alias' => $c_alias, 'status' => 'publish']);

        if (!$centre)
            show_404('Centre not found');

        $this->data['centre'] = $centre;

        //page
        $page = $this->page_model->get_by(['alias' => $alias, 'centre_id' => $centre->id, 'status' => 'publish']);

        if (!$page)
            show_404('Page not found');

        $this->data['page'] = $page;

        //check sub page  
        if ($in_alias != null) {
            //page
            $sub_page = $this->page_model->get_by(['alias' => $in_alias, 'centre_id' => $centre->id, 'status' => 'publish']);

            if (!$sub_page)
                show_404('Sub page not found');

            $this->data['sub_page'] = $sub_page;
        } else {
            $this->data['sub_page'] = [];
        }

        //title
        $this->data['title'] = "Products and Services";

        //render view
        $this->load->view('centres/header', $this->data);
        $this->load->view('centres/pages/services');
        $this->load->view('centres/footer');
    }

    //technologies
    function technologies($c_alias, $alias, $in_alias = null)
    {
        //centre
        $centre = $this->centre_model->get_by(['alias' => $c_alias, 'status' => 'publish']);

        if (!$centre)
            show_404('Centre not found');

        $this->data['centre'] = $centre;

        //page
        $page = $this->page_model->get_by(['alias' => $alias, 'centre_id' => $centre->id, 'status' => 'publish']);

        if (!$page)
            show_404('Page not found');

        $this->data['page'] = $page;

        //check sub page  
        if ($in_alias != null) {
            //page
            $sub_page = $this->page_model->get_by(['alias' => $in_alias, 'centre_id' => $centre->id, 'status' => 'publish']);

            if (!$sub_page)
                show_404('Sub page not found');

            $this->data['sub_page'] = $sub_page;
        } else {
            $this->data['sub_page'] = [];
        }

        //title
        $this->data['title'] = "Technologies";

        //render view
        $this->load->view('centres/header', $this->data);
        $this->load->view('centres/pages/technologies');
        $this->load->view('centres/footer');
    }

    //contacts
    function contacts($alias)
    {
        $this->data['title'] = 'Contact Us';

        //centre
        $centre = $this->centre_model->get_by(['alias' => $alias, 'status' => 'publish']);

        if (!$centre)
            show_404('Centre not found');

        $this->data['centre'] = $centre;

        //form validation
        $this->form_validation->set_rules("full_name", "Full Name", "required|trim", ['required' => 'Full name is required']);
        $this->form_validation->set_rules("email", "Email", "required|valid_email", ['required' => 'Email address is required', 'valid_email' => 'Please provide valid email address']);
        $this->form_validation->set_rules("telephone", "Telephone", "required|trim", ['required' => 'Telephone is required']);
        $this->form_validation->set_rules("subject", "Subject", "required|trim", ['required' => 'Subject is required']);
        $this->form_validation->set_rules("Message", "Message", "required|trim", ['required' => 'Message is required']);
        //$this->form_validation->set_rules("g-recaptcha-response", "Google Captcha", "callback_valid_captcha");

        //successful validation
        if ($this->form_validation->run() === TRUE) {
            //            $data = [
            //                'first_name' => $this->input->post('first_name'),
            //                'last_name' => $this->input->post('last_name'),
            //                'email' => $this->input->post('email'),
            //                'organization' => $this->input->post('organization'),
            //                'created_at' => date('Y-m-d H:i:s')
            //            ];
            //
            //            if ($this->mail_model->insert($data))
            //                $this->session->set_flashdata('message', display_message('Successful joined our mailing list'));
            //            else
            //                $this->session->set_flashdata('message', display_message('Failed to join our mailing list', 'danger'));

            $this->session->set_flashdata('message', display_message('Successful contacted us, will be back to you on this'));
            redirect(uri_string());
        }

        //populate data

        //render view
        $this->load->view('centres/header', $this->data);
        $this->load->view('centres/pages/contacts');
        $this->load->view('centres/footer');
    }


    // check phone validity
    function valid_phone($str)
    {
        if ($str != "") {
            $str = str_replace(' ', '', trim($str));
            if (preg_match("/^[0-9]{10}$/", $str)) {
                return TRUE;
            } else {
                $this->form_validation->set_message('valid_phone', 'Phone number must contain 10 digit eg:0717705746');
                return FALSE;
            }
        } else {
            return TRUE;
        }
    }

    //validate captcha
    function valid_captcha($str)
    {
        if ($str) {
            $recaptchaResponse = trim($str);
            $userIp = $this->input->ip_address();
            $secret = $this->config->item('google_secret');
            $url = "https://www.google.com/recaptcha/api/siteverify?secret=" . $secret . "&response=" . $recaptchaResponse . "&remoteip=" . $userIp;

            //curl
            $ch = curl_init();
            curl_setopt($ch, CURLOPT_URL, $url);
            curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
            $output = curl_exec($ch);
            curl_close($ch);
            $status = json_decode($output, true);

            if ($status['success']) {
                return TRUE;
            } else {
                $this->form_validation->set_message('valid_captcha', 'Sorry, Google Recaptcha unsuccessful.');
                return FALSE;
            }
        } else {
            $this->form_validation->set_message('valid_captcha', 'Google Recaptcha required.');
            return FALSE;
        }
    }
}
