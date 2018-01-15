<?php

class functionx extends DATABASE {

    public $newsType = array(
        "0" => "ทั้งหมด",
        "1" => "ดินดี ผลผลิตดี",
        "2" => "น้ำดี ปลาก็ดี",
        "3" => "พอเพียง พอดี",
        "4" => "ผักปลอดถัย อาหารดี"
    );
    public $thai_day_arr = array("อาทิตย์", "จันทร์", "อังคาร", "พุธ", "พฤหัสบดี", "ศุกร์", "เสาร์");
    public $thai_month_arr_short = array(
        "0" => "",
        "1" => "ม.ค.",
        "2" => "ก.พ.",
        "3" => "มี.ค.",
        "4" => "เม.ย.",
        "5" => "พ.ค.",
        "6" => "มิ.ย.",
        "7" => "ก.ค.",
        "8" => "ส.ค.",
        "9" => "ก.ย.",
        "10" => "ต.ค.",
        "11" => "พ.ย.",
        "12" => "ธ.ค."
    );

    public function __construct() {
        parent::__construct();
    }

    public function thai_date_shortx($time) {   // 19  ธ.ค. 2556
        $thai_date_return = date("d", strtotime($time));
        $thai_date_return .= " " . $this->thai_month_arr_short[date("n", strtotime($time))];
        $thai_date_return .= " " . (date("Y", strtotime($time)) + 543);
        return $thai_date_return;
    }

    public function getUserAll() {

        $query = $this->mysqli->query("SELECT * FROM user ORDER BY user_id DESC");
        return $query;
    }

    public function getUserById($id) {

        $query = $this->mysqli->query("SELECT * FROM user WHERE user_id='$id' ORDER BY user_id DESC");
        return $query->fetch_object();
    }

    public function getNewsFormid($news_id) {

        $query = $this->mysqli->query("SELECT * FROM news WHERE news_id='$news_id' ORDER BY news_id DESC LIMIT 0,30");
        return $query->fetch_object();
    }

    public function getPublicNews($page, $limit) {
        $start = $page * $limit;
        $res = $this->mysqli->query($sql = "SELECT * FROM publicnews ORDER BY news_id DESC limit $start,$limit");

        return $res;
    }

    public function countAllNews() {
        $count = $this->mysqli->query("SELECT count(*) as count FROM news ");
        $count = $count->fetch_object();
        return $count->count;
    }

    public function countStudentYear() {
        $count = $this->mysqli->query("SELECT count(*) as count FROM student_year ");
        $count = $count->fetch_object();
        return $count->count;
    }

    public function countAllPublicNews() {
        $count = $this->mysqli->query("SELECT count(*) as count FROM publicnews ");
        $count = $count->fetch_object();
        return $count->count;
    }

    public function getPublicNewsFormId($id) {
        $data = $this->mysqli->query("SELECT * FROM publicnews WHERE news_id='$id'");
        return $data->fetch_object();
    }

    public function getPublicNewsFileFormNewsId($id) {
        return $this->mysqli->query("SELECT * FROM publicnews_file WHERE news_id='$id'");
    }

    public function getCountPublicNewsfile($newsid) {
        $newsfile = $this->query("SELECT count(*) as count FROM publicnews_file WHERE news_id='$newsid'");
        $news = $newsfile->fetch_object();
        return $news->count;
    }

    public function getPublicNewsfile($newsid) {
        return $this->query("SELECT count(*) as count FROM publicnews_file WHERE news_id='$newsid'");
    }

    public function getNews($page, $limit,$type = '') {
        $start = $page * $limit;
        if(!empty($type)) $type = "WHERE news_type='$type'";
        return $this->mysqli->query("SELECT * FROM news $type ORDER BY news_id DESC LIMIT $start,$limit");
    }

    public function getListNews($news_id = NULL) {
        if (empty($id)) {
            return $this->mysqli->query("SELECT * FROM news ORDER BY news_id DESC LIMIT 0,30");
        } else {
            $query = $this->mysqli->query("SELECT * FROM news WHERE news_id='$news_id' ORDER BY news_id DESC LIMIT 0,30");
            return $query->fetch_object();
        }
    }

    public function getNewsGallery($newid) {
        return $this->mysqli->query("SELECT * FROM news_image_gallery WHERE news_id='$newid' ORDER BY nig_id DESC ");
    }

    public function getLastNewsID() {
        $query = $this->mysqli->query("SELECT * FROM news ORDER BY news_id DESC LIMIT 0,1");
        $res = $query->fetch_object();
        return $res->news_id;
    }

    public function getLastPublicNewsID() {
        $query = $this->mysqli->query("SELECT * FROM publicnews ORDER BY news_id DESC LIMIT 0,1");
        $res = $query->fetch_object();
        return $res->news_id;
    }

