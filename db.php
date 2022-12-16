<?php
    // ako su mysql username/password i ime baze na vasim racunarima drugaciji
    // obavezno ih ovde zamenite
    $servername = "127.0.0.1";
    $username = "root";
    $password = "";
    $dbname = "blog";

    try {
        $connection = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
        // set the PDO error mode to exception
        $connection->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    }
    catch(PDOException $e)
    {
        echo $e->getMessage();
    }


function getDataFromDb(object $connection, string $sql, bool $fetchAll = true): string | array {
       
        $statement = $connection->prepare($sql);
    

        $statement->execute();
    
        // Setting an Array type to associative
        $statement->setFetchMode(PDO::FETCH_ASSOC);
    
        // Returning results of query
        if($fetchAll === true){
            return $statement->fetchAll();
        }

        return $statement->fetch();
}


function writeToDb(object $connection, string $sql): void {
       
    $statement = $connection->prepare($sql);


    $statement->execute();

    // Setting an Array type to associative
    $statement->setFetchMode(PDO::FETCH_ASSOC);

}


?>