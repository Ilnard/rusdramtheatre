<?php
session_start();

function location() {
    header("Location:".$_SERVER['PHP_SELF']);
    exit();
}

function query($url) {
    $db = new mysqli('localhost', 'root', '', 'dramtheatre');
    $result = mysqli_query($db, $url);
    if (gettype($result) != 'boolean') {return $result;}
    else return false;
}

function auth($data) {
    $login = $data['login'];
    $password = $data['password'];

    $result = query("SELECT * FROM users WHERE login = '$login' AND password = '$password'");
    $result = mysqli_fetch_assoc($result);
    if (gettype($result) == 'Array') $_SESSION['message'] = "Неправильно введен логин или пароль";
    else $_SESSION['user'] = $result;
    location();
}

function reg($data) {
    $fullname = $data['fullname'];
    $login = $data['login'];
    $email = $data['email'];
    $password = $data['password'];
    $repassword = $data['repassword'];

    
    query("INSERT INTO users VALUES (NULL, '$fullname', '$login', '$email', '$password')");
    auth(['login' => $login, 'password' => $password]);
    location();
}

function contact($message) {
    $fullname = $_SESSION['user']['fullname'];
    $email = $_SESSION['user']['email'];
    query("INSERT INTO feedback VALUES (NULL, '$fullname', '$email', '$message')");
    echo "INSERT INTO feedback VALUES (NULL, '$fullname', '$email', '$message')";
    location();
}

if (isset($_GET['logout'])) {
    session_destroy();
    location();
}

if (isset($_POST['reg'])) reg($_POST);
if (isset($_POST['auth'])) auth($_POST);
if (isset($_POST['contact'])) contact($_POST['message']);
?>