<?php include 'data-access.php';
// get value of ID from index.php
if(isset($_GET["var"])){
    $id = $_GET["var"];
}
else{
    echo "Passing failed";
}
?>

<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/index.css" rel="stylesheet"> 
    <script src="js/jquery-3.2.0.min.js"></script>
    <script type="text/javascript" src="js/index.js"></script>
</head>
<body>
    <div class="container">
        <div class="row">
            <img src="resource/amflogo_sm.gif" alt="A. M. Frederisks Underwriting Management Ltd." id="logo" class="img-responsive center-block imagePosition" scale="0">
        </div> 

        <div class="row">
            <div class="summaryTable">  
                <table class="table table-bordered" id="resultTable">
    
                <?php include 'file-access.php';
                // select the Description Type first
                $sql1 = "SELECT Des_Type FROM Description, Business WHERE Description.Des_ID = Business.Des_ID AND Bus_ID = '$id'";
                $result = $conn -> query($sql1);
                $caption = $result -> fetch_assoc();
                echo "<caption class='captionPosition''>" . $caption["Des_Type"] . "</caption>";
                // then select the rest
                $sql2 = "SELECT Lia_Type, Pro_Type, EO_Type, Exc_Type, Umb_Type FROM Liability, Property, EO, Excess, Umbrella, Business, Description
                WHERE Liability.Lia_ID = Business.Lia_ID
                AND Property.Pro_ID = Business.Pro_ID
                AND EO.EO_ID = Business.EO_ID
                AND Excess.Exc_ID = Business.Exc_ID
                AND Umbrella.Umb_ID = Business.Umb_ID
                AND Description.Des_ID = Business.Des_ID
                AND Bus_ID = '$id'";

                $result2 = $conn -> query($sql2);
                echo "<tr bgcolor='#C0C0C0'><th width='15%'>Liability</th><th width='15%'>Property</th><th width='15%'>E&O</th><th width='15%'>Excess</th><th width='15%'>Umbrella</th></tr>";

                if($result2 -> num_rows > 0){
                    while($row =$result2 -> fetch_assoc()){
                        echo "<tr>";
                        echo getFile($row["Lia_Type"]);
                        echo getFile($row["Pro_Type"]);
                        echo getFile($row["EO_Type"]);
                        echo getFile($row["Exc_Type"]);
                        echo getFile($row["Umb_Type"]);
                        echo "</tr>";
                    }
                }
                else{
                        echo "0 results";
                }
                ?> 
                 </table>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12 col-md-offset-10">
                <button class="btn btn-primary backButton" type="button" onclick="backToIndex()">Back</button>
            </div>
        </div>
    </div>
</body>
</html>
