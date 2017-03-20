// search bar animation
function searchBarOver(){
    var css = document.getElementById("searchBar");
    css.className = "searchBarOver";
}

function searchBarOut(){
    var css = document.getElementById("searchBar");
    css.className = "searchBarOut";
}
// only pass language type as argument if no content in search bar, otherwise pass both them
function showLanguage(ch){
    var str = $("#searchBar").val();
    
    if(str!=0){
        if(ch!=''){
            $.ajax({
                url:"match.php",
                method:"POST",
                data:{"keyword" : str, "lan": ch},
                success:function(data)
                {
                    $('#searchedTable').html(data);
                }
   	        });  
        }
    }
    else{
        $.ajax({
            url:"language.php",
            method:"POST",
            data:{"lan": ch},
            success:function(data)
            {
                $('#searchedTable').html(data);
            }
   	    });
    }
}
// only pass language type as argument if no content in search bar, otherwise pass both them
function showItems(str){
    var ch = $("input[name='lanType']:checked").val();
 
    if(str!=''){
        $.ajax({
            url:"match.php",
            method:"POST",
            data:{"keyword" : str, "lan": ch},
            success:function(data)
            {
                $('#searchedTable').html(data);
            }
   	    });
    }
    else{
        $.ajax({
            url:"language.php",
            method:"POST",
            data:{"lan": ch},
            success:function(data)
            {
                $('#searchedTable').html(data);
            }
   	    });
    }
}
// back button in details.php
function backToIndex(){
   location.href='index.php';
}