<?php
    echo "Hello ". (isset($_GET['name']) ? $_GET['name'] : "unknown") . ", how are you?";
?>