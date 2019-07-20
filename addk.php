<?php
	session_start();
	if (!isset($_SESSION['login']))
		header('Location: index.php');
	include('configdb.php');
	$kode_karyawan = $_POST['kode_karyawan'];
	$alternatif = $_POST['alternatif'];
	$jabatan = $_POST['jabatan']; 
	$alamat = $_POST['alamat'];
	
	$result = $mysqli->query("INSERT INTO `alternatif` (`id_alternatif`, `kode_karyawan`, `alternatif`, `jabatan`, `alamat`) 
								VALUES (NULL, '".$kode_karyawan."', '".$alternatif."', '".$jabatan."', '".$alamat."');");
	if(!$result){
		echo $mysqli->connect_errno." - ".$mysqli->connect_error;
		exit();
	}
	else{
		header('Location: karyawan.php');
	}
?>