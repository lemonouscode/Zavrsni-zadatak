<div class="comments">

        <h3>Comments:</h3>

        <?php foreach($postsAndCommentsFromDb as $currentComment) {?>
        <ul>
        <li> <?php echo $currentComment['comments_Author'] ?>  </li>
            <li> <?php echo $currentComment['comments_Body'] ?>  </li>
            <hr>
        </ul>

        <?php }  ?>
    </div>