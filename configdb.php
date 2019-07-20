<?php
	@session_start();
	$_SESSION['judul'] = '';
	$_SESSION['welcome'] = 'Sistem Penilaian Kinerja Karyawan <br>Taman Kyai Langgeng Kota Magelang';
	$_SESSION['by'] = '';
	$mysqli = new mysqli('localhost','root','','topsisp');
	if($mysqli->connect_errno){
		echo $mysqli->connect_errno." - ".$mysqli->connect_error;
		exit();
	}
?>