<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>WEB CREATOR</title>
    <link href="https://fonts.googleapis.com/css?family=Lobster" rel="stylesheet">
    <link rel="stylesheet" href="<?php echo base_url();?>/bootstrap-4.1.0-dist/css/bootstrap.min.css">
    <link href="<?php echo base_url();?>/css/Login.css" type="text/css" rel="stylesheet">
</head>

<body >
    
<div class="bg-light center bg-img-mic" style="height:100%">
       
         <div class="p-5 rounded flex-column text-center justify-content-around custom-card-white lobsfont" style="height:80%; width:30%">
            <div><h3 style="color:whitesmoke;">Create Your Account</h3></br></div>
                <form action="<?php echo site_url('User_Register');?>" method="post"  role="form">
                    <div class="form-group row">
                    <label for="fname">First Name :</label>
                    <input type="text" placeholder="First Name" class="form-control" name="fname" required="">
                    </div>
                    <div class="form-group row">
                    <label for="lname">Last Name :</label>
                    <input type="text" placeholder="Last Name" class="form-control" name="lname" required="">
                    </div>
                    <div class="form-group row">
                    <label for="phonenum">Phone Number :</label>
                    <input type="text" placeholder="Phone Number" class="form-control" name="pnumber" required="">
                    </div>    
                    <!-- <div class="form-group row">
                    <label for="gender">Gender (M/F):</label>
                    <input type="text" placeholder="Gender" class="form-control" name="gender" required="">
                    </div>        -->
          </div>

          <div class="p-5 rounded flex-column text-center center custom-card-white" style="height:80%; width:30%">
            <div class="lobsfont">
                    <div class="form-group row">
                    <label for="e-mail">Email :</label>
                    <input id="email" type="email" placeholder="Email Address" class="form-control" name="email" required="">
                    </div>

                    <div class="form-group row">
                    <label for="address"> Home Adress :</label>
                    <input type="text" placeholder="Home Address" class="form-control" name="homeAddress" required="">
                    </div>

                        <div class="form-group row">
                    <label for="username">Username :</label>
                    <input id="username" type="text" placeholder="Username" class="form-control" name="username" required="">
                    <!-- <small id="usernameHelp"  class="form-text text-muted">min 5 character, max 10 character.</small> -->
                    </div>         
                    <div class="form-group row">
                    <label for="pwd">Password :</label>
                    <input id="password" type="password" data-minlength="6" placeholder="Password" class="form-control" name="password" required="">
                    </div>

                <div><button type="submit" class="btn btn-success">Buat Akun</button></div>
                 </form>
            </div>
            <!-- <div><a href="Customer/CreateAccount.php" style:"color:red;">Buat akun baru ?</a></div> -->
            <h7><a href="<?php echo site_url('Home');?>">Kembali</a></h7>
          </div>

         
</div>
    <script src="<?php echo base_url();?>js/bootstrap-validate.js"></script>
    <script src="<?php echo base_url();?>js/input.js"></script>
    <script src="<?php echo base_url();?>/bootstrap-4.1.0-dist/js/bootstrap.min.js"></script>
</body>

</html>