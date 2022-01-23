<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Tambah Masyarakat</title>

    <!-- CSS only -->
   <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous">

</head>
<body>
    <div class="container">
        <br><h3>Tambah Masyarakat</h3>
        <form action="proses_tambah_masyarakat.php" method="post">
            Nama :
            <br><input type="text" name="nama" value="" class="form-control" placeholder="Masukkan Nama"><br>
            Username : 
            <br><input type="text" name="username" value="" class="form-control" placeholder="Masukkan Username" required></br>
            Password : 
            <br><input type="password" name="password" value="" class="form-control" placeholder="Masukkan Password" required></br>
            Telepon :
            <br><input type="text" name="tlp" value="" class="form-control" placeholder="Masukkan Nomor Telepon"><br>
            <br><input type="submit" name="simpan" value="Tambah Masyarakat" class="btn btn-primary"></br>
        </form>
    </div>
    <!-- JavaScript Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-/bQdsTh/da6pkI1MST/rWKFNjaCP5gBSY4sEBT38Q/9RBh9AH40zEOg7Hlq2THRZ" crossorigin="anonymous"></script>
</body>
</html>