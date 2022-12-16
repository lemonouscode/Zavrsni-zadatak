<?php include('header.php'); ?>



        <?php 
            $sqlForPosts = "SELECT * FROM posts ORDER BY created_at DESC";
            $postsFromDb = getDataFromDb($connection,$sqlForPosts);

            
        ?>

        <div class="col-sm-8 blog-main">

            <?php foreach($postsFromDb as $currentPost){ ?>


            <div class="blog-post">
                <h2 class="blog-post-title"><a href="single-post.php?post_id=<?php echo($currentPost['id']) ?>"> <?php echo $currentPost['Title']; ?> </a></h2>
                <p class="blog-post-meta"> <?php echo $currentPost['Created_at']; ?> by <a href="#"> <?php echo $currentPost['Author']; ?> </a></p>

                <p> <?php echo $currentPost['Body']; ?> </p>
            </div><!-- /.blog-post -->


            <nav class="blog-pagination">
                <a class="btn btn-outline-primary" href="#">Older</a>
                <a class="btn btn-outline-secondary disabled" href="#">Newer</a>
            </nav>


        <?php } ?>

        </div><!-- /.blog-main -->
        <?php include('sidebar.php'); ?>
        

    


<?php include('footer.php'); ?>