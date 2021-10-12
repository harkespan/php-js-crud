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

	function getData($id=null)
	{
		$conn = db_connect();
		$sql = "SELECT * FROM mahasiswa";
		if(!is_null($id))
		{
			$sql .= " WHERE id=?";
			$rs = $conn->prepare($sql)->execute([$id]);
		}
		else
		{
			$rs = $conn->query($sql);
		}
		return $rs;
	}

	function modify($type,$table,$data=null,$field=null,$id=null)
	{
		$conn = db_connect();
		if($type=='insert')
		{
			$sql = "INSERT INTO $table (nim,nama) VALUES (:nim,:nama)";
			$pdo = $conn->prepare($sql)->execute($data);
			if($pdo==TRUE)
			{
				return TRUE;
			}
			else
			{
				return FALSE;
			}
		}
		elseif($type=='delete')
		{
			$sql = "DELETE FROM $table WHERE $field = ?";
			$pdo = $conn->prepare($sql)->execute([$id]);
			if($pdo==TRUE)
			{
				return TRUE;
			}
			else
			{
				return FALSE;
			}
		}
	}


?>