// Min Width
if(document.getElementById('titlename')){
if ((navigator.appName == "Microsoft Internet Explorer") && (parseInt(navigator.appVersion) >= 3))
{
if(document.getElementById('titlename').scrollWidth<175){document.getElementById('titlename').style.width='13.8em';}
}
}
// 4V
YUE.on(window,"load",function(){
try{
var titles = YUD.getElementsByClassName('titlename','div',document.body);
if(AE.browse.isIE){
for(var i=0 , n = titles.length;i<n;i++){
	if(titles[i].offsetWidth<180){
YUD.setStyle(titles[i],"width","180px");
}
}
}
}catch(E){}

})
