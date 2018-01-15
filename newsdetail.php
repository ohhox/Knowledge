<?php
header('Content-Type: text/html; charset=utf-8');
include '_conn.php';
include 'functionx.php';
$fn = new functionx();

$news = $fn->getPublicNewsFormId($_GET['id']);
if (empty($news)) {
    
}
$news_file = $fn->getPublicNewsFileFormNewsId($_GET['id']);

//Update View
$fn->updatepublicNewsView($_GET['id'], $news->view);
?>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="">

        <title> <?= $news->news_title ?> :สาขาวิชาหลักสตรและการสอน</title>

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
            <div class="col-md-12 Inview" style="padding: 0px;">                
                <?php
                include './_Nav.php';
                ?>
                <div  id="MainContent">
                    <div class="row">

                        <div class="NewsShowRa">
                            <div class="newsDetailTitle"> <?= $news->news_title ?></div>
                            <div class="NewsTools">

                                <i class="fa fa-podcast"></i> ประกาศเมื่อ : <?= $fn->thai_date_shortx($news->news_date); ?>    
                                <i class="fa fa-angle-right"></i> อ่าน   <?= $news->view ?> ครั้ง  

                            </div>
                            <div class="row">
                                <div class="col-md-8">
                                    <article>
<?= $news->news_detail; ?> 
                                    </article>
                                </div>
                                <div class="col-md-4">
                                    <div class="fileTitle"> เอกสารที่เกี่ยวข้อง</div>
                                    <div class="filepadding">
                                        <ul>
                                            <?php
                                            if ($news_file->num_rows > 0) {
                                                while ($row = $news_file->fetch_object()) {
                                                    ?>
                                                    <li><a href="file/<?= $row->filename_path ?>" target="_BLANK"> <i class="fa  fa-caret-right"></i> <?= $row->filename ?></a></li>

                                                    <?php
                                                }
                                            } else {
                                                
                                            }
                                            ?>

                                        </ul>

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

    </body>

</html>
