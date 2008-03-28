﻿<%@ page language="C#" autoeventwireup="true" inherits="Send, App_Web_qtc2vu4d" %>

<html>

<body onLoad="javascript:document.E_FORM.submit()">
<form action="https://pay3.chinabank.com.cn/PayGate" method="POST" name="E_FORM">

  <!--以下几项为网上支付重要信息，信息必须正确无误，信息会影响支付进行！-->
    
  <input type="hidden" name="v_md5info"    value="<%=v_md5info%>" size="100">
  <input type="hidden" name="v_mid"        value="<%=v_mid%>">
  <input type="hidden" name="v_oid"        value="<%=v_oid%>">
  <input type="hidden" name="v_amount"     value="<%=v_amount%>">
  <input type="hidden" name="v_moneytype"  value="<%=v_moneytype%>">
  <input type="hidden" name="v_url"        value="<%=v_url%>">

    
  <!--以下几项项为网上支付完成后，随支付反馈信息一同传给信息接收页，在传输过程中内容不会改变,如：Receive.asp -->
    
  <input type="hidden"  name="remark1" value="<%=remark1%>">
  <input type="hidden"  name="remark2" value="<%=remark2%>">
    
  <!--以下几项与网上支付货款无关，只是用来记录客户信息，可以不用，使用和不使用都不影响支付 -->

	<input type="hidden"  name="v_rcvname"      value="<%=v_rcvname%>">
	<input type="hidden"  name="v_rcvaddr"      value="<%=v_rcvaddr%>">
	<input type="hidden"  name="v_rcvtel"       value="<%=v_rcvtel%>">
	<input type="hidden"  name="v_rcvpost"      value="<%=v_rcvpost%>">
	<input type="hidden"  name="v_rcvemail"     value="<%=v_rcvemail%>">
	<input type="hidden"  name="v_rcvmobile"    value="<%=v_rcvmobile%>">

	<input type="hidden"  name="v_ordername"    value="<%=v_ordername%>">
	<input type="hidden"  name="v_orderaddr"    value="<%=v_orderaddr%>">
	<input type="hidden"  name="v_ordertel"     value="<%=v_ordertel%>">
	<input type="hidden"  name="v_orderpost"    value="<%=v_orderpost%>">
	<input type="hidden"  name="v_orderemail"   value="<%=v_orderemail%>">
	<input type="hidden"  name="v_ordermobile"  value="<%=v_ordermobile%>">
  
  </form>

</body>
</html>