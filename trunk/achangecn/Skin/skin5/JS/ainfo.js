var domain = "taobao.com";
var hostName=location.hostname;
if(hostName){
	var hostArray=hostName.split(".");
	if(hostArray && hostArray.length>=2){
		 domain = hostArray[hostArray.length-2]+"."+hostArray[hostArray.length-1];
	}
	if(domain.indexOf("taobao")<0){
		domain = "taobao.com";
	}
}else{
 domain = "taobao.com";
}
//var purl="http://cn.adserver.yahoo.com/a?f=2121060002&p=cn&l=PUC&c=sh&bg=white";
var purl="http://www."+domain+"/adver/2005jumpyahoo.php";
var MSIE=navigator.userAgent.indexOf("MSIE 6.0");
function getCookieVal (offset){
	var endstr = document.cookie.indexOf (";", offset);
	if (endstr == -1)
		endstr = document.cookie.length;
	return unescape(document.cookie.substring(offset, endstr));
}

function GetCookie (name){
	var arg = name + "=";
	var alen = arg.length;
	var clen = document.cookie.length;
	var i = 0;
	while (i < clen) {
		var j = i + alen;
		if (document.cookie.substring(i, j) == arg)
			return getCookieVal (j);
			i = document.cookie.indexOf(" ", i) + 1;
			if (i == 0) break; 
		}
	return null;
}

function yahoo_ad(){
	var yahoo_adinfo =  GetCookie ("yahoo_adinfo") ;
	if(yahoo_adinfo != null){
		var currentTime = (new Date()).getTime();
		if((currentTime-yahoo_adinfo)/1000 > 1 && (currentTime-yahoo_adinfo)/1000 < 24*3600 && MSIE !=-1){
			var	n	=   window.event.screenX   -   window.screenLeft;   
      var b	=   n   >   document.body.clientWidth-20;  
			if(b   &&   window.event.clientY   <   0  )  {
				var newyahoo_adinfo=(new  Date()).getTime()-24  *  3600000;
				var expire  =  new  Date((new  Date()).getTime()  +  24  *  3600000);
				document.cookie="yahoo_adinfo="+newyahoo_adinfo+";path=/;domain=."+domain+";expires="+expire.toGMTString();
				var width=760;
				var height=480;
				var left = ( screen.width - width ) / 2;
				var top  = ( screen.height - height ) / 2;												
				window.open(purl,"_blank","width="+width+",height="+height+",left="+left+",top="+top+",toolbar=no,location=no,directories=no,status=yes,resizable=no,scrollbars=no");				
				window.focus();									
			}
		}
	}else{		
		yahoo_adinfo=(new  Date()).getTime();
		var expire  =  new  Date((new  Date()).getTime()  +  24  *  3600000);  		  		   
		document.cookie="yahoo_adinfo="+yahoo_adinfo+";path=/;domain=."+domain+";expires="+expire.toGMTString();
	}		
}
   
//window.open("http://www.taobao.com?"+domain);
if(window.attachEvent){
   // window.attachEvent('onbeforeunload',yahoo_ad);
}else if (window.addEventListener) {
	//window.addEventListener('beforeunload', yahoo_ad, false);
}
