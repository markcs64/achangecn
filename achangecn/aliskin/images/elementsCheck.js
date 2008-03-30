

function  fucCheckLength(strTemp) {  
	var  i,sum;  
	sum=0;  
	for(i=0;i<strTemp.length;i++) {  
		if ((strTemp.charCodeAt(i)>=0)  &&  (strTemp.charCodeAt(i)<=255))  
		   sum=sum+1;  
		else  
		   sum=sum+2;  
	}  
	return  sum;  
}  

var oldValue;

function setMaxTxt(obj,num) {
  var e = obj;
  if(e.value.length < oldValue.length) return;
  if(!num) return true;
  if(e.value.replace(/[^\x00-\xff]/g, 'oo').length>num){
	var newStr = e.value.substring(oldValue.length);
	e.value = getValidTxt(oldValue,newStr,num);
	if(e.value=="undefined") {
		e.value="";
	}
  }
}

function getValidTxt(oldStr,newStr,maxLength) {
	var result = oldStr + newStr;
	var tempStr = "";

	if(fucCheckLength(result) <= maxLength) {
		return result;
	}
	else {
		result = oldStr;

		for(var i=0; i<(maxLength-fucCheckLength(oldStr)+1); i++) {		
			tempStr = newStr.substring(i,i+1);
			if(fucCheckLength(tempStr+result) <= maxLength) {
				result +=tempStr;
			}
			else
			{
				return result;
			}
		}
	}
}

var postfix = new Array(
	"163.com",
	"sina.com",
	"hotmail.com",
	"yahoo.com.cn",
	"126.com",
	"sohu.com",
	"21cn.com",
	"eyou.com",
	"sina.com.cn",
	"qq.com"
);

function setSelect(obj){
	for(i=0;i<postfix.length;i++){
		var dval = false;
		if(i==0){
			dval = true;
		}
		obj.options[i] = new Option(postfix[i],postfix[i],dval,false);
	}
	obj.options[postfix.length]= new Option("其他","other",false,false);
}

// Email Select
var isOther = false;
function selOther(obj){
	if(obj.value=="other"){
		obj.style.display="none";
		document.getElementById('mail_post').style.display="";
		isOther=true;
	}
}

function initialEmail( initialValue, selects, input ){
	if( !initialValue || (initialValue.length <=0) )
		return;
	var atindex = initialValue.indexOf("@");
	if( atindex < 0 )return;
	var thisPrefix = initialValue.substring(0,atindex);
	var thisPostfix = initialValue.substring(atindex+1);
	document.getElementById('emailprefix').value = thisPrefix;
	for(i=0;i<postfix.length;i++){
		if( postfix[i] == thisPostfix ){
			isOther = false;
			selects.value = thisPostfix;
			return;
		}
	}
	isOther = true;
	selects.style.display="none";
	input.style.display="";
	input.value = thisPostfix;
}



//Email正确性检验    
function  isValidEmail(strEmail) {
	if (strEmail.search(/^\w+((-\w+)|(.\w+))*@[A-Za-z0-9]+((.|-)[A-Za-z0-9]+)*.[A-Za-z]+$/) != -1) {
		if( strEmail.indexOf(" ") >=0 ){
			return false;
		}
		var index1 = strEmail.indexOf("@");
		var index2 = strEmail.lastIndexOf(".");
		if( (index2 > index1) && ( index1 > 0 ))
			return true;
	} 
	return false;
} 

//将全角字符转化为半角字符
function sbcTodbc(str) {
	var Letter_sbc = "０１２３４５６７８９ＡＢＣＤＥＦＧＨＩＪＫＬＭＮＯＰＱＲＳＴＵＶＷＸＹＺａｂｃｄｅｆｇｈｉｊｋｌｍｎｏｐｑｒｓｔｕｖｗｘｙｚ，；－";
	var Letter_dbc = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz,;-";
	var reStr = "";
	for(var i=0; i<str.length; i++){
		if(Letter_sbc.indexOf(str.charAt(i)) != -1) {
			reStr = reStr + Letter_dbc.charAt(Letter_sbc.indexOf(str.charAt(i)));
		}else {
			reStr = reStr + str.charAt(i);
		}
	}
	return reStr;
}

