use strict;
use URI::Escape;

#my $cmd ="curl -k https://www.google.com/accounts/ClientLogin -d Email\\=pdfpaper77\@gmail.com -d Passwd\\=hexa2gon -d accountType\\=GOOGLE -d source\\=Google-cURL-Example -d service\\=wise";

my @color  = ("red", "blue", "green", "black", "purple", "black", "black", "black", "brown", "black");


#my $key="0Asrbu42htgAodHo4Mk12ZWRUcDdCdDNIdDJtbXFNaGc";
#my $page=$ARGV[0];
#my $file="keypage$key-$page.txt";

my $f=$ARGV[0];



parsefile ($f);

my $file="test.txt";

# downloadstuff ($key,$page, $file);
 printheader1();
 printheader2 ($file);
 printheader3 ();
 printbody ($file);
 printtail ();

print "<img src = 'white.png' height =500> </body>/</html>\n";
sub parsefile {
open (FILE, $f) or die ("nnc");

my @file = <FILE>;
my $scr="";
foreach my $line (@file){
     
	$line=~s/\. /#/g;
      $line=~s/\s*$//;
        $scr .="$line ";
}

  #$scr=~s/\.\s/#/g;
  $scr=~s/\&/-/g;
  $scr=~s/\‘//g;
    $scr=~s/\!/#/g;
      $scr=~s/\?/#/g;
#  $scr=~s/\:/#/g;
  $scr=~s/\;//g;  
        $scr=~s/"//g;
          $scr=~s/'//g;
          my @filex = split ('#', $scr);


open (FILET, ">test.txt") or die ("npr");

          foreach my $line (@filex){

               print FILET $line . "\n";

          }
print FILET "\nEND1";
print FILET "\nEND2\n";
close (FILET);
close (FILE);



}


sub printbody {
my ($file) = @_;
open (FILE, $file) or die ("nn");
my @filex= <FILE>;


my $scr = "";

foreach my $line (@filex){
$line=~s/\s*$//;
$scr .="$line" . "#";
}

$scr=~s/\. /#/g;
$scr=~s/\!/#/g;
$scr=~s/\?/#/g;
$scr=~s/\:/#/g;
$scr=~s/\;/#/g;

$scr=~s/\#/\n/g;
my @file = split ("\n", $scr);
#=split /[:,\s\/]+/,
#my @color=



my $i=0;
print "newsText[0] = \"..\"\;\n";
print "speakText[0] = \"0\"\;\n";
print "arrx[0]=\"boldStuff0\"\;\n";
print "trrx[0]=\"100\";\n";
print "tospeak[0]=\"0\";\n";

foreach my $line (@file){

$line = $line . '.';

$line=~s/\s*$//;
  $line=~s/\"/\\"/g;
my @cr = split ("\t", $line);
 my $z=addnewline($cr[0]);
 my $y=addnewline($cr[1]);

 
my $x=qq(newsText[$i] ="<pre>$z</pre>";\n);   

print $x;
print "arrx[$i]=\"boldStuff$i\"\;\n";
print "speakText[$i]=\"$cr[0]\"\;\n";
print "tospeak[$i]=\"$cr[2]\"\;\n";
print "img[$i]=\"<img src=\'$cr[3]\' height=0>\"\;\n";
print "trrx[$i]=\"1000\"\;\n";
$i++;
}
}

sub printtail {

my $heredoc = <<END;
var ttloop = 1;    // Repeat forever? (1 = True; 0 = False)
var tspeed = 20;   // Typing speed in milliseconds (larger number = slower)
var tdelay = 1000; // Time delay between newsTexts in milliseconds
var obj="";
// ------------- NO EDITING AFTER THIS LINE ------------- \\
var dwAText, cnews=0, eline=0, cchar=0, mxText, xnews=0;

function doNews() {
  mxText = newsText.length - 1;
  dwAText = newsText[cnews];
tdelay = trrx[cnews]
  setTimeout("addChar()",100)
obj =arrx[cnews]

}
function addNews() {
  cnews += 1;
obj2 = speakText[cnews];

     if (tospeak[cnews]>0){
      setTimeout("speak(obj2)",tspeed)
    }
var obj3=img[cnews];
//test=document.getElementById("ttrd");
//test.style.backgroundImage="url('https://lh3.googleusercontent.com/-LKq1jcgX094/UEQO8wBH9pI/AAAAAAAAAeo/adBGPHEf_W8/s640/IMAGE_3BBA513A-7985-47E2-923A-916B6111CB60.JPG')";
//ttrd.innerHTML=obj3;




  if (cnews <= mxText) {
    dwAText = newsText[cnews];
    if (dwAText.length != 0) {
obj =arrx[cnews]
tdelay = trrx[cnews]    
    	document.getElementById(obj).innerHTML=""
      eline = 0;
      setTimeout("addChar()",tspeed)
    }
  }
}
function addChar() {

  if (eline!=1) {
    if (cchar != dwAText.length) {
      nmttxt = ""; for (var k=0; k<=cchar;k++) nmttxt += dwAText.charAt(k);
obj =arrx[cnews]
tdelay = trrx[cnews]
      document.getElementById(obj).innerHTML = nmttxt;
      cchar += 1;
obj =arrx[cnews]
tdelay = trrx[cnews]
      if (cchar != dwAText.length) document.getElementById(obj).innerHTML += "_";
    } else {
      cchar = 0;
      eline = 1;
    }
    if (mxText==cnews && eline!=0 && ttloop!=0) {
      cnews = 0; setTimeout("addNews()",tdelay);
    } else setTimeout("addChar()",tspeed);
  } else {
    setTimeout("addNews()",tdelay)
  }
}

doNews()
</script>





 
END
print $heredoc;



}


