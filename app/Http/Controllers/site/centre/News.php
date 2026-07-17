<?php

/**
 * Created by PhpStorm.
 * User: administrator
 * Date: 18/12/2019
 * Time: 02:23
 */

class News extends CI_Controller
{
    private $data;

    public function __construct()
    {
        parent::__construct();
    }

    //news
    function lists($alias)
    {
        $this->data['title'] = "News";

        //centre
        $centre = $this->centre_model->get_by(['alias' => $alias, 'status' => 'publish']);

        if (!$centre)
            show_404('Centre not found');

        $this->data['centre'] = $centre;

        //search
        if (isset($_POST['search'])) {
            $keyword = $this->input->post('keyword');

            //news
            $news = $this->post_model->search_all($keyword, $centre->id);

            if ($news) {
                $this->data['news'] = $news;

                foreach ($this->data['news'] as $k => $v) {
                    $this->data['news'][$k]->author = $this->user_model->get_by(['id' => $v->created_by]);
                }
            } else {
                $this->data['news'] = [];
            }
        } else {
            //count many by
            $count_many_by = $this->db->where(['centre_id' => $centre->id, 'flag' => 'posts', 'status' => 'publish'])
                ->get('posts')->num_rows();

            //pagination
            $config = array(
                'base_url' => $this->config->base_url($centre->alias . "/news/"),
                'total_rows' => $count_many_by,
                'uri_segment' => 3,
            );

            $this->pagination->initialize($config);
            $page = ($this->uri->segment(3)) ? $this->uri->segment(3) : 0;

            //news
            $news = $this->db->where(['centre_id' => $centre->id, 'flag' => 'posts', 'status' => 'publish'])
                ->order_by('created_at', 'desc')
                ->limit($this->pagination->per_page, $page)
                ->get('posts')->result();

            $this->data['news'] = $news;
            $this->data["links"] = $this->pagination->create_links();

            foreach ($this->data['news'] as $k => $v) {
                $this->data['news'][$k]->author = $this->user_model->get_by(['id' => $v->created_by]);
            }
        }

        //render view
        $this->load->view('centres/header', $this->data);
        $this->load->view('centres/news/index');
        $this->load->view('centres/footer');
    }


    //post
    function details($c_alias, $alias)
    {
        //news post
        $post = $this->post_model->get_by(['alias' => $alias]);

        if (!$post)
            show_404('News post not found');

        $this->data['post'] = $post;

        //centre
        $centre = $this->centre_model->get_by(['alias' => $c_alias, 'status' => 'publish']);
        $this->data['centre'] = $centre;

        //category
        $category = $this->category_model->get_by(['id' => $post->category_id]);

        if (!$category)
            show_404('category not found');

        $this->data['category'] = $category;

        //title
        $this->data['title'] = $post->title;

        //user
        $user = $this->user_model->get_by(['id' => $post->created_by]);
        $this->data['author'] = $user;

        //render view
        $this->load->view('centres/header', $this->data);
        $this->load->view('centres/news/details');
        $this->load->view('centres/footer');
    }
}
