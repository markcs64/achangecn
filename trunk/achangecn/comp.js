// Example:
// alert( readCookie("myCookie") );
var default_str_em = '<div id="basket">'
	+'<table align="center" width="95"><tr><td width="95" height="88" align="center" bgcolor="#FFFFFF">'
	+'<input type="image" src="http://icon.zol.com.cn/product/pro_comp/basket.gif" />'
	+'</td></tr></table></div>';
var lastScrollY = 0;
var default_str = '';
function readCookie(name){
	
	var cookieValue = "";
	var search = name + "=";
	if(document.cookie.length > 0){
		offset = document.cookie.indexOf(search);
		
		if (offset != -1){
			offset += search.length;
			end = document.cookie.indexOf(";", offset);
			if (end == -1) end = document.cookie.length;
		
			cookieValue = unescape(document.cookie.substring(offset, end))
		}
	}
	return cookieValue;
}
// Example:
// writeCookie("myCookie", "my name", 24);
// Stores the string "my name" in the cookie "myCookie" which expires after 24 hours.
function writeCookie(name, value, hours){
	var expire = "";
	if(hours != null){
		expire = new Date((new Date()).getTime() + hours * 3600000);
		expire = "; expires=" + expire.toGMTString();
	}
	document.cookie = name + "=" + escape(value) + expire;
}
function heartBeat(){
	var obj = document.getElementById("float");
	diffY	= document.body.scrollTop;
	//alert(diffY);
	percent = .1 * (diffY - lastScrollY);

	if(percent>0) percent = Math.ceil(percent);
	else percent = Math.floor(percent);
	if(navigator.appName == "Netscape"){
		obj.style.top = parseInt(obj.style.top) + percent + "px";
	}
	obj.style.pixelTop += percent;
	lastScrollY = lastScrollY + percent;
}
function gets_s(){
	alert(parseInt(lastScrollY));	
}
function hide(){
	var obj = document.getElementById("float");
	obj.style.display = "none";
}

function show(){
	obj = document.getElementById("float");
	//position:absolute;right:1px;top:100;filter:alpha(opacity=50);z-index:99;width:140;
	obj.style.position = "absolute";
	obj.style.right = "1px";
	obj.style.top = "100";
	obj.style.filter = "alpha(opacity=50)";
	//obj.style.z-index = "99";
	obj.style.left = "10";
	obj.style.width = "140";
	obj.style.display = "";
}

function redraw(){
    heartBeat();
    var tmp = readCookie("pro_str");
	var item_arr = new Array();
	item_arr = tmp.split("###");
	
	var floatstr = '';
	
	floatstr = '<form name="compare" method="post" target="_blank"><table width="162" border="0" cellspacing="0" cellpadding="0">'
		+'	<tr>'
		+'	  <td align="center"><img src="http://icon.zol.com.cn/product/pro_comp/comp_bg_top.gif" width="162" alt="" /></td>'
		+'	</tr><tr>'
		+'	  <td align="center" bgcolor="#ffffff" background="http://icon.zol.com.cn/product/pro_comp/comp_bg_line.jpg">';

	for(key in item_arr){
		if (key){
			//元素形如：2132|我的产品测试
			//alert(item_arr[key]);
			tmp_info_arr = item_arr[key].split("|");
			pid  = tmp_info_arr[0];
			names= tmp_info_arr[1];
			if (pid && names){
				ft = '<font color="#FFCC99" size="1">|</font><br>'
					+'<input type="button" name="name" value="'+names+'" onclick="del(\''+pid+"','"+names+'\')" style="border:1px solid;border-color:#FFCC99 ;background-color:#FFFFCC;height:24;width:140;cursor:hand;color:black;" title="单击取消该产品的比较"><input type="hidden" name="pro_id[]" value="'+pid+'" /><br>';
				floatstr = floatstr + ft;
			}
		}
	}

	floatstr += '<input type="hidden" name="subcatid" value="'+readCookie("subcat")+'"></td></tr>'
			+'<tr><td align="center" bgcolor="#ffffff" background="http://icon.zol.com.cn/product/pro_comp/comp_bg.jpg" style="background-repeat:no-repeat;">'
			+'<table width="97%"  border="0" cellspacing="0" cellpadding="0"><tr><td height="15"><td></tr>'
			+'<tr><td align="center"><a width="51"  onclick="hide_layer(\'float\')" style="cursor:hand;">隐 藏</a></td>'
			+'<td align="center"><a onclick="empty()" style="cursor:hand;">清 空</a></td></tr><tr><td height="6"><td></tr>'
			+'<tr align="center"><td colspan="2"><img src="http://icon.zol.com.cn/product/pro_comp/comp_button.jpg" width="99" height="28" style="cursor:hand;" onclick="comparecheck(\'/products/product_comp.php\');" alt="" />'
			+'</td></tr></table></td></tr><tr><td align="center">'
			+'<img valign="top" src="http://icon.zol.com.cn/product/pro_comp/comp_line_bottom.gif" width="162" alt="" /></td>'
			+'</tr></table></form>';
	var obj = document.getElementById("float");
	obj.style.left = "1px";
	if(navigator.appName == "Netscape"){
		obj.style.left = "23px";
	}
	obj.innerHTML = floatstr;
}
function empty(){
	var obj = document.getElementById("float");
	writeCookie("subcat","");
	writeCookie("pro_str","");
	redraw();
	obj.innerHTML = default_str_em;
}

