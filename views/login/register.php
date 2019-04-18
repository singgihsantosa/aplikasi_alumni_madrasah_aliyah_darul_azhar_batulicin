<style type="text/css">
	.login-form {
		width: 340px;
    	margin: 50px auto;
	}
    .login-form form {
    	margin-bottom: 15px;
        background: #f7f7f7;
        box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
        padding: 30px;
    }
    .login-form h2 {
        margin: 0 0 15px;
    }
    .form-control, .btn {
        min-height: 38px;
        border-radius: 2px;
    }
    .btn {
        font-size: 15px;
        font-weight: bold;
    }
</style>

<div class="login-form">
    <form action="" method="post">
        <h2 class="text-center">Register</h2>
        <div class="form-group">
            <input type="text" class="form-control" placeholder="Username" required="required" name="username">
        </div>
        <div class="form-group">
            <input type="password" class="form-control" placeholder="Password" required="required" name="password">
        </div>
        <div class="form-group">
            <button type="submit" class="btn btn-primary btn-block" name="register">Register</button>
        </div>
    </form>
</div>
<?php

if (isset($_POST['register'])) {
  $username = $obj->conn->real_escape_string($_POST['username']);
  $password = $obj->conn->real_escape_string($_POST['password']);
  $password_hash = password_hash($password, PASSWORD_DEFAULT);
  $hak_akses = 1;

  // login
  $register = $objAdmin->register($username, $password_hash, $hak_akses);
  if ($register) {
      echo '<script>
      window.location="?view=login";
       </script>';
  }else {
    echo '<script> alert("error login"); </script>';
  }
}

?>
