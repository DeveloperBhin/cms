<?php

/**
 * Created by PhpStorm.
 * User: administrator
 * Date: 24/12/2019
 * Time: 15:26
 */

class Events extends CI_Controller
{
    private $data;

    public function __construct()
    {
        parent::__construct();
    }

    //events
    function lists($alias)
    {
        //title
        $this->data['title'] = 'Events';

        //centre
        $centre = $this->centre_model->get_by(['alias' => $alias, 'status' => 'publish']);

        if (!$centre)
            show_404('Centre not found');

        $this->data['centre'] = $centre;

        if (isset($_POST['search'])) {
            $keyword = $this->input->post('keyword');

            //events
            $events = $this->post_model->search_all($keyword, $centre->id);

            if ($events) {
                $this->data['events'] = $events;

                foreach ($this->data['events'] as $k => $v) {
                    $this->data['events'][$k]->author = $this->user_model->get_by(['id' => $v->created_by]);
                }
            } else {
                $this->data['events'] = [];
            }
        } else {
            //count
            $count_many_by = $this->db->where(['centre_id' => $centre->id, 'flag' => 'events', 'status' => 'publish'])
                ->or_where('featured', 'yes')
                ->get('posts')->num_rows();

            //pagination
            $config = array(
                'base_url' => $this->config->base_url($centre->alias . "/events/"),
                'total_rows' => $count_many_by,
                'uri_segment' => 3,
            );

            $this->pagination->initialize($config);
            $page = ($this->uri->segment(3)) ? $this->uri->segment(3) : 0;

            //events
            $events = $this->db->where(['centre_id' => $centre->id, 'flag' => 'events', 'status' => 'publish'])
                ->or_where('featured', 'yes')
                ->order_by('created_at', 'desc')
                ->limit($this->pagination->per_page, $page)
                ->get('posts')->result();

            $this->data['events'] = $events;
            $this->data["links"] = $this->pagination->create_links();

            $this->data['events'] = $events;
            $this->data["links"] = $this->pagination->create_links();

            foreach ($this->data['events'] as $k => $v) {
                $this->data['events'][$k]->author = $this->user_model->get_by(['id' => $v->created_by]);
            }
        }

        //render view
        $this->load->view('centres/header', $this->data);
        $this->load->view('centres/events/index');
        $this->load->view('centres/footer');
    }

    //details
    function details($c_alias, $alias)
    {
        //event
        $event = $this->post_model->get_by(['alias' => $alias]);

        if (!$event)
            show_error('Event not found');

        $this->data['event'] = $event;

        //title
        $this->data['title'] = $event->title;

        //centre
        $centre = $this->centre_model->get_by(['alias' => $c_alias, 'status' => 'publish']);
        $this->data['centre'] = $centre;

        //user
        $user = $this->user_model->get_by(['id' => $event->created_by]);
        $this->data['author'] = $user;

        //render view
        $this->load->view('centres/header', $this->data);
        $this->load->view('centres/events/details');
        $this->load->view('centres/footer');
    }
}
