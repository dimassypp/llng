<?php
    if($_POST){
        $nama_petugas=$_POST['nama_petugas'];
        $username_p=$_POST['username'];
        $password_p=$_POST['password'];

            include "koneksi.php";
            $insert=mysqli_query($koneksi,"insert into petugas (nama_petugas, username, password)
            value
            ('".$nama_petugas."','".$username_p."','".md5($password_p)."')") or die(mysqli_error($koneksi));
            if ($insert) {
                echo "<script>alert('Sukses Menambahkan');location.href='tampil_petugas.php';</script>";
            }

            else {
                echo "<script>alert('Gagal Menambahkan');location.href='tambah_petugas.php';</script>";
            }
        }
    
?>