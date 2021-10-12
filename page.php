<?php
	
	include 'fungsi.php';

	switch ($_POST['type']) {
		case 'add': $data = ['nim'=>$_POST['nim'],'nama'=>$_POST['nama']];
					$cek = modify('insert','mahasiswa',$data);
					if($cek==TRUE)
					{
						echo "Data berhasil diinput";
					}
					else
					{
						echo "Data gagal diinput";
					}
			break;
		case 'delete' :
					$postid = explode("|", base64_decode($_POST['id']));
					$id = $postid[1];
					$cek = modify('delete','mahasiswa',null,'id',$id);
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
					$postid = explode("|", base64_decode($_POST['id']));
					$id = $postid[1];
					$cek = getData($id);
					if($cek==FALSE)
					{
						echo 0;
					}
					else
					{
						$cek->setFetchMode(PDO::FETCH_ASSOC);
						$data = $cek->fetch();
						$d = ['nim'=>$data['nim'],'nama'=>$data['nama']];
						echo json_encode($d);
					}
		default:
			// code...
			break;
	}