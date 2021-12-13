<?php
	function db_connect()
	{
		try {
			return new PDO("mysql:host=localhost;dbname=test","root","");
		}
		catch(PDOException $e)
		{
			echo $e->getMessage();
		}
	}

	function getData($field=null,$id=null)
	{
		$conn = db_connect();
		$sql = "SELECT * FROM mahasiswa";
		if(!is_null($id) AND !is_null($field))
		{
			$sql .= " WHERE $field=? LIMIT 1";
			$rs = $conn->prepare($sql);
			$rs->execute([$id]);
		}
		else
		{
			$rs = $conn->query($sql);
		}
		return $rs;
	}

	function modify($type,$table,$data=null,$field=null)
	{
		$conn = db_connect();
		if($type=='insert')
		{
			$sql = "INSERT INTO $table (nim,nama,alamat) VALUES (:nim,:nama,:alamat)";
		}
		elseif($type=='delete')
		{
			$sql = "DELETE FROM $table WHERE $field = ?";
		}
		elseif($type=='update')
		{
			$sql = "UPDATE $table SET nama=:nama,alamat=:alamat WHERE $field = :nim";
		}

		$pdo = $conn->prepare($sql)->execute($data);
		if($pdo)
		{
			return TRUE;
		}
		else
		{
			return FALSE;
		}
	}


?>