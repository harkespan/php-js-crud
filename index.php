<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>CRUD Mahasiswa</title>
</head>
<body>
	<?php include 'fungsi.php';?>
	<div>
		<form method="POST" onsubmit="return doInsert();">
	    <input id="nim" placeholder="NIM">
	    <input id="nama" placeholder="Nama Lengkap">
	    <input id="alamat" placeholder="Alamat">
	         
	    <input type="submit" value="Tambah">
	</form>
	 
	<table border=1 cellpadding="3" cellspacing="0">
		<tr>
			<th>No</th>
			<th>NIM</th>
			<th>Nama</th>
			<th>Alamat</th>
			<th>Aksi</th>
		</tr>
		<?php
			$i = 1;
			$data = getData();
			if($data->rowCount()==0)
			{
				echo "data kosong";
			}
			else
			{
				$data->setFetchMode(PDO::FETCH_ASSOC);

				while ($baris = $data->fetch()) 
				{
			?>
			<tr>
				<td><?php echo $i?></td>
				<td><?php echo $baris['nim']?></td>
				<td><?php echo $baris['nama']?></td>
				<td><?php echo $baris['alamat']?>
				<td><a href="javascript:void(0)" onclick="doEdit('<?php echo $baris['id']?>')" >Edit</a> | <a href="javascript:void(0)" onclick="doDelete('<?php echo $baris['id']?>')">Delete</a></td>
			</tr>
			<?php
					$i++;
				}

			}
		?>
	</table>
	<script>
	function doInsert() {
	    var nim = document.getElementById('nim').value;
	    var nama = document.getElementById('nama').value;
	    var alamat = document.getElementById('alamat').value;
	         
	    var ajax = new XMLHttpRequest();
	    ajax.open("POST", "page.php", true);
	    ajax.setRequestHeader('Content-type', 'application/x-www-form-urlencoded');
	 
	    ajax.onreadystatechange = function () {
	        if (this.readyState == 4 && this.status == 200)
	        {
	            document.getElementById('nim').value="";
	        	document.getElementById('nama').value="";
	        	document.getElementById('alamat').value="";
	        	alert(this.responseText);
	        	location.reload();
	        }
	    };
	 
	    ajax.send("nim=" + nim + "&nama=" + nama +"&alamat="+alamat +"&type=add");
	    return false;
	}

	function doDelete(param){
		var id = param;
		var ajax = new XMLHttpRequest();
		ajax.open("POST","page.php",true);
		ajax.setRequestHeader('Content-type', 'application/x-www-form-urlencoded');
	 
	    ajax.onreadystatechange = function () {
	        if (this.readyState == 4 && this.status == 200)
	        {
	        	alert(this.responseText);
	        	location.reload();
	        }
	    };
	 
	    ajax.send("id=" + id + "&type=delete");
	    return false;
	}

	function doEdit(param){
		var id = param;
		var ajax = new XMLHttpRequest();
		ajax.open("POST","page.php",true);
		ajax.setRequestHeader('Content-type', 'application/x-www-form-urlencoded');
	 
	    ajax.onreadystatechange = function () {
	        if (this.readyState == 4 && this.status == 200)
	        {

	        	console.log(this.responseText);
	        }
	    };
	 
	    ajax.send("id=" + id + "&type=edit");
	    return false;
	}
	</script>
	</div>
</body>
</html>