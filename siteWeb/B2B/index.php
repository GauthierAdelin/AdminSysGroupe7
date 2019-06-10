<head>
    <meta charset="utf-8">
    <title>B2B - WoodyToys</title>
    <link rel="stylesheet" href="CSS/b2b.css">
</head>

<body>
	<form action="INC/infoClient.php" method="post" id="tab">
		<h2><u>Ajout du client</u></h2>
		<p>
			<label for="entreprise">Nom</label> : <input type="text" name="entreprise" id="entreprise"><br>
			<label for="adresse">Localité</label> :  <input type="text" name="adresse" id="adresse"><br>
			<input type="submit" value="Ajouter client">
		</p>
	</form>
	
	
	<?php
    try {
        $bdd = new PDO("mysql:host=172.17.0.4;dbname=WT", "root", "");
    }
    catch(Exception $e){
        die('ERROR: ' . $e->getMessage());
    }
    $clients = $bdd->query('SELECT idClient, nomClient, adresseClient FROM client_WT ORDER BY idClient');
    $table ='';
    $table.=
        '<h2>Clients</h2>'.
        '<table id="tab">
            <thead>
                <tr>
                    <th>ID du client</th>
                    <th>Nom du client</th>
                    <th>Adresse du client</th>
                </tr>
            </thead>
            <tbody>';
    while($donnesClient = $clients->fetch()){
        $table.=
            '<tr><td>'. $donnesClient['idClient'] . '</td>'.
            '<td>' . $donnesClient['nomClient'] . '</td>' .
            '<td>' . $donnesClient['adresseClient'] . '</td>'.
'</tr>';
    }
    $table .=
        '</tbody>
    </table>';
    echo $table;
    $clients->closeCursor();

    ?>
</body>