<?php include('header.php'); ?>

<?php 
    

    if(!empty($_POST)){

        $id = $_POST['post_id'];

        if(empty($_POST['Text'])){

            header("Location: single-post.php?post_id=$id&error=Comment content is required");
	        exit();
        }
        else if(empty($_POST['Author'])){

            header("Location: single-post.php?post_id=$id&error=Author name is required");
	        exit();
        }
        else{

            $body = $_POST['Text'];
            $author = $_POST['Author'];
        
            // Writing comments into database
            $sqlToWritePost = "INSERT INTO comments(comments_Author,comments_Body,post_id) VALUES('$author','$body',$id)";
            writeToDb($connection, $sqlToWritePost);


        }
    }


    $myId = $_GET['post_id'];

    // Sql to join posts and comments
    $sqlForPostsAndComments = "
    SELECT *
    FROM posts
    INNER JOIN comments
    ON posts.id = comments.post_id
    WHERE
    posts.id = '$myId'
    ";

    function dd($data){
        echo "<pre>";
        var_dump($data);
        echo "</pre>";
    }

    // Get Data from database
    $postsAndCommentsFromDb = getDataFromDb($connection,$sqlForPostsAndComments);

?>

            
 

<div class="col-sm-8 blog-main">

    <div class="blog-post">
        <h2 class="blog-post-title"> <?php echo $postsAndCommentsFromDb[0]['Title']; ?> </h2>
        <p class="blog-post-meta"> <?php echo $postsAndCommentsFromDb[0]['Created_at']; ?>  by <a href="#"> <?php echo $postsAndCommentsFromDb[0]['Author']; ?> </a></p>

        <p> <?php echo $postsAndCommentsFromDb[0]['Body']; ?> </p>

    </div><!-- /.blog-post -->


    <button class="btn btn-default">Hide Comments</button>

    <?php include('comments.php'); ?>


    <form style="display:flex; flex-direction:column;" action="" method="POST">

        <?php if (isset($_GET['error'])) { ?>
            <p class="error"><?php echo $_GET['error']; ?></p>
        <?php } ?>

        <input type="text" name="post_id" id="" hidden value="<?php echo $_GET['post_id'] ?>">

        <label for="Authir">Author:</label>
        <input type="text" name="Author" id="">
        <label for="Text">Comment Text</label>
        <textarea name="Text" id="" cols="30" rows="10"></textarea>
        <button type="submit">Post a comment</button>

    </form>
</div>

<script>

    document.querySelector('.btn-default').addEventListener("click",event=>{


        var comDiv = document.querySelector('.comments');
        comDiv.classList.toggle("hideComments");
        let comBtn = document.querySelector('.btn-default');
        //.innerText = "Show Comments";
        if(comBtn.innerText === "Show Comments"){
            comBtn.innerText = "Hide Comments";
        }
        else{
            comBtn.innerText = "Show Comments";
        }

    })


    

</script>

<?php include('sidebar.php'); ?>
<?php include('footer.php'); ?>