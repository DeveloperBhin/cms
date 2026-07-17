<?php

/**
 * Created by PhpStorm.
 * User: administrator
 * Date: 24/12/2019
 * Time: 15:27
 */

class Galleries extends CI_Controller
{
    private $data;

    public function __construct()
    {
        parent::__construct();
    }

    function lists($alias)
    {
        $this->data['title'] = 'Photo Galleries';

        //centre
        $centre = $this->centre_model->get_by(['alias' => $alias, 'status' => 'publish']);

        if (!$centre)
            show_404('Centre not found');

        $this->data['centre'] = $centre;

        //pagination
        $config = array(
            'base_url' => $this->config->base_url($centre->alias . "/galleries/"),
            'total_rows' => $this->gallery_model->count_by(['centre_id' =>  $centre->id, 'status' => 'publish']),
            'uri_segment' => 3,
        );

        $this->pagination->initialize($config);
        $page = ($this->uri->segment(3)) ? $this->uri->segment(3) : 0;

        //galleries
        $galleries = $this->gallery_model->order_by('created_at', 'DESC')->limit($this->pagination->per_page, $page)->get_many_by(['centre_id' => $centre->id, 'status' => 'publish']);
        $this->data['galleries'] = $galleries;

        //links
        $this->data["links"] = $this->pagination->create_links();

        //render view
        $this->load->view('centres/header', $this->data);
        $this->load->view('centres/galleries/index');
        $this->load->view('centres/footer');
    }

    //slider
    function slider($c_alias, $id)
    {
        $this->data['title'] = 'Photo Galleries';

        //event
        $gallery = $this->gallery_model->get_by(['id' => $id]);

        if (!$gallery)
            show_error('Gallery not found');

        $this->data['gallery'] = $gallery;

        //centre
        $centre = $this->centre_model->get_by(['alias' => $c_alias, 'status' => 'publish']);
        $this->data['centre'] = $centre;

        //attachments
        $attachments = $this->attachment_model->get_many_by(['photo_id' => $id]);
        $this->data['attachments'] = $attachments;

        //render view
        $this->load->view('centres/header', $this->data);
        $this->load->view('centres/galleries/slider');
        $this->load->view('centres/footer');
    }
}
