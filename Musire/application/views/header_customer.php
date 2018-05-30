<!DOCTYPE html>
<html lang="en">

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Shop Homepage</title>
    <link href="https://fonts.googleapis.com/css?family=Lobster" rel="stylesheet">
    <link rel="stylesheet" href="<?php echo base_url();?>bootstrap-4.1.0-dist/css/bootstrap.min.css">
    <link href="<?php echo base_url();?>css/Login.css" rel="stylesheet">
    <link href="<?php echo base_url();?>css/dashboard.css" rel="stylesheet">

</head>
<body class="bg-dark lobsfont">

<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top ">
      <div class="container">
        <a class="navbar-brand lobsfont" href="#">Musire</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
          <ul class="navbar-nav ml-auto">
            <!-- <li class="nav-item active">
              <a class="nav-link" href="#">Home
                <span class="sr-only">(current)</span>
              </a>
            </li> -->
            <li class="nav-item">
              <a class="nav-link pointer-cursor" onclick="ScrollAboutUs()">Contact</a>
            </li>
            <li class="nav-item">
              <a class="btn btn-outline-danger pointer-cursor" href="<?php echo site_url('User_Logout');?>">Logout</a>
            </li>
            <li class="nav-item">
              <a class="btn btn-outline-warning pointer-cursor" href="<?php echo site_url('Customer/Customer/username');?>"><?php echo "Profile"?></a>
            </li>
          </ul>
        </div>
      </div>
    </nav>