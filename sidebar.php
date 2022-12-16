<?php 
    $sqlForSidebar = "SELECT id,Title,Body FROM posts ORDER BY created_at DESC LIMIT 5";
    $postsFromDbForSidebar = getDataFromDb($connection,$sqlForSidebar);

    // var_dump($postsFromDbForSidebar);
?>

<aside class="col-sm-3 ml-sm-auto blog-sidebar">

    <?php foreach($postsFromDbForSidebar as $current) { ?>

        <div class="sidebar-module sidebar-module-inset">
            <h4> <a href="/single-post.php?post_id=<?php echo $current['id']; ?> "> <?php echo $current['Title']; ?> </a>  </h4>
            <p class="line-clamp-2"> <?php echo $current['Body'] ?> </p>
        </div>
            
    <?php } ?>

</aside><!-- /.blog-sidebar -->