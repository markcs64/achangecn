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
			//Ԫ�����磺2132|�ҵĲ�Ʒ����
			//alert(item_arr[key]);
			tmp_info_arr = item_arr[key].split("|");
			pid  = tmp_info_arr[0];
			names= tmp_info_arr[1];
			if (pid && names){
				ft = '<font color="#FFCC99" size="1">|</font><br>'
					+'<input type="button" name="name" value="'+names+'" onclick="del(\''+pid+"','"+names+'\')" style="border:1px solid;border-color:#FFCC99 ;background-color:#FFFFCC;height:24;width:140;cursor:hand;color:black;" title="����ȡ���ò�Ʒ�ıȽ�"><input type="hidden" name="pro_id[]" value="'+pid+'" /><br>';
				floatstr = floatstr + ft;
			}
		}
	}

	floatstr += '<input type="hidden" name="subcatid" value="'+readCookie("subcat")+'"></td></tr>'
			+'<tr><td align="center" bgcolor="#ffffff" background="http://icon.zol.com.cn/product/pro_comp/comp_bg.jpg" style="background-repeat:no-repeat;">'
			+'<table width="97%"  border="0" cellspacing="0" cellpadding="0"><tr><td height="15"><td></tr>'
			+'<tr><td align="center"><a width="51"  onclick="hide_layer(\'float\')" style="cursor:hand;">�� ��</a></td>'
			+'<td align="center"><a onclick="empty()" style="cursor:hand;">�� ��</a></td></tr><tr><td height="6"><td></tr>'
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
			//alert(obj.elements[k].name+"===��"+k+"��Ԫ��==="+obj.elements[k].value);
			if (obj.elements[k].value.indexOf("undefined")!=(-1)){
				obj.elements[k].value=obj.elements[k].value.replace("undefined","");
			}
			mark++;
		}
	}
	if(mark<2) {
		alert("ϵͳ��ʾ��������ѡ�������Ʒ���жԱȣ�����\r\n"
				+"ѡ�񷽷��������Ӧ��Ʒ�ġ��ӵ��Ա�����������Ӹò�Ʒ����Ʒ�Ա�����\r\n"
				+"ɾ������������Ƚ����еĲ�Ʒ���Ƽ������ȥ���Ա�������Ӧ�Ĳ�Ʒ��"); 
	}else {
		obj.submit();
	}
}

//pro_str:��Ʒ�ַ���
//subcat :�����ַ���
function add(subcatid,pid,names){
  
	//����Ƿ�Ϊ��ͬ������ 
	subcat_id_change(subcatid,pid,names) 
	//������Ʒ�����ú�������һ������ 
	var tmp = readCookie("pro_str"); 
	//�������ĸ�������ѡ���Ʒ�ĸ�����
	var tmp_arr = new Array();
	tmp_arr = stringToArray(tmp,"###");
	if (tmp_arr.length<6){
	//���Ƿ�����ͬ�Ĳ�Ʒ�ѱ�ѡ��
	//alert(tmp+"=="+pid+"==="+tmp.indexOf(pid));
		if (tmp.indexOf(pid)!=-1){
			alert("��"+names+"���Ѿ���ѡ���ˣ�����");
		}else{
			writeCookie("pro_str",tmp+pid+"|"+names+"###"); 
		}
	}else{
		alert("�Բ�����ֻ��ѡ�����ͬ���Ʒ�Ƚϣ�����");
	}
	redraw();
	writeCookie("hid_float", 0, 100);
}
//�ú��������� 
function subcat_id_change(subcat,id,name){
	//alert("��������subcatid="+subcat);
	var tmp_subcat = readCookie("subcat");
	if (tmp_subcat==null || tmp_subcat==""){
		//��û��ѡ���Ʒ�أ�����
		writeCookie("subcat",subcat);
		//alert(readCookie("zol_pro_cmp_subcat"));
	}else if (subcat != tmp_subcat){
		//ѡ�������Ʒ 
		writeCookie("subcat",subcat);
		writeCookie("pro_str","");
	}
}
//��ָ�����ַ���div�п�str�ַ����󷵻�һ������ 
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
	//���û�в�Ʒ�ˣ��Զ����subcat
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
