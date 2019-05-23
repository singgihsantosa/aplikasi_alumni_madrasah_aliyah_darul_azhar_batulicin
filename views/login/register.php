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
            <input type="text" class="form-control" placeholder="NIS" required="required" name="nis">
        </div>
        <div class="form-group">
            <!-- <input type="password" class="form-control" placeholder="Password" required="required" name="password"> -->
						<input type="date" id="materialContactFormName" class="form-control" name="tgl_lahir">
        </div>

        <div class="form-group">
            <button type="submit" class="btn btn-primary btn-block" name="register">Register</button>
        </div>
    </form>
</div>
<?php

if (isset($_POST['register'])) {
	$nis = $obj->conn->real_escape_string($_POST['nis']);
	$tgl_lahir = $obj->conn->real_escape_string($_POST['tgl_lahir']);
	// 
  // $password = $obj->conn->real_escape_string($_POST['password']);
  // $password_hash = password_hash($password, PASSWORD_DEFAULT);
  $hak_akses = 1;

  // login
  // $register = $objAdmin->register($password_hash, $hak_akses,$nis);
	$register = $objAdmin->verifikasi_dataalumni($nis, $tgl_lahir);
  if ($register) {
      echo '<script>
			alert("Data Sudah Ada");
      window.location="?view=login";
       </script>';
  }else {
    echo '<script> alert("Data Tidak ada, Harap Lapor Admin"); </script>';
  }
}

?>

<script type="text/javascript">

  $(document).ready(function(){

    $('#nis').on('change', function(){

      let nis = $('#nis :selected').val();

      get_nama_alumni_by_nis(nis);

    });

    function get_nama_alumni_by_nis(nis)
    {
        $.ajax({

          url: '<?=base_url()?>/models/ajax.php',
          dataType: 'JSON',
          type: 'POST',
          data: { type: 'get_nama_by_nis', nis: nis },
            success: function(res){

             let option = '';
             let i;

              for (i = 0; i < res.length; i++) {
                option += '<option>' + res[i] + '</option>';
              }

              $('#nama_alumni').html(option);

            }

        });
    }

  });

</script>
