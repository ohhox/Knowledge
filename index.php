<?php
header('Content-Type: text/html; charset=utf-8');
include '_conn.php';
include 'functionx.php';
$fn = new functionx();
$type = isset($_GET['t']) ? $_GET['t'] : 0;
if($type!= 0){
$gallery = $fn->getNews(0, 10,$type);
}else{$gallery = $fn->getNews(0, 10);}
$slide = $fn->getFirstSlide();

?>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="">

        <title>ระบบเผยแพร่องค์ความรู้การยกระดับผลิตภัณฑ์ไข่เค็มสู่ตลาดใหม่</title>

        <!-- Bootstrap core CSS -->
        <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <link href="font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Pridi:300" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Kanit" rel="stylesheet">
        <link href="webfontkit/stylesheet.css" rel="stylesheet">
        <link href="css/css.css" rel="stylesheet">
        <link href="css/mobile.css" rel="stylesheet">

        <!-- Custom styles for this template -->
        <link href="css/full-width-pics.css" rel="stylesheet">



    </head>

    <body>
        <?php include './_head_1.php'; ?>
        <div class="container " style=" background: #f2ecfb;;">
            <div >
                <img style="width: 100%;" src="gallery/<?= $slide->file ?>" alt="Responsive image">
            </div>

            <div class="col-md-12 previewNav" style="padding: 0px;">                

                <div  id="MainContent">
                    <div class="row">

                        <div >
                            <div class="NewsTitle">
                                <div class="NewsTitleBox"> <span class="fa fa-bookmark"> </span> บทความ  <i class="fa fa-angle-right"></i> <?=$fn->newsType[$type]?> </div>
                            </div>
                            <div id="evnt">
                                <div class="row" >
                                    <?php
                                    while ($value = $gallery->fetch_assoc()) {
                                        ?>
                                        <div class="col-md-6">
                                            <div class=" eventImage " >

                                                <a href="article_detail.php?id=<?= $value['news_id'] ?>" class="row">

                                                    <div class="image col-4 col-md-4">
                                                        <?php
                                                        if (!empty($value['news_images'])) {
                                                            ?>
                                                            <img src="gallery/thm/<?= $value['news_images'] ?>">
                                                            <?php
                                                        } else {
                                                            ?>
                                                            <img src="img/breaking down journal.jpg">
                                                            <?php
                                                        }
                                                        ?>
                                                    </div>
                                                    <div class="event_title col-8 col-md-8">
                                                        <small> <?= $fn->thai_date_shortx($value['news_date']) ?>    <i class="fa fa-angle-right"></i>
                                                        อ่าน   <?= $value['news_view']   ?> ครั้ง   </small> <br/>
                                                        <?= $value['news_name'] ?>
                                                    </div>
                                                </a>
                                            </div>
                                        </div>
                                        <?php
                                    }
                                    ?>


                                </div>
                                <!--                                <a class="pull-right viewAll" href="gallery.php">ดูทั้งหมด</a>-->
                            </div>
                        </div>
                    </div>





                </div>

                <div class="clear"></div>


            </div>
        </div>
        <!-- Content section -->
        <?php include '_foot.php'; ?>

    </body>

</html>
