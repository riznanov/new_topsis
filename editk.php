<?php
	session_start();
	if (!isset($_SESSION['login']))
		header('Location: index.php');
	include('configdb.php');
	$kode_karyawan = $_POST['kode_karyawan'];
	$alternatif = $_POST['alternatif'];
	$jabatan = $_POST['jabatan']; 
	$alamat = $_POST['alamat'];
	
	$result = $mysqli->query("UPDATE alternatif SET `kode_karyawan` = '".$kode_karyawan."',`alternatif` = '".$alternatif."', `jabatan` = '".$jabatan."',`alamat` = '".$alamat."' WHERE `id_alternatif` = ".$_GET['id'].";");
	if(!$result){
		echo $mysqli->connect_errno." - ".$mysqli->connect_error;
		exit();
	}
	else{
		header('Location: karyawan.php');
	}
?>