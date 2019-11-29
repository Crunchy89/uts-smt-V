<?php

class Excel_export_model extends CI_Model
{

    function fetch_data()
    {

        $this->db->order_by("id_pengguna", "DESC");

        $query = $this->db->get("pengguna");

        return $query->result();
    }
}
