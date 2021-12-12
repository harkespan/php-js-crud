<?php
	
	require_once "vendor/autoload.php";
	include 'fungsi.php';

	$dummy = Faker\Factory::create('id_ID');

	for($i=0;$i<20;$i++)
	{
		$data = ['nim'=>'A11.'.$dummy->numberBetween(2000,2001).".".$dummy->numberBetween(1,1000),
				'nama'=>$dummy->name,
				'alamat'=>$dummy->address];
		modify('insert','mahasiswa',$data);
	}