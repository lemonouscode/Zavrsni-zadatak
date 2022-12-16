<?php 


    $postsAndCommentsHere = getDataFromDb($connection,$sqlForPostsAndComments);

    // if(isset($_POST)){
    //     var_dump($_POST);
    // }

    

        // var_dump($postsAndCommentsFromDb);

?>

<div class="comments">

        <h3>Comments:</h3>

        <?php foreach($postsAndCommentsHere as $currentComment) {?>
         <div class="cWrapper">
            <div class="leftSide">
                <ul>
                    <li> <?php echo $currentComment['comments_Author'] ?>  </li>
                    <li> <?php echo $currentComment['comments_Body'] ?>  </li>
                    
                    
                </ul>
            </div>
            
            <form class="deleteComment" action="" method="POST">
                <input type="text" name="comment_id_from_form" id="" hidden value="<?php echo $currentComment['id']; ?>" >
               <button type="submit">Delete This Comment</button>   
            </form>
         
        </div>
         <hr>
        <?php }  ?>
    </div>