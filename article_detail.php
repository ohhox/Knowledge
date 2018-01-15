<?php
header('Content-Type: text/html; charset=utf-8');
include '_conn.php';
include 'functionx.php';
$fn = new functionx();
$news = $fn->getNewsFormid($_GET['id']);
$news_file = $fn->getNewsGallery($_GET['id']);
$gallery = $fn->getNews(0, 5); 
?>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="">

        <title>สาขาวิชาหลักสตรและการสอน</title>

        <!-- Bootstrap core CSS -->
        <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <link href="font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Pridi:300" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Kanit" rel="stylesheet">
        <link href="webfontkit/stylesheet.css" rel="stylesheet">
        <link href="css/css.css" rel="stylesheet">
        <link href="css/mobile.css" rel="stylesheet">
        <link href="node_modules/lightgallery.js/dist/css/lightgallery.min.css" rel="stylesheet">
        <!-- Custom styles for this template -->
        <link href="css/full-width-pics.css" rel="stylesheet">



    </head>

    <body>
        <?php include './_head_1.php'; ?>
        <div class="container " style=" background: #f2ecfb;;"> 
            <div class="col-md-12 Inview" style="padding: 0px;">                

                <div  id="MainContent">
                    <div class="row">
                        <div style="width: 100%;">
                            <img src="gallery/<?= $news->news_images ?>" style="width: 100%;">
                        </div>
                        <div class="NewsShowRa">
                            <div class="newsDetailTitle"><?= $news->news_name ?></div>
                            <div class="NewsTools">

                                <i class="fa fa-podcast"></i> ประกาศเมื่อ : <?= $fn->thai_date_shortx($news->news_date) ?>    <i class="fa fa-angle-right"></i> 
                                อ่าน   <?= $news->news_view ?> ครั้ง  

                            </div>
                            <div class="row">
                                <div class="col-md-12">
                                    <article>
                                        <?= $news->news_detail ?> 
                                    </article>
                                </div>
                                <div class="col-md-12" style="border-top: 2px #8e23cc  solid;margin-top: 30px;padding-top: 20px;">
                                    <div class="fileTitle"> บทความอื่นๆที่น่าสนใจ</div>
                                    <div  >
                                        <div  >
                                            <?php
                                            $i = 1;
                                            while ($value = $gallery->fetch_assoc()) {
                                                ?>


                                            <a href="article_detail.php?id=<?= $value['news_id'] ?>" style="text-decoration: none;" >
                                                    <div style="border-bottom: 1px #ccc solid;padding: 5px;color: #002752;" >
                                                        <?=  $i++. ') ' . $value['news_name'] .'... อ่านต่อ'; ?>
                                                    </div>
                                                </a>

                                            <?php } ?>

                                        </div>

                                    </div>
                                </div>
                            </div>

                        </div>
                        <div>

                        </div>
                    </div>
                </div>

                <div class="clear"></div>


            </div>
        </div>
        <!-- Content section -->
        <?php include '_foot.php'; ?>
        <script src="node_modules/lightgallery.js/dist/js/lightgallery.min.js" ></script>
        <script>
            lightGallery(document.getElementById('lightgallery'), {selector: '.item'});
        </script>
    </body>

</html>
