<h2>Input User</h2>

<form action="<?php echo URL; ?>/user/save" method="post">
    <table>
        <tr>
            <td>EMAIL</td>
            <td><input type="user_email" name="user_email" required></td>
        </tr>
        <tr>
            <td>PASSWORD</td>
            <td><input type="password" name="user_password" required></td>
        </tr>
        <tr>
            <td>NAMA</td>
            <td><input type="text" name="user_full_name" required></td>
        </tr>
        <tr>
            <td>ALAMAT</td>
            <td><textarea name="user_alamat" id="" cols="20" rows="5"></textarea></td>
        </tr>
        <tr>
            <td>HP</td>
            <td><input type="text" name="user_hp" required></td>
        </tr>
        <tr>
            <td>POS</td>
            <td><input type="text" name="user_pos" required></td>
        </tr>
        <tr>
            <td>ROLE</td>
            <td><input type="number" name="user_role" min='0', max='100' required></td>
        </tr>
        <tr>
            <td>AKTIF</td>
            <td><input type="text" name="user_aktif" required>
            </td>
        </tr>
        <tr>
            <td></td>
            <td><input type="submit" name="btn_save" value="SAVE"></td>
        </tr>
    </table>
</form>