sub printheader3 {
my $heredoc = <<END;
</tr>
</t/body></table>

<script type="text/javascript">

function display_c(start){
        window.start = parseFloat(start);
            var end = 0 // change this to stop the counter at a higher value
                var refresh=1000; // Refresh rate in milli seconds
                    if(window.start >= end ){
                                mytime=setTimeout('display_ct()',refresh)
                                    } else {
                                                alert("Time Over ");
                                                    }
}

function display_ct() {
        // Calculate the number of days left
            var days=Math.floor(window.start / 86400);
                // After deducting the days calculate the number of hours left
                    var hours = Math.floor((window.start - (days * 86400 ))/3600)
                        // After days and hours , how many minutes are left
                            var minutes = Math.floor((window.start - (days * 86400 ) - (hours *3600 ))/60)
                                // Finally how many seconds left after removing days, hours and minutes.
                                    var secs = Math.floor((window.start - (days * 86400 ) - (hours *3600 ) - (minutes*60)))

                                        var x = window.start + "(" + days + " Days " + hours + " Hours " + minutes + " Minutes and " + secs + " Secondes " + ")";


                                            document.getElementById('ct').innerHTML = x;
                                                window.start= window.start- 1;

                                                    tt=display_c(window.start);
}

function stop() {
        clearTimeout(mytime);
}

</script>












<script language="JavaScript">
var newsText = new Array();
var speakText = new Array ();
var img = new Array ();
var arrx = new Array();
var trrx = new Array();
var tospeak = new Array();
END
print $heredoc;
}





sub downloadstuff {
my ($key, $page, $file) = @_;
my $cmd ="curl -k https://www.google.com/accounts/ClientLogin -d Email\\=datapranjan77.1\@gmail.com -d Passwd\\=!hexa2gon! -d accountType\\=GOOGLE -d source\\=Google-cURL-Example -d service\\=wise";

my $infoFromGoogle = `$cmd`;

my ($sid, $lsid, $auth) = split ("\n", $infoFromGoogle);

#print $auth;


$auth=~s/.*=//;
print STDERR "$auth\n";
#my $header ="curl --silent --header \"Authorization: GoogleLogin auth\=$auth\"";
my $header ="curl --silent --header \"Authorization: GoogleLogin auth\=$auth\"";
my $url2 = "https://spreadsheets.google.com/feeds/download/spreadsheets/Export?key=$key\\&gid=$page\\&exportFormat=tsv";


my $downloadurl ="$header $url2";



system ("$downloadurl >$file");




}



sub printheader1 {

my $heredoc = <<END;
<html><head>
<script src="speakClient.js"></script>
<script src="floating-1.12.js"></script>

<div id="floatdiv" style="  
position:absolute; 
padding:16px;background:#FFFFFF;  
width:0px;height:0px;top:0px;right:0px;
    border:0px solid #2266AA;  
    z-index:1">  
<span id="ttrd"><img src="" height=1>
</span>
    </div>  
      
    <script type="text/javascript">  
        floatingMenu.add('floatdiv',  
            {  
                // Represents distance from left or right browser window  
                // border depending upon property used. Only one should be  
                // specified.  
                 //targetLeft: 100,  
                targetRight: 150,  
      
                // Represents distance from top or bottom browser window  
                // border depending upon property used. Only one should be  
                // specified.  
                targetTop: 10,  
                //targetBottom: 300,  
      
                // Uncomment one of those if you need centering on  
                // X- or Y- axis.  
                // centerX: true,  
                // centerY: true,  
      
                // Remove this one if you don't want snap effect  
                snap: true  
            });  
    </script>  


<input type="button" value="Start Timer" onmouseover="display_c(87000);"/> | <input type="button" value="End Timer" onclick="stop();"/>
<span id='ct' style="background-color: #FFFF00"></span>



<body>
<table border="1">
<tbody><tr> 
END
print $heredoc; 
}

sub printheader2 {
my ($file) = @_;
open (FILE, $file) or die ("nn");
my @file = <FILE>;
my $xs=-1;
foreach my $line (@file){
$xs++;
#next if ($xs <2);
$line=~s/\s*$//;
  $line=~s/\"/\\"/g;
my @cr = split ("\t", $line);
 my $z=addnewline($cr[0]);
 my $y=addnewline($cr[1]);

 
#my $xg="<button>$z</button>";   
my $xg="<button>$xs</button>";   



my $x = qq(<td  id="boldStuff$xs"><div style="word-wrap: break-word;">$xg</div></td>\n);
print $x;

#if (($xs%2)==0){

  print "</tr><tr>\n";
#}
}
}


 sub addnewline {

  my ($xp) = @_;

  my @splitx = split (" ",$xp);

 my $retx = "";
 my $rety = "";
my $i=0;
  foreach my $line (@splitx) {
$i++;
 $rety .="$line ";

 if ($i >5){
my $xc = int (rand(10));
my $color = $color[$xc];
$retx .="<font color=\'$color\'>$rety</font></br>";
 $i=0;
$rety="";
}

if ($line eq "<br>"){
$i=0;
}

 }
if ($rety){
my $xc = int (rand(10));
my $color = $color[$xc];

$retx .="<font color=\'$color\'>$rety</font>";
}


return "$retx";
}
