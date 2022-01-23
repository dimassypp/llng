<?php
    if($_POST){
        $nama=$_POST['nama'];
        $username_m=$_POST['username'];
        $password_m=$_POST['password'];
        $tlp=$_POST['tlp'];

            include "koneksi.php";
            $insert=mysqli_query($koneksi,"insert into masyarakat (nama, username, password, tlp)
            value
            ('".$nama."','".$username_m."','".md5($password_m)."','".$tlp."')") or die(mysqli_error($koneksi));
            if ($insert) {
                echo "<script>alert('Sukses Menambahkan');location.href='tampil_masyarakat.php';</script>";
            }

            else {
                echo "<script>alert('Gagal Menambahkan');location.href='tambah_masyarakat.php';</script>";
            }
        }
    
?>