    function reArrayFiles(&$file_post) {

        $file_ary = array();
        $file_count = count($file_post['name']);
        $file_keys = array_keys($file_post);

        for ($i = 0; $i < $file_count; $i++) {
            foreach ($file_keys as $key) {
                $file_ary[$i][$key] = $file_post[$key][$i];
            }
        }

        return $file_ary;
    }

    public function showThaiDate($date) {
        echo (date('d/m/', strtotime($date))) . (date('Y', strtotime($date)) + 543);
    }

    public function getSlide() {
        return $this->mysqli->query("SELECT  * FROM slide ORDER BY img_id DESC");
    }

    public function getFirstSlide() {
        $rs = $this->mysqli->query("SELECT  * FROM slide ORDER BY img_id DESC LIMIT 0,1");
        return $rs->fetch_object();
    }

    public function updateNewsViews($id) {
        $news = $this->getNewsFormid($id);
        $data = array(
            "news_view" => ($news->news_view + 1)
        );
        $this->update("news", $data, " news_id=$id");
    }

    public function updatePublicNewsViews($id) {
        $news = $this->getPublicNewsFormId($id);
        $data = array(
            "view" => ($news->view + 1)
        );
        $this->update("publicnews", $data, " news_id=$id");
    }

    public function getStudentYear($id = NULL, $page = NULL, $limit = NULL) {
        if (!empty($id)) {
            $sql = "SELECT * FROM student_year WHERE sy_id='$id'";
            $res = $this->mysqli->query($sql);
            return $res->fetch_object();
        } else {
            $start = $page * $limit;
            $sql = "SELECT * FROM student_year ORDER BY sy_id DESC  LIMIT $start,$limit";
            return $this->mysqli->query($sql);
        }
    }

    public function getStudent($id = NULL, $idx = NULL) {
        if (!empty($id)) {
            $sql = "SELECT * FROM student WHERE student_id='$id'";
            $res = $this->mysqli->query($sql);
            return $res->fetch_object();
        } else if (!empty($idx)) {
            $sql = "SELECT * FROM student WHERE sy_id='$idx' ORDER BY student_code ASC  ";
            return $this->mysqli->query($sql);
        } else {
            return array();
        }
    }

    public function getTeacher($id = null) {
        if (!empty($id)) {
            $sql = "SELECT * FROM teacher WHERE teacher_id='$id'";
            $res = $this->mysqli->query($sql);
            return $res->fetch_object();
        } else {
            $sql = "SELECT * FROM teacher ORDER BY order_num ASC";
            return $this->mysqli->query($sql);
        }
    }

    public function countStudent($id) {
        $count = $this->mysqli->query("SELECT count(*) as count FROM student WHERE sy_id='$id'");
        $count = $count->fetch_object();
        return $count->count;
    }

    public function getFileDownload($id = NULL, $page = NULL, $limit = NULL) {
        if (!empty($id)) {
            $sql = "SELECT * FROM file_download WHERE file_id='$id'";
            $res = $this->mysqli->query($sql);
            return $res->fetch_object();
        } else {
            $start = $page * $limit;
            $sql = "SELECT * FROM file_download ORDER BY file_id DESC  LIMIT $start,$limit";
            return $this->mysqli->query($sql);
        }
    }

    public function countFileDownload() {
        $count = $this->mysqli->query("SELECT count(*) as count FROM file_download");
        $count = $count->fetch_object();
        return $count->count;
    }

    public function updatepublicNewsView($news_id, $view) {
        $view = ($view + 1);
        $sql = "UPDATE publicnews SET view='$view' WHERE news_id='{$news_id}'";
        $this->mysqli->query($sql);
    }

    public function updateGalleryView($gallery_id, $view) {
        $view = ($view + 1);
        $sql = "UPDATE news SET news_view='$view' WHERE news_id='{$gallery_id}'";
        $this->mysqli->query($sql);
    }

    public function getResearch($research_id = null, $page = 0, $limit = 25, $text = NULL) {
        if (!empty($research_id)) {
            $sql = "SELECT * FROM research WHERE research_id='$research_id'";
            $res = $this->mysqli->query($sql);
            return $res->fetch_object();
        } else {
            $start = $page * $limit;
            $w = "";
            if (!empty($text)) {
                $w = " WHERE research_name LIKE '%$text%'";
            }
            $sql = "SELECT * FROM research $w ORDER BY research_id DESC  LIMIT $start,$limit";
            return $this->mysqli->query($sql);
        }
    }

    public function countResearch($text = NULL) {
        $w = "";
        if (!empty($text)) {
            $w = " WHERE research_name LIKE '%$text%'";
        }
        $count = $this->mysqli->query("SELECT count(*) as count FROM research $w");
        $count = $count->fetch_object();
        return $count->count;
    }

}
