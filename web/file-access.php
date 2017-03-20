<?php
// function that used to analyze the content of data(contain and/or)
function getFile($fileName){
    $content = '';
    if($fileName == null){
        $content .= "<td><label>Not available</label></td>";
        return $content;
    }
   
    $andPart =  preg_split("/\s(and)\s/", $fileName);
    if(count($andPart) == 1){
        $orPart = preg_split("/\s(or)\s/", $fileName);
        if(count($orPart) == 1){
            $content .="<td><a href='apps/$orPart[0]'><img src='resource/pdfLogo.png' alt='pdf files'><br />" . $orPart[0] . "</a></td>";
            return $content;
        }
        else{
            $content .="<td><a href='apps/$orPart[0]'><img src='resource/pdfLogo.png' alt='pdf files'><br />" . $orPart[0] . "</a><br /><label>or</label><br /><a href='apps/$orPart[1]'><img src='resource/pdfLogo.png' alt='pdf files'><br />" . $orPart[1] . "</a></td>";
            return $content;
        }
    }
    else if(count($andPart) == 3){
        $content .="<td><a href='apps/$andPart[0]'><img src='resource/pdfLogo.png' alt='pdf files'><br />" . $andPart[0] . "</a><br /><label>and</label><br /><a href='apps/$andPart[1]'><img src='resource/pdfLogo.png' alt='pdf files'><br />" . $andPart[1] . "</a><br /><label>and</label><br /><a href='apps/$andPart[2]'><img src='resource/pdfLogo.png' alt='pdf files'><br />" . $andPart[2] . "</a></td>";
        return $content;
    }
            
    else{
        $content .="<td><a href='apps/$andPart[0]'><img src='resource/pdfLogo.png' alt='pdf files'><br />" . $andPart[0] . "</a><br /><label>and</label><br /><a href='apps/$andPart[1]'><img src='resource/pdfLogo.png' alt='pdf files'><br />" . $andPart[1] . "</a></td>";
        return $content;
    }
}
?>