<?php
	header("Access-Control-Allow-Origin: *");
	include 'fungsi.php';
	if(isset($_POST['type']))
	{
		switch ($_POST['type']) {
			case 'add': 
						$data = ['nim'=>$_POST['nim'],'nama'=>$_POST['nama'],'alamat'=>$_POST['alamat']];
						$cekdata = getData('nim',$_POST['nim']);
						if($cekdata->rowCount()==0)
						{
							$cek = modify('insert','mahasiswa',$data);
							if($cek==TRUE)
							{
								echo "Data berhasil diinput";
							}
							else
							{
								echo "Data gagal diinput";
							}
						}
						else
						{
							$cekupdate = modify('update','mahasiswa',$data,'nim');
							if($cekupdate)
							{
								echo "Data berhasil diupdate";
							}
							else
							{
								echo "Data gagal diupdate";
							}
						}
				break;
			case 'delete' :
						$id = $_POST['id'];
						$cek = modify('delete','mahasiswa',[$id],'id');
						if($cek==TRUE)
						{
							echo "Data berhasil dihapus";
						}
						else
						{
							echo "Data gagal dihapus";
						}
				break;
			case 'edit' :
						$id = $_POST['id'];
						$cek = getData('id',$id);
						if($cek->rowCount()==0)
						{
							echo 0;
						}
						else
						{
							$cek->setFetchMode(PDO::FETCH_ASSOC);
							$data = $cek->fetch();
							echo json_encode($data);
						}
			default:
						$cek = getData();
						if($cek->rowCount()==0)
						{
							echo 0;
						}
						else
						{
							$cek->setFetchMode(PDO::FETCH_ASSOC);
							$data = $cek->fetch();
							echo json_encode($data);
						}
				break;
		}

	}
	else
	{
		$cek = getData();
		if($cek->rowCount()==0)
		{
			echo 0;
		}
		else
		{
			$arraydata = [];
			$cek->setFetchMode(PDO::FETCH_ASSOC);
			while($data = $cek->fetch())
			{
				array_push($arraydata,$data);
			}
			echo json_encode($arraydata);
		}
	}