function comparecheck(url){
	var obj = document.forms["compare"];
	if(url){
		obj.action = url;
	}
	var mark = 0;
	var l = obj.elements.length;
	for(var k=0;k<l;k++){
		if (obj.elements[k].name=="pro_id[]" && obj.elements[k].value!=""){
			//alert(obj.elements[k].name+"===第"+k+"个元素==="+obj.elements[k].value);
			if (obj.elements[k].value.indexOf("undefined")!=(-1)){
				obj.elements[k].value=obj.elements[k].value.replace("undefined","");
			}
			mark++;
		}
	}
	if(mark<2) {
		alert("系统提示：请至少选择两款产品进行对比！！！\r\n"
				+"选择方法：点击对应产品的“加到对比篮”即可添加该产品到产品对比篮。\r\n"
				+"删除方法：点击比较篮中的产品名称即可完成去除对比篮中相应的产品。"); 
	}else {
		obj.submit();
	}
}

//pro_str:产品字符串
//subcat :子类字符串
function add(subcatid,pid,names){
  
	//检查是否为相同的子类 
	subcat_id_change(subcatid,pid,names) 
	//读出产品串后用函数返回一个数组 
	var tmp = readCookie("pro_str"); 
	//检查数组的个数（即选择产品的个数）
	var tmp_arr = new Array();
	tmp_arr = stringToArray(tmp,"###");
	if (tmp_arr.length<6){
	//看是否有相同的产品已被选择
	//alert(tmp+"=="+pid+"==="+tmp.indexOf(pid));
		if (tmp.indexOf(pid)!=-1){
			alert("（"+names+"）已经被选择了！！！");
		}else{
			writeCookie("pro_str",tmp+pid+"|"+names+"###"); 
		}
	}else{
		alert("对不起，您只能选择五款同类产品比较！！！");
	}
	redraw();
	writeCookie("hid_float", 0, 100);
}
//该函数功能是 
function subcat_id_change(subcat,id,name){
	//alert("函数参数subcatid="+subcat);
	var tmp_subcat = readCookie("subcat");
	if (tmp_subcat==null || tmp_subcat==""){
		//还没有选择产品呢！！！
		writeCookie("subcat",subcat);
		//alert(readCookie("zol_pro_cmp_subcat"));
	}else if (subcat != tmp_subcat){
		//选择另类产品 
		writeCookie("subcat",subcat);
		writeCookie("pro_str","");
	}
}
//用指定的字符串div切开str字符串后返回一个数组 
function stringToArray(str,div){
	objArr = str.split(div);
	return objArr;
}
function del(pid,name){
	var tmp = readCookie("pro_str"); 
	//alert(tmp);
	//alert(pid+"|"+name+"###");
	//alert(tmp.replace(pid+"|"+names+"###"));
	writeCookie("pro_str",tmp.replace(pid+"|"+name+"###"));
	tmp = readCookie("pro_str"); 
	//如果没有产品了，自动清空subcat
	if (tmp=="" || tmp==null){
		writeCookie("subcat","");
	}
	redraw();
  
}
function hide_layer(id){
	var obj = document.getElementById(id);
	obj.style.left = "-1000px";
	//obj.style.display = 'none';
	writeCookie("hid_float", 1, 100);
}

function aaaa(){
	var obj = document.getElementById("float");
	hide_layer("float");
	var tmp = readCookie("pro_str");
	if(!tmp){
		obj.innerHTML = default_str;
	}
	
}

window.setInterval("heartBeat()",1);
redraw();
aaaa();