//检查是否为中文汉字
function isChinese(str){
   var re1 = new RegExp("^[\u4E00-\uFA29]*$");       //汉字的范围
   var re2 = new RegExp("^[\uE7C7-\uE7F3]*$");
   var str = str.replace(/(^\s*)|(\s*$)/g,'');
   if (!(re1.test(str) && (! re2.test(str)))){
      return false;              //是中文
   }
   return true;
}

//公司名称黑名单过滤
function checkBlacklist(str){
	var blackList = ["个人","学生"];
	for(var i=0; i<blackList.length; i++) {
		if(str.indexOf(blackList[i]) != -1) {
			return true;	
		}
	}
	return false;
}




//测试联系人
function checkpersonName(personName){
	var count = 0;
	for(var i=0; i<personName.length; i++) {
		if(isChinese(personName.charAt(i))) {
			count = count+2;
		}else if((personName.charAt(i)<='z' && personName.charAt(i)>='a') || (personName.charAt(i)<='Z' && personName.charAt(i)>='A')) {
			count++;
		}else if((personName.charAt(i) == ' ') && (i != 0) && (i != personName.length-1)){
			count++;
		}else {
			return true;
		}
	}
	if(count<4) {
		return true;
	}else {
		return false;
	}
}

//测试公司名称和公司地址
function checkCompany(str){
	flag = true;
	for(var i=0; (i<str.length-1 && i<4); i++) {
		if(str.charAt(i) != str.charAt(i+1)) {
			flag = false;
			break;
		}
	}
	if(flag) {
		return true;
	}
	var count = 0;
	var countNum = 0;
	for(var i=0; i<str.length; i++) {
		if(isChinese(str.charAt(i))) {
			count = count+2;
		}else if(str.charAt(i)<='9' && str.charAt(i)>='0'){
			count++;
			countNum++;
		}else if((str.charAt(i) == ' ') && ((i == 0) || (i != str.length-1))){
			return true;
		}else {
			count++;
		}
	}
	if(countNum == str.length) {
		return true;
	}
	if(count<8) {
		return true;
	}else {
		return false;
	}
}

	

