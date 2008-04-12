<%@ page language="C#" autoeventwireup="true" inherits="Yx_VipLogin, App_Web_5na9plfo" %>
 
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<HTML xmlns="http://www.w3.org/1999/xhtml">
<HEAD>
<TITLE>{$Hope_Context$}{$Hope_Brand$}{$Hope_Type$}{$Hope_Title$}</TITLE>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<META http-equiv=keywords content={$Hope_KeysWord$} />
<meta name="description" content="{$Hope_SiteExc$}" />
<link rel="shortcut icon" href="{$Hope_SitUrl$}favicon.ico" type="image/x-icon" />
<link rel="stylesheet" href="{$Hope_SitUrl$}{$Hope_Skin$}CSS/v2.0.css" type="text/css">
<link rel="stylesheet" href="{$Hope_SitUrl$}{$Hope_Skin$}CSS/layout.css" type="text/css">
<link rel="stylesheet" href="{$Hope_SitUrl$}{$Hope_Skin$}CSS/component.css" type="text/css">
<link rel="stylesheet" href="{$Hope_SitUrl$}{$Hope_Skin$}CSS/level1.css" type="text/css">
<link rel="stylesheet" href="{$Hope_SitUrl$}{$Hope_Skin$}CSS/sell.css" type="text/css">
<SCRIPT src="{$Hope_SitUrl$}{$Hope_Skin$}JS/common.js" type=text/javascript></SCRIPT>
<SCRIPT src="{$Hope_SitUrl$}{$Hope_Skin$}JS/atpanel.js" type=text/javascript></SCRIPT>
<SCRIPT src="{$Hope_SitUrl$}{$Hope_Skin$}JS/top_new.js" type=text/javascript></SCRIPT>
<BODY class=W950>
{$Hope_Top$} 
<!-- Head end -->

<DIV class=main>
<div style="float:left; width:80%; text-align:left"><img src="{$Hope_SitUrl$}{$Hope_Skin$}image/title_login_2.gif"/></div>
<DIV id=loginLeft>
<DIV id=loginMain>

<DIV style="PADDING-RIGHT: 0px; PADDING-LEFT: 0px; PADDING-BOTTOM: 5px; PADDING-TOP: 15px"></DIV>
<DIV id=errormsg style="DISPLAY: none"><SPAN class=fontOrange id=errorInfo>
</SPAN>
</DIV>
 <script language="javascript">
function loginSubmit(form2){
var userName = form2.elements['Yx_vipName'];
var password = form2.elements['Yx_vipPassword'];
if(userName.value == ""){alert("请输入用户名");return false}
if(password.value == ""){alert("请输入密码");password.focus();return false}
location.href="?usrname="+userName.value;
}
</script>
<form action="login.aspx?flag=login" method=post name=form2 onSubmit="return loginSubmit(this);">
<UL>
  <LI>用&nbsp;户&nbsp;名： 
    <INPUT  name=Yx_vipName class=inputMain size="30">
    &nbsp;<A 
  href="VipUser/VipReg.aspx" target=_blank>申请账号&gt;&gt;</A> 
  <LI>密<span style="margin-left:25px!important; margin-left:18px;">码</span>：
    <INPUT name=Yx_vipPassword  type=password class=inputMain size="30" maxLength=16>
    &nbsp;<A 
  href="VipUser/Yx_FindPass.aspx" 
  target=_blank>忘记密码&gt;&gt;</A>
  <LI style="PADDING-LEFT: 100px"><INPUT id=Submit tabIndex=4 type=image  src="{$Hope_SitUrl$}{$Hope_Skin$}image/login_submit2.gif" value="  登 录  " name=Submit> 
  </LI>
  <LI style="PADDING-LEFT: 100px">
 </LI></UL>
</FORM></DIV>
</DIV>
<DIV style="FLOAT: left; WIDTH: 40px;"><IMG height=194 
src="{$Hope_SitUrl$}{$Hope_Skin$}image/login_v_line.jpg" width=49></DIV>
<DIV id=loginSide>
  <DIV 
style="PADDING-RIGHT: 0px; PADDING-LEFT: 10px; PADDING-BOTTOM: 0px; WIDTH: 240; PADDING-TOP: 0px; POSITION: relative; HEIGHT: 148px">
<UL>
  <LI><IMG src="{$Hope_SitUrl$}{$Hope_Skin$}image/login_btn_02.gif" 
  align=absMiddle>&nbsp;&nbsp;&nbsp;便宜有好货！超过5000万件商品任您选。
  <LI><IMG src="{$Hope_SitUrl$}{$Hope_Skin$}image/login_btn_03.gif" align=absMiddle 
  vspace=5>&nbsp;&nbsp;&nbsp;买卖更安心！支付宝交易超安全。 
  <LI><IMG src="{$Hope_SitUrl$}{$Hope_Skin$}image/login_btn_04.gif" 
  align=absMiddle>&nbsp;&nbsp;&nbsp;轻松赚钱交商友。
  <LI><IMG src="{$Hope_SitUrl$}{$Hope_Skin$}image/login_btn_05.gif" align=absMiddle 
  vspace=5>&nbsp;&nbsp;&nbsp;超人气社区！精彩活动每一天。 </LI>
  <LI>&nbsp;&nbsp;&nbsp;<a href={$Hope_SitUrl$}vipuser/VipReg.aspx><img src="{$Hope_SitUrl$}{$Hope_Skin$}image/register_submit002.gif" width="157" height="34"></a></LI>
</UL></DIV>
</DIV></DIV>
<DIV style="MARGIN-BOTTOM: 15px; clear:both;"></DIV>
{$Hope_Bottom$} 
</BODY></HTML>
