<?php include 'data-access.php';?>

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
            <img src="resource/amflogo_sm.gif" alt="A. M. Frederisks Underwriting Management Ltd." id="logo" class="img-responsive center-block" scale="0">
        </div> 
        
        <div class="row">
            <div class="text-center">
                <input type="text" name="searchBar" id="searchBar" class="searchBarOut" onmouseover="searchBarOver()" onmouseout="searchBarOut()" onkeyup="showItems(this.value)">
            </div>
        </div>

        <div class="row">
            <div class="col-md-4 col-md-offset-4 radioPosition">
                <input type="radio" checked = "true" name="lanType" id="englishModel" onclick="showLanguage('E')" value="E">
                <label for="englishModel" class="labelPostion">English</label> 
                <input type="radio" name="lanType" id="frenchModel" onclick="showLanguage('F')" value="F" style="margin-left:35%;">
                <label for="frenchModel" class="labelPostion">Français (French)</label> 
            </div>
        </div>

        <div id="searchedTable" class="searchedTable">
            <table class="table table-bordered table-hover scrolltable">
                <?php
                // default select all English files from database
                $sql = "SELECT Description.Des_ID AS Des_ID, Des_Status, Des_Type
                FROM Description, Language, Business
                WHERE Description.Des_ID = Business.Des_ID
                AND Language.Lan_ID = Business.Lan_ID
                AND Language.Lan_Type = 'E'";
                $result = $conn -> query($sql);
                echo "<thead bgcolor='#C0C0C0'><tr><th width='10%'>Index</th><th>Status</th><th width='65%'>Description of Risk</th></tr></thead>";
                if($result -> num_rows > 0){
                    while($row = $result -> fetch_assoc()){
                        $var = $row["Des_ID"];
                        $var2 = $row["Des_Type"];
                        echo "<tbody><tr>";
                        echo "<td>" . $row["Des_ID"] . "</td>";
                        echo "<td>" . $row["Des_Status"] . "</td>";
                        echo "<td><a href='details.php?var=$var'?>" . $row["Des_Type"] . "</a></td>";
                        echo "</tr></tbody>";
                    }
                }
                else{
                    echo "0 results";
                }
                ?>
            </table>
        </div>
    </div>
    <div class="text-center">
        <footer class="radioPosition">© 2017 Designed by Sean. All rights reserved.</footer>
    </div>
</body>
</html>
