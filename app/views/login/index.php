<center><h2>LOGIN</h2>
<style>
     .login {
            background-color: #fff;
            border: 1px solid #ccc;
            padding: 20px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            width: 300px;
            height: 500px
            text-align: center;
        }
</style>
<div class = "login">
<form action="<?php echo URL; ?>/login/proses" method="post">
     <table>
          <tr>
               <td>Username</td>
               <td><input type="email" name="user_email" placeholder="Email" required></td>
          </tr>
          <tr>
               <td>Password</td>
               <td><input type="password" name="user_password" placeholder="Password" required></td>
          </tr>
          <tr>
               <td></td>
               <td><input type="submit" name="submit" value="LOGIN"></td>
          </tr>
     </table>
</form>
</div>
<?php if (isset($_SESSION['login']) && $_SESSION['login'] == false) { ?>
     <div class="error">
          Login tidak di temukan
     </div>
<?php } ?></center>