//校验区号列表
function checkphoneArea(str){
	var areaList = ["010","020","021","022","023","024","025","027","028","029","0310","0311","0312","0313","0314","0315","0316","0317","0318","0319","0335","0349","0350","0351","0352","0353","0354","0355","0356","0357","0358","0359","0370","0371","0372","0373","0374","0375","0376","0377","0378","0379","0391","0392","0393","0394","0395","0396","0397","0398","0410","0411","0412","0413","0414","0415","0416","0417","0418","0419","0421","0427","0429","0431","0432","0433","0434","0435","0436","0437","0438","0439","0440","0448","0451","0452","0453","0454","0455","0456","0457","0458","0459","0464","0467","0468","0469","0470","0471","0472","0473","0474","0475","0476","0477","0478","0479","0482","0483","0510","0511","0512","0513","0514","0515","0516","0517","0518","0519","0520","0523","0527","0530","0531","0532","0533","0534","0535","0536","0537","0538","0539","0543","0546","0550","0551","0552","0553","0554","0555","0556","0557","0558","0559","0561","0562","0563","0564","0565","0566","0570","0571","0572","0573","0574","0575","0576","0577","0578","0579","0580","0591","0592","0593","0594","0595","0596","0597","0598","0599","0631","0632","0633","0634","0635","0660","0661","0662","0663","0668","0691","0692","0701","0710","0711","0712","0713","0714","0715","0716","0717","0718","0719","0722","0724","0727","0728","0730","0731","0732","0733","0734","0735","0736","0737","0738","0739","0743","0744","0745","0746","0750","0751","0752","0753","0754","0755","0756","0757","0758","0759","0760","0762","0763","0765","0766","0768","0769","0770","0771","0772","0773","0774","0775","0776","0777","0778","0779","0790","0791","0792","0793","0794","0795","0796","0797","0798","0799","0811","0812","0813","0816","0817","0818","0825","0826","0827","0830","0831","0832","0833","0834","0835","0836","0837","0838","0839","0851","0854","0855","0856","0857","0858","0859","0870","0871","0872","0873","0874","0875","0876","0877","0878","0879","0881","0883","0886","0887","0888","0889","0890","0891","0892","0893","0894","0895","0896","0897","0898","0899","0900","0901","0902","0903","0904","0905","0906","0907","0908","0909","0910","0911","0912","0913","0914","0915","0916","0917","0919","0930","0931","0932","0933","0934","0935","0936","0937","0938","0939","0941","0943","0951","0952","0953","0954","0970","0971","0972","0973","0974","0975","0976","0977","0978","0979","0990","0991","0992","0993","0994","0995","0996","0997","0998","0999","08015","08016","08017","08018","08020","08023","08024","08025","08026","08027","08028","08029","08030","08031","08032","08033","08034","08038","08040","08044","08047","08048","08049","08050","08051","08053","08054","08055","08056","08057","08058","08059","08060","08061","08062","08063","08065","08067","08068","08069","08070","08071","08072","08074","08075","08076","08077","08078","08081","08082","08282","08283","08284","08285","08286","08287","08288","08289","08291","08292","08293","08294","08295","08296","08297","08298","08299","08407","08467","08489","08491","08493","08494","08498","08631","08632","08633","08634","08635","08640","08641","08642","08643","08644","08645","08646","08648","08649","08650","08670","09820","09829","09830","09831","09832","09833","09834","09835","09837","09838","09839","09840","09841","09842","09844","09846","09847","09848","09849","09851","09852","09853","09854","09855"];
	for(var i=0; i<areaList.length; i++) {
		if((str.indexOf(areaList[i]) != -1) && (areaList[i].indexOf(str) != -1)) {
			return false;
		}
		var strs = "0" + str;
		if((strs.indexOf(areaList[i]) != -1) && (areaList[i].indexOf(strs) != -1)) {
			return false;
		}
	}
	return true;
}

//测试联系电话中的电话号码
function checkphoneNumber(phoneNumber){
	if(phoneNumber.length < 7) {
		return true;
	}else {
       	var legalNum = "1234567890";
		var legalStr = ",;-/、转";
		var count=0;
		for(var i=0; i<phoneNumber.length; i++){
			if((legalNum.indexOf(phoneNumber.charAt(i)) == -1) && (legalStr.indexOf(phoneNumber.charAt(i)) == -1)) {
				return true;
			}else if(legalNum.indexOf(phoneNumber.charAt(i)) != -1) {
				count++;
			}
			if(i==6) {
				if(count != 7) {
					return true;
				}
			}
		}
		//电话号码不能以"12"开头
		if(phoneNumber.charAt(0) == 1 && phoneNumber.charAt(1) == 2) {
			return true;
		}
		//电话号码的前7位不能全部相同
		count = 0
		for(var i=0; i<6; i++) {
			if(phoneNumber.charAt(i) != phoneNumber.charAt(i+1)) {
				break;
			}
			count++;
		}
		if(count == 6) {
			return true;
		}
		return false;
	}
}

//测试移动电话
function checkmobilePhone(mobilePhone){
	if(mobilePhone.length < 7) {
		return true;
	}else {
		var legalNum = "1234567890";
		var legalStr = ",;-/、转";
		for(var i=0; i<phoneNumber.length; i++){
			if((legalNum.indexOf(phoneNumber.charAt(i)) == -1) && (legalStr.indexOf(phoneNumber.charAt(i)) == -1)) {
				return true;
			}
		}
	}
}



// 检测必填项 ==================================================================>

//检测姓名
function checkNameOnSubmit()
{
		var msg = document.getElementById("name_error");
    var name = document.getElementById("name").value; 
    	
		msg.style.display = "none";//不显示
		
    if (name == "" ){
			msg.style.display = "block";//显示
			msg.innerText = "请填上您的真实姓名！";
      return false;
    }else{
    		name = sbcTodbc(name);
			if(checkpersonName(name)) {
				msg.style.display = "block";//显示
				msg.innerText = "联系人填写有误！";
     		return false;
			}
    }
    return true;
}

//检测公司名
function checkCompanyOnSubmit()
{
		var msg = document.getElementById("company_error");
    var companyName = document.getElementById("companyName").value;
		
		msg.style.display = "none";//不显示
    if (companyName == ""){
			msg.style.display = "block";//显示
			msg.innerText = "请填上贵公司名称！";
      return false;
    }else {
			companyName = sbcTodbc(companyName);
			if(checkCompany(companyName) || checkBlacklist(companyName)) {
				msg.style.display = "block";//显示
				msg.innerText = "公司名称填写有误！";
        return false;
			}
    }
    return true;
}

//检测固定电话区号
function checkPhoneAreaOnSubmit()
{
		var msg = document.getElementById("phoneNumber_error");
    var workPhoneArea	= document.getElementById("workPhoneArea").value;
    	
    msg.style.display = "none";//不显示
    
    if( workPhoneArea == "" ){
				msg.style.display = "block";//显示
				msg.innerText = "请填全贵公司联系电话！";
        return false;
    }else{
   		workPhoneArea = sbcTodbc(workPhoneArea);
                document.getElementById("workPhoneArea").value = workPhoneArea;
    	if (checkphoneArea(workPhoneArea)) {
				msg.style.display = "block";//显示
				msg.innerText = "城市区号填写有误！";
        return false;
   		}
    }
    return true;
}
//检测固定电话的号码
function checkPhoneNumberOnSubmit()
{
		var msg = document.getElementById("phoneNumber_error");
    var workPhoneNumber 	= document.getElementById("workPhoneNumber").value;
    	
    msg.style.display = "none";//不显示
	
    if( workPhoneNumber == "" ){
				msg.style.display = "block";//显示
				msg.innerText = "请填全贵公司联系电话！";
        return false;
    }else{
    	workPhoneNumber = sbcTodbc(workPhoneNumber);
    	if (checkphoneNumber(workPhoneNumber)) {
				msg.style.display = "block";//显示
				msg.innerText = "电话号码填写有误！";
        return false;
    	}
	
    }
    return true;
}

//检测固定电话（包括国家号，区号，号码）
function checkPhoneOnSubmit()
{
  	var countryCode = document.getElementById("countryCode").value;
  	var error_flag=0;
    if(countryCode=="+86")
    {
    	if(checkPhoneAreaOnSubmit()==false)
    		error_flag=1;
    	else
    	{
    		if(checkPhoneNumberOnSubmit()==false)
    			error_flag=1;
    	}
    }
    else   //非中国大陆
    {
    	if(checkPhoneNumberOnSubmit()==false)
    		error_flag=1;
    }
    if(error_flag==0)
    	return true;
    else
    	return false;
}

//检测公司地址（不包括国家省市等信息）
function checkAddressOnSubmit_sm()
{
		var error_flag = 0;
    var detailAddress 			= document.getElementById('address').value;
    
		var msg = document.getElementById("address_error");//详细地址错误
			msg.style.display = "none";//不显示
		
		
    if (detailAddress == "" ){
				var msg = document.getElementById("address_error");
					msg.style.display = "block";//显示
					msg.innerText = "请填上贵公司地址！";
          error_flag    = 1;
          
		
    }else {
			detailAddress = sbcTodbc(detailAddress);
			if(checkCompany(detailAddress)) {
					msg.style.display = "block";//显示
					msg.innerText = "公司地址填写有误！";
          error_flag    = 1;
			}

		
    }	

    if(error_flag==0)
    	return true;
    else
    	return false;

}

