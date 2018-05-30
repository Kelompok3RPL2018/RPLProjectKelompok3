<!DOCTYPE html>
<html lang="en">

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Admin- Home</title>
    <link href="https://fonts.googleapis.com/css?family=Lobster" rel="stylesheet">
    <link rel="stylesheet" href="<?php echo base_url();?>/bootstrap-4.1.0-dist/css/bootstrap.min.css">
    <link href="<?php echo base_url();?>/css/Login.css" rel="stylesheet">
    <link href="<?php echo base_url();?>/css/dashboard.css" rel="stylesheet">

</head>

<body class="bg-dark">
    <nav class="navbar navbar-expand-lg navbar-dark fixed-top">
        <a class="navbar-brand" href="#">MUSIRE</a>
            <ul class="navbar-nav mr-auto">
                <li class="nav-item active"><a class="nav-link pointer-cursor" href="#">Home</a></li>
                <li class="nav-item"><a class="nav-link pointer-cursor" href="<?php echo site_url('AddInstrument')?>">Add Instrument</a></li>
                <li class="nav-item"><a class="nav-link pointer-cursor" href="<?php echo site_url('Admin_Add')?>">Add New Admin</a></li>
            </ul>
            <ul class="navbar-nav">
                <li class="nav-item"><a class="btn btn-outline-danger" href="<?php echo site_url('Admin_Logout')?>">Logout</a></li>
                <!-- <li class="nav-item"><a class="btn btn-outline-primary" href="echo site_url('User_NewAccount')">Register</a></li> -->
            </ul>
    </nav>