<?php include('header.php'); ?>

<?php 
    if(!empty($_POST)){
        
        
        if(empty($_POST['Title'])){
            header("Location: create-post.php?error=Title is required");
	        exit();
        }
        else if(empty($_POST['Body'])){
            header("Location: create-post.php?error=Post content is required");
	        exit();
        }
        else if(empty($_POST['Author'])){
            header("Location: create-post.php?error=Author is required");
	        exit();
        }
        else{

            $title = $_POST['Title'];
            $body = $_POST['Body'];
            $author = $_POST['Author'];
        
            $sqlToWritePost = "INSERT INTO posts(Title,Body,Author,Created_at) VALUES('$title','$body','$author',now() + 1)";
            writeToDb($connection, $sqlToWritePost);

        }


        

    }

?>

<form style="display:flex; flex-direction:column;" action="create-post.php" method="POST">
    
    <?php if (isset($_GET['error'])) { ?>
     	<p class="error"><?php echo $_GET['error']; ?></p>
    <?php } ?>

    <label for="Title">Title</label>
    <input type="text" name="Title" id="Title">
    <label for="Body">Post Content</label>
    <textarea name="Body" id="Body" cols="30" rows="10"></textarea>
    <label for="Author">Author</label>
    <input type="text" name="Author" id="Author">
    <input type="text" name="Created_at" id="" hidden value="<?php echo $datetime = date("Y-m-d H:i:s"); ?>">
    <button type="submit">Create Post</button>

</form>


<?php include('sidebar.php'); ?>
<?php include('footer.php'); ?>