<?php

/**
 * Created by PhpStorm.
 * User: administrator
 * Date: 18/12/2019
 * Time: 00:07
 */

class Publications extends CI_Controller
{
    private $data;

    public function __construct()
    {
        parent::__construct();
    }

    //lists of publications
    function lists($ct_alias, $alias)
    {
        //centre
        $centre = $this->centre_model->get_by(['alias' => $ct_alias, 'status' => 'publish']);

        if (!$centre)
            show_404('Centre not found');

        $this->data['centre'] = $centre;

        //category
        $category = $this->category_model->get_by(['alias' => $alias]);

        if (!$category)
            show_404('Category not found');

        $this->data['category'] = $category;

        //title
        $this->data['title'] = $category->name;

        if (isset($_POST['search'])) {
            $keyword = $this->input->post('keyword');

            //publication
            $publications = $this->publication_model->search_all($category->id, $keyword);

            if ($publications) {
                $this->data['publications'] = $publications;

                foreach ($this->data['publications'] as $k => $v) {
                    $this->data['publications'][$k]->author = $this->user_model->get_by(['id' => $v->created_by]);
                }
            } else {
                $this->data['publications'] = [];
            }
        } else {
            //pagination
            $config = array(
                'base_url' => $this->config->base_url("publications/" . $ct_alias . '/' . $alias . "/"),
                'total_rows' => $this->publication_model->count_by(['category_id' => $category->id, 'centre_id' => $centre->id, 'status' => 'publish']),
                'uri_segment' => 4,
            );

            $this->pagination->initialize($config);
            $page = ($this->uri->segment(4)) ? $this->uri->segment(4) : 0;

            //publications
            $publications = $this->publication_model->order_by('created_at', 'DESC')->limit($this->pagination->per_page, $page)->get_many_by(['category_id' => $category->id, 'centre_id' => $centre->id, 'status' => 'publish']);
            $this->data['publications'] = $publications;

            //links
            $this->data["links"] = $this->pagination->create_links();

            foreach ($this->data['publications'] as $k => $v) {
                $this->data['publications'][$k]->author = $this->user_model->get_by(['id' => $v->created_by]);
            }
        }

        //render view
        $this->load->view('centres/header', $this->data);
        $this->load->view('centres/publications/lists');
        $this->load->view('centres/footer');
    }

    //publication details
    function details($ct_alias, $alias)
    {
        //publication
        $publication = $this->publication_model->get_by(['alias' => $alias]);

        if (!$publication)
            show_404('Publication not found');

        $this->data['publication'] = $publication;

        //title
        $this->data['title'] = $publication->title;

        //centre
        $centre = $this->centre_model->get_by(['alias' => $ct_alias, 'status' => 'publish']);
        $this->data['centre'] = $centre;

        //publication category
        $category = $this->category_model->get($publication->category_id);
        $this->data['category'] = $category;

        //get other projects from this category
        $publications = $this->publication_model->order_by('created_at', 'DESC')->limit(5)->get_many_by(['category_id' => $category->id, 'status' => 'publish', 'alias !=' => $alias]);
        $this->data['publications'] = $publications;

        //user
        $user = $this->user_model->get_by(['id' => $publication->created_by]);
        $this->data['author'] = $user;

        //render view
        $this->load->view('centres/header', $this->data);
        $this->load->view('centres/publications/details');
        $this->load->view('centres/footer');
    }
}