//检测公司地址（包括国家省市等信息）
function checkAddressOnSubmit()
{
		var error_flag = 0;
		
    var country 			  = document.getElementById('country').value;
    var province 			= document.getElementById('province').value;
    var city 		    	= document.getElementById('city').value;
    var county 		    	= document.getElementById('county').value;
    var detailAddress 			= document.getElementById('companyAddress').value;
    
		var msg = document.getElementById("address_error");//详细地址错误
			msg.style.display = "none";//不显示
		var msg1 = document.getElementById("address_error1");//地址位置错误（国家省市等信息）
			msg1.style.display = "none";//不显示
		
		
    if (detailAddress == "" ){
				var msg = document.getElementById("address_error");
					msg.style.display = "block";//显示
					msg.innerText = "请填上贵公司地址！";
          error_flag    = 1;
          
		
    }else {
			detailAddress = sbcTodbc(detailAddress);
			if(checkCompany(detailAddress)) {
					msg.style.display = "block";//显示
					msg.innerText = "公司地址填写有误！";
          error_flag    = 1;
			}

		
    }	
		if(country=="China")
		{
	    if ( province == "" || city  == "" ||  county  == "" ||
	         province == "unChoose" || city  == "unChoose" ||  county  == "unChoose" ||
	         province == undefined || city  == undefined ||  county  == undefined ){
					 msg1.style.display = "block";//显示
					 msg1.innerText = "请选择您的地区！";
	         error_flag    = 1;
	     }
	  }
	  else
	  {
	  	if(document.getElementById("notCNCity").value=="")
	  	{
					msg1.style.display = "block";//显示
					msg1.innerText = "请选择您的地区！";
	        error_flag    = 1;
	     }
	  }
    if(error_flag==0)
    	return true;
    else
    	return false;

}

//检测行业
function checkIndustryOnSubmit()
{
		var msg = document.getElementById("industry_error");
    var industry 			= document.getElementById('industry').value;
    
		msg.style.display = "none";//不显示
    if (industry == "noSelect") {
				msg.style.display = "block";//显示
				msg.innerText = "请选择贵公司的行业！";
    		return false;
    }
    return true;
}

//检测email（各部分）
function checkEmailPartlyOnSubmit()
{
		var msg = document.getElementById("email_error");
    var mail_post 		= document.getElementById('mail_post').value;
    var mail_postfix 	= document.getElementById('mail_postfix').value;
    var emailPrefix 		= document.getElementById('emailprefix').value;
    
		msg.style.display = "none";//不显示
		
    if (emailPrefix == "" ) 
    {
				msg.style.display = "block";//显示
				msg.innerText = "请填上贵公司电子邮件！";
        return false;
    }
	 	if(isOther&&mail_post == "" )
		{
				msg.style.display = "block";//显示
				msg.innerText = "请填上贵公司电子邮件！";
        return false;
		}
    return true;
}

//检查email
function checkEmailOnSubmit()
{
		var msg = document.getElementById("email_error");
		email = document.getElementById('email').value 
		
		msg.style.display = "none";//不显示
		
		if(!isValidEmail(email)) 
		{
			msg.style.display = "block";//显示
			msg.innerText = "电子邮件填写有误！";
      return false;
		}
    return true;
}

//检查product
function checkProductOnSubmit()
{
		var msg = document.getElementById("product_error");
		product = document.getElementById('product').value 
		msg.style.display = "none";//不显示
		
		if(product == "" ) 
		{
			msg.style.display = "block";//显示
			msg.innerText = "请输入您公司的一些主营产品！";
      return false;
		}
    return true;
}


//拼装传递项 ==================================================================>

