<div id="Header">

    <div  >
        <div id="Menu">  
            <div class="container">
                <nav class="navbar navbar-expand-lg navbar-dark ">
                    <a class="navbar-brand" href="index.php">Home</a>
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>

                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <ul class="navbar-nav mr-auto">

                            <?php
                            foreach ($fn->newsType AS $key => $value) {
                                if ($key != 0) {
                                    ?>
                                    <li class="nav-item dropdown">
                                        <a class="nav-link  "  href="index.php?t=<?= $key ?>">
                                            <?= $value ?>
                                        </a>
                                    </li> 
                                    <?php
                                }
                            }
                            ?>



                            <li class="pull-right">
                                <a class="nav-link" href="master/">เข้าสู่ระบบ</a>
                            </li>
                        </ul> 
                    </div>
                </nav>
            </div>
        </div>
    </div>
    <div class="clear"></div>

</div>