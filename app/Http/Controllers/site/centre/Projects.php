<?php

/**
 * Created by PhpStorm.
 * User: administrator
 * Date: 17/12/2019
 * Time: 21:43
 */

class Projects extends CI_Controller
{
    private $data;

    public function __construct()
    {
        parent::__construct();
    }

    //index
    function lists($alias)
    {
        //centre
        $centre = $this->centre_model->get_by(['alias' => $alias, 'status' => 'publish']);

        if (!$centre)
            show_404('Centre not found');

        $this->data['centre'] = $centre;

        //title
        $this->data['title'] = "Research Projects";

        //pagination
        $config = array(
            'base_url' => $this->config->base_url($alias . '/projects/'),
            'total_rows' => $this->post_model->count_by(['flag' => 'projects', 'centre_id' => $centre->id, 'status' => 'publish']),
            'uri_segment' => 3,
        );

        $this->pagination->initialize($config);
        $page = ($this->uri->segment(3)) ? $this->uri->segment(3) : 0;

        //projects
        $projects = $this->post_model->order_by('created_at', 'DESC')->limit($this->pagination->per_page, $page)->get_many_by(['flag' => 'projects', 'centre_id' => $centre->id, 'status' => 'publish']);

        $this->data['projects'] = $projects;
        $this->data["links"] = $this->pagination->create_links();

        //render view
        $this->load->view('centres/header', $this->data);
        $this->load->view('centres/projects/lists');
        $this->load->view('centres/footer');
    }

    //project details
    function details($c_alias, $alias)
    {
        //project
        $project = $this->post_model->get_by(['alias' => $alias]);

        if (!$project)
            show_404('Project not found');

        $this->data['project'] = $project;

        //title
        $this->data['title'] = $project->title;

        //centre
        $centre = $this->centre_model->get_by(['alias' => $c_alias, 'status' => 'publish']);
        $this->data['centre'] = $centre;

        //get other projects from this category
        $projects = $this->post_model->order_by('created_at', 'DESC')->limit(5)->get_many_by(['flag' => 'projects', 'status' => 'publish', 'centre_id' => $centre->id]);
        $this->data['projects'] = $projects;

        //user
        $user = $this->user_model->get_by(['id' => $project->created_by]);
        $this->data['author'] = $user;

        //render view
        $this->load->view('centres/header', $this->data);
        $this->load->view('centres/projects/details');
        $this->load->view('centres/footer');
    }
}