//拼装固定电话（带上国家号，区号）
function makeUpPhone()
{
  	var countryCode = document.getElementById("countryCode").value;
		if(countryCode=="+86")
		{
			var workPhoneArea = document.getElementById("workPhoneArea").value;
			var workPhoneNumber = document.getElementById("workPhoneNumber").value;
			var phoneNumber = countryCode + "-" + workPhoneArea + "-" + workPhoneNumber;
		}
		else
		{
			var workPhoneNumber = document.getElementById("workPhoneNumber").value;
			var phoneNumber = countryCode + "-" + workPhoneNumber;
		}
		document.getElementById("phone").value = phoneNumber;
}

//拼装公司地址（带上国家省市信息）
function makeUpAddress()
{
    var country 			  = document.getElementById('country').value;
    var detailAddress 			= document.getElementById('companyAddress').value;
    
		if(country=="China")
		{
	    var countryName 			  = document.getElementById('countryName').value;
	    var provinceName 			= document.getElementById('provinceName').value;
	    var cityName 		    	= document.getElementById('cityName').value;
	    var countyName 		    	= document.getElementById('countyName').value;
 		  var address     =  countryName + "," + provinceName + "," + cityName + "," + countyName + "," + detailAddress;
		}
		else
		{
	    var countryName 	= document.getElementById('countryName').value;
 		  var address  =  countryName + "," + document.getElementById("notCNCity").value + "," + detailAddress;
		}
   document.getElementById('address').value = address;
}
function makeUpEmail()
{
    var mail_post 		= document.getElementById('mail_post').value;
    var mail_postfix 	= document.getElementById('mail_postfix').value;
    var emailPrefix 		= document.getElementById('emailprefix').value;
	 	if(isOther)
		{
      var email =  emailPrefix + "@" + mail_post;
    }else
    {
      var email =  emailPrefix + "@" + mail_postfix;
    }
    document.getElementById('email').value = email;
}

function makeUpWherein()
{
		var wherein = "";
		if(document.getElementById("wherein_1").checked == true){
				wherein += "搜索引擎";
		}
		if(document.getElementById("wherein_2").checked == true){
				if(wherein!="")
						wherein += ",";
				wherein += "阿里巴巴中国站";
		}
		if(document.getElementById("wherein_3").checked == true){
				if(wherein!="")
						wherein += ",";
				wherein += "阿里巴巴国际站";
		}
		if(document.getElementById("wherein_4").checked == true){
				if(wherein!="")
						wherein += ",";
				wherein += "阿里巴巴服务邮件";
		}
		if(document.getElementById("wherein_5").checked == true){
				if(wherein!="")
						wherein += ",";
				wherein += "报纸、杂志";
		}
		if(document.getElementById("wherein_6").checked == true){
				if(wherein!="")
						wherein += ",";
				wherein += "朋友推荐";
		}
		if(document.getElementById("wherein_7").checked == true){
				if(wherein!="")
						wherein += ",";
				wherein += "其它";
		}
		document.getElementById("wherein").value = wherein;
}
function makeUpGetbuyway()
{
		var getbuyway = "";
		if(document.getElementById("getbuyway_1").checked == true){
				getbuyway += "外贸公司";
		}
		if(document.getElementById("getbuyway_2").checked == true){
				if(getbuyway!="")
						getbuyway += ",";
				getbuyway += "参展";
		}
		if(document.getElementById("getbuyway_3").checked == true){
				if(getbuyway!="")
						getbuyway += ",";
				getbuyway += "网络";
		}
		if(document.getElementById("getbuyway_4").checked == true){
				if(getbuyway!="")
						getbuyway += ",";
				getbuyway += "杂志";
		}
		if(document.getElementById("getbuyway_5").checked == true){
				if(getbuyway!="")
						getbuyway += ",";
				getbuyway += "其它";
		}
		document.getElementById("getbuyway").value = getbuyway;
}