<?php 
include 'assets/conn/config.php';
if (isset($_GET['aksi'])) {
    if ($_GET['aksi'] == 'daftar') {
        $nama_lengkap = $_POST['nama_lengkap'];
        $jenis_kelamin = $_POST['jenis_kelamin'];
        $umur = $_POST['umur'];
        $username = $_POST['username'];
        $password = $_POST['password'];

        // Validasi di sisi server untuk memastikan semua input telah diisi
        if (!empty($nama_lengkap) && !empty($jenis_kelamin) && !empty($umur) && !empty($username) && !empty($password)) {
            // data akun
            mysqli_query($conn, "INSERT INTO tb_akun(nama_lengkap,username,password,level) VALUES ('$nama_lengkap','$username','$password','user')");

            // panggil id akun
            $data = mysqli_query($conn, "SELECT * FROM tb_akun ORDER BY id_akun DESC");
            $a = mysqli_fetch_array($data);

            // in data user
            mysqli_query($conn, "INSERT INTO tb_user(id_akun,nama_lengkap,jenis_kelamin,umur) VALUES ('$a[id_akun]','$nama_lengkap','$jenis_kelamin','$umur')");
            
            header("location:index.php?pesan=berhasil");
        } else {
            echo "<script>alert('Semua field harus diisi!');</script>";
        }
    }
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Form Registration</title>
    <link href="assets/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link href="assets/css/sb-admin-2.min.css" rel="stylesheet">
    <style>
        .error-message {
            color: red;
            display: none;
            font-size: 0.8rem;
        }
    </style>
    <style>
    /* Tambahkan background ke seluruh halaman */
        body {
            background-image: url('assets/3.jpg');
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
            background-attachment: fixed;
        }

        /* Tambahkan efek bayangan dan latar belakang putih untuk form */
        .card {
            background-color: rgba(255, 255, 255, 0.8); /* Latar belakang semi-transparan */
            border-radius: 10px;
            box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.1);
        }

        .error-message {
            color: red;
            display: none;
            font-size: 0.8rem;
        }
    </style>
</head>



<body>
    <div class="container">
        <!-- Outer Row -->
        <div class="row justify-content-center">
            <div class="col-xl-5 col-lg-12 col-md-9">
                <div class="card o-hidden border-0 shadow-lg my-5">
                    <div class="card-body p-0">
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="p-5">
                                    <div class="text-center">
                                        <h1 class="h4 text-gray-900 mb-4">Form Registration</h1>
                                    </div>
                                    <form class="user" action="register.php?aksi=daftar" method="post" enctype="multipart/form-data" onsubmit="return validateForm()">
                                        <div class="form-group">
                                            <input type="text" name="nama_lengkap" id="nama_lengkap" class="form-control" placeholder="Nama Lengkap">
                                            <div class="error-message" id="nama_error">Nama lengkap harus diisi!</div>
                                        </div>
                                        <div class="form-group">
                                            <select name="jenis_kelamin" id="jenis_kelamin" class="form-control">
                                                <option selected disabled>Gender</option>
                                                <option>Pria</option>
                                                <option>Wanita</option>
                                            </select>
                                            <div class="error-message" id="jk_error">Jenis kelamin harus dipilih!</div>
                                        </div>
                                        <div class="form-group">
                                            <input type="number" name="umur" id="umur" class="form-control" placeholder="Umur">
                                            <div class="error-message" id="umur_error">Umur harus diisi!</div>
                                        </div>
                                        <div class="form-group">
                                            <input type="text" name="username" id="username" class="form-control" placeholder="Username">
                                            <div class="error-message" id="username_error">Username harus diisi!</div>
                                        </div>
                                        <div class="form-group">
                                            <input type="password" name="password" id="password" class="form-control" placeholder="Password">
                                            <div class="error-message" id="password_error">Password harus diisi!</div>
                                        </div>
                                        <button type="submit" class="btn btn-primary btn-user btn-block">Registration</button>
                                    </form>
                                    <hr>
                                    <div class="text-center">
                                        <a href="index.php">Login</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script src="assets/vendor/jquery/jquery.min.js"></script>
    <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="assets/vendor/jquery-easing/jquery.easing.min.js"></script>
    <script src="assets/js/sb-admin-2.min.js"></script>
    <script>
        function validateForm() {
            var isValid = true;

            // Ambil nilai input
            var namaLengkap = document.getElementById("nama_lengkap").value;
            var jenisKelamin = document.getElementById("jenis_kelamin").value;
            var umur = document.getElementById("umur").value;
            var username = document.getElementById("username").value;
            var password = document.getElementById("password").value;

            // Ambil elemen pesan error
            var namaError = document.getElementById("nama_error");
            var jkError = document.getElementById("jk_error");
            var umurError = document.getElementById("umur_error");
            var usernameError = document.getElementById("username_error");
            var passwordError = document.getElementById("password_error");

            // Reset pesan error
            namaError.style.display = "none";
            jkError.style.display = "none";
            umurError.style.display = "none";
            usernameError.style.display = "none";
            passwordError.style.display = "none";

            // Validasi Nama Lengkap
            if (namaLengkap === "") {
                namaError.style.display = "block";
                isValid = false;
            }

            // Validasi Jenis Kelamin
            if (jenisKelamin === "") {
                jkError.style.display = "block";
                isValid = false;
            }

            // Validasi Umur
            if (umur === "") {
                umurError.style.display = "block";
                isValid = false;
            }

            // Validasi Username
            if (username === "") {
                usernameError.style.display = "block";
                isValid = false;
            }

            // Validasi Password
            if (password === "") {
                passwordError.style.display = "block";
                isValid = false;
            }

            // Cegah pengiriman form jika tidak valid
            return isValid;
        }
    </script>
</body>
</html>
