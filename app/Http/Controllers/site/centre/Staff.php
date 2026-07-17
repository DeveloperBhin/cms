<?php

/**
 * Created by PhpStorm.
 * User: administrator
 * Date: 17/12/2019
 * Time: 07:06
 */

class Staff extends CI_Controller
{
    private $data;

    public function __construct()
    {
        parent::__construct();
    }

    //staffs lists
    function index($alias)
    {
        //centre
        $centre = $this->centre_model->get_by(['alias' => $alias, 'status' => 'publish']);

        if (!$centre)
            show_404('Centre not found');

        $this->data['centre'] = $centre;

        //title
        $this->data['title'] = 'TARI Management';

        //rank 2
        $staffs = $this->staff_model->get_many_by(['centre_id' => $centre->id]);
        $this->data['staffs'] = $staffs;

        //render view
        $this->load->view('centres/header', $this->data);
        $this->load->view('centres/staffs/lists');
        $this->load->view('centres/footer');
    }

    //staffs profile
    function profile($c_alias, $alias)
    {
        //event
        $staff = $this->staff_model->get_by(['alias' => $alias]);

        if (!$staff)
            show_error('Staff not found');

        $this->data['staff'] = $staff;

        //title
        $this->data['title'] = $staff->name;

        //centre
        $centre = $this->centre_model->get_by(['alias' => $c_alias, 'status' => 'publish']);
        $this->data['centre'] = $centre;

        //render view
        $this->load->view('centres/header', $this->data);
        $this->load->view('centres/staffs/profile');
        $this->load->view('centres/footer');
    }
}
