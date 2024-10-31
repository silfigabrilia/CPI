<?php
session_start();
include '../assets/conn/config.php'; // Pastikan sudah terhubung ke database

if (isset($_GET['aksi'])) {
    if ($_GET['aksi'] == 'ubah') {
        // Ambil data dari form dengan filter input untuk keamanan
        $id_akun = mysqli_real_escape_string($conn, $_POST['id_akun']);
        $nama_lengkap = mysqli_real_escape_string($conn, $_POST['nama_lengkap']);
        $username = mysqli_real_escape_string($conn, $_POST['username']);
        $password = mysqli_real_escape_string($conn, $_POST['password']);
        $jenis_kelamin = mysqli_real_escape_string($conn, $_POST['jenis_kelamin']);
        $umur = (int) $_POST['umur']; // Pastikan umur berupa angka

        // Hash password jika perlu
        //$hashed_password = password_hash($password, PASSWORD_DEFAULT);

        // Update tb_akun
        //$update_akun = "UPDATE tb_akun SET nama_lengkap='$nama_lengkap', username='$username', password='$hashed_password' WHERE id_akun='$id_akun'";
        $update_akun = "UPDATE tb_akun SET nama_lengkap='$nama_lengkap', username='$username', password='$password' WHERE id_akun='$id_akun'";
        mysqli_query($conn, $update_akun);
        
        // Update tb_user
        $update_user = "UPDATE tb_user SET jenis_kelamin='$jenis_kelamin', umur='$umur' WHERE id_akun='$id_akun'";
        mysqli_query($conn, $update_user);
        
        // Update session username
        $_SESSION['username'] = $username;

        // Redirect kembali ke halaman profil atau dashboard
        header("Location: profil.php?success=1");
        exit;
    }
}

include 'header.php';
?>

<style scoped>
#header {
    background: #37517E;
}
section {
    padding: 0;
    padding-top: 100px;
}
</style>

<section id="portfolio" class="portfolio">
    <div class="container" data-aos="fade-up">

        <div class="section-title">
        </div>

        <div id="portfolio-flters" data-aos="fade-up" data-aos-delay="100">
        
        <div class="card shadow p-5 mb-5">
            <div class="card-header">
                <h5 class="m-0 font-weight-bold text-primary">Profil</h5>
            </div>

            <div class="card-body">
                <?php
                // Ambil data pengguna dari tb_akun dan tb_user berdasarkan sesi
                $username = $_SESSION['username'];
                $data = mysqli_query($conn, "SELECT * FROM tb_akun WHERE username='$username'");
                $a = mysqli_fetch_array($data);

                // Ambil data dari tb_user berdasarkan id_akun yang ada di tb_akun
                $dat = mysqli_query($conn, "SELECT * FROM tb_user WHERE id_akun='$a[id_akun]'");
                $aa = mysqli_fetch_array($dat);
                ?>
                <!-- Form untuk mengedit profil -->
                <form action="profil.php?aksi=ubah" method="POST">
                    <!-- Input hidden untuk ID akun -->
                    <input type="hidden" name="id_akun" class="form-control" value="<?= htmlspecialchars($a['id_akun']) ?>">

                    <!-- Input Nama Lengkap -->
                    <div class="form-group">
                        <label>Nama Lengkap</label>
                        <input type="text" name="nama_lengkap" class="form-control" value="<?= htmlspecialchars($a['nama_lengkap']) ?>">
                    </div>

                    <!-- Input Jenis Kelamin -->
                    <div class="form-group">
                        <label>Jenis Kelamin</label>
                        <select name="jenis_kelamin" class="form-control">
                            <option selected><?= htmlspecialchars($aa['jenis_kelamin']) ?></option>
                            <option value="Pria">Pria</option>
                            <option value="Wanita">Wanita</option>
                        </select>
                    </div>

                    <!-- Input Umur -->
                    <div class="form-group">
                        <label>Umur</label>
                        <input type="number" name="umur" class="form-control" value="<?= htmlspecialchars($aa['umur']) ?>">
                    </div>

                    <!-- Input Username -->
                    <div class="form-group">
                        <label>Username</label>
                        <input type="text" name="username" class="form-control" value="<?= htmlspecialchars($a['username']) ?>">
                    </div>

                    <!-- Input Password -->
                    <div class="form-group">
                        <label>Password</label>
                        <div class="input-group">
                            <input type="password" id="password" name="password" class="form-control" value="<?= $a['password'] ?>">
                            <div class="input-group-append">
                                <button type="button" class="btn btn-outline-secondary" id="togglePassword">
                                    <i class="fa fa-eye" id="toggleIcon"></i>
                                </button>
                            </div>
                        </div>
                    </div>

                    <!-- Tombol Batal dan Simpan -->
                    <a href="index.php" class="btn btn-secondary">Batal</a>
                    <input type="submit" value="Ubah" class="btn btn-primary">
                </form>
            </div>
        </div>

        </div>
    </div>
</section>

<script>
    const togglePassword = document.querySelector('#togglePassword');
    const passwordField = document.querySelector('#password');
    const toggleIcon = document.querySelector('#toggleIcon');

    togglePassword.addEventListener('click', function () {
        // Toggle the type attribute of the password field
        const type = passwordField.getAttribute('type') === 'password' ? 'text' : 'password';
        passwordField.setAttribute('type', type);

        // Toggle the icon of the button
        toggleIcon.classList.toggle('fa-eye');
        toggleIcon.classList.toggle('fa-eye-slash');
    });
</script>

<?php
include 'footer.php';
?>
