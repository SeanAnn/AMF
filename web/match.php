<?php include 'data-access.php';
// get the value of searching keyword and language type from index.php
if(isset($_POST["keyword"]) || isset($_POST["lan"])){
    $keyword = $_POST["keyword"];
    $language = $_POST["lan"];
}
else{
    echo "Failed";
}
// select results according to keyword and language
$sql = "SELECT Description.Des_ID AS Des_ID, Des_Status, Des_Type
    FROM Description, Language, Business
    WHERE Description.Des_ID = Business.Des_ID
    AND Language.Lan_ID = Business.Lan_ID
    AND Language.Lan_Type = '$language'
    AND Des_Type LIKE '%" . $keyword . "%'";

$result = $conn -> query($sql);

echo '<table class="table table-bordered table-hover">';
echo "<thead bgcolor='#C0C0C0'><tr><th width='10%'>Index</th><th>Status</th><th width='65%'>Description of Risk</th></tr></thead>";

if($result -> num_rows > 0){
    while($row = $result -> fetch_assoc()){
        $var = $row["Des_ID"];
        echo "<tbody><tr>";
        echo "<td>" . $var . "</td>";
        echo "<td>" . $row["Des_Status"] . "</td>";
        echo "<td><a href='details.php?var=$var'?>" . $row["Des_Type"] . "</a>
    </td>"; 
        echo "</tr></tbody>"; 
    } 
    echo "</table>"; 
} 
else{ 
    echo "<tr><td>0</td><td>unknown</td><td>0 results</td></tr>"; 
} 
?>