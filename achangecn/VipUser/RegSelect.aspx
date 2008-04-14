<%@ page language="C#" validaterequest="false" inherits="RegSelect, App_Web_e2dz2mbn" %>

<!-- 头部 定义-->
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<HTML xmlns="http://www.w3.org/1999/xhtml">
<HEAD>
<TITLE>易物会员注册</TITLE>
<META http-equiv=Content-Type content="text/html; charset=utf-8">
<META content="{$Hope_KeysWord$}" name=keywords>
<META content="{$Hope_SiteExc$}" name=description>
<META http-equiv=Content-Type content="text/html; charset=utf-8">
<META content="MSHTML 6.00.6000.16608" name=GENERATOR>
<link rel="stylesheet" href="../Skin/skin5/CSS/index.css" type="text/css">
<link href="../Skin/skin5/CSS/main.css" rel="stylesheet" type="text/css">
<SCRIPT src="../Skin/skin5/JS/base.js" language=javascript></SCRIPT>
<SCRIPT src="../Skin/skin5/JS/animation.js" language=javascript></SCRIPT>
<SCRIPT src="../Skin/skin5/JS/item_viewer.js" type=text/javascript> </SCRIPT>
<SCRIPT src="../Skin/skin5/JS/connection.js" type=text/javascript> </SCRIPT>
</HEAD>
<BODY>

 <div id="topswf"><!-- 头部红色 背景  LOGO -->


 <!-- 头部 箭头 flash 动画 -->
   <DIV id="topflash">
     <embed src="../Skin/skin5/swf/arrow.swf" quality="high" width="750" height="120" wmode="transparent"  ></embed>
   </DIV>
<div id="topmenu"> <!-- 头部导航栏 按钮背景图片 -->
<ul>
<li class=menu1><A href="http://www.achange.cn/default.aspx">首页</A></li>
<li class=menu2><A href="http://www.achange.cn/shop.aspx">我要易物</A></li>
<li class=menu3><A href="http://www.achange.cn/Yx_VipLogin.aspx">会员登录</A></li>
<li class=menu5><A href="http://www.achange.cn/Article/index.aspx">易物学院</A></li>
<li class=menu6><A href="http://www.achange.cn/help.aspx">客服中心</A></li></ul>
</div> <!-- 头部导航栏 按钮背景图片 结束-->
</div> <!-- 头部红色 背景  LOGO 结束-->
 
 <!-- 搜索栏 搜索下拉选择项 -->
<DIV id=searchBox>
<FORM name=SearchForm onSubmit="return beforeSubmit(this);" action="http://www.achange.cn/Productlist.aspx?SearchText=" method=get>


<DIV id=searchbody>
<INPUT type=hidden value=BUY name=Type>
 <INPUT type=hidden value=y name=ssk>
 <INPUT id=yearIdx type=hidden name=year>
  <INPUT id=monthIdx type=hidden name=month>
 <INPUT id=locationIdx type=hidden name=location>
  <INPUT id=keywordIdx type=hidden name=keyword> 

<DIV class=intelligent>

<INPUT id=SearchTextIdx onkeydown=lnoKeyDown(event) 
onkeyup=requestEndFlag=true;inputTimeOut(event); 
style="BORDER-RIGHT: #418fb4 1px solid; PADDING-RIGHT: 2px; BORDER-TOP: #418fb4 1px solid; PADDING-LEFT: 2px; PADDING-BOTTOM: 2px; BORDER-LEFT: #418fb4 1px solid; PADDING-TOP: 2px; BORDER-BOTTOM: #418fb4 1px solid" 
onclick=requestEndFlag=true;inputTimeOut(event); size=25 value=" " 
name=SearchText autocomplete="off"> 

<IFRAME class=intelligentIframeMask id=intelligentIframeMask style="DISPLAY: none" src="about:blank" frameBorder=0>
</IFRAME>

<DIV class="intelligentList" id="intelligentList" style="VISIBILITY: hidden;"></DIV>
</DIV>

<SCRIPT language=javascript>
                         writeHiddenIFrame(0,0);
                         initIntelligentSearchBar();
</SCRIPT>
{#Hope_ArticleBigClass*62#}
<SCRIPT language=javascript> 
		     	if(document.isBigerScreen){
		     		try{
		     			document.getElementById('SearchTextIdx').style.width="350px";
		     			}catch(e){}
		     		}
		     	</SCRIPT>
 

<SCRIPT language=javascript> initSelectWithValue(document.SearchForm.IndexArea,"");</SCRIPT>
{$Hope_ClassName$}
<SCRIPT type=text/javascript>
  printYearMonthListIdx();
</SCRIPT>

 <!-- 搜索栏  搜索按钮 -->
 <INPUT style="BORDER-RIGHT: #cf6f18 1px solid; PADDING-RIGHT: 4px; BORDER-TOP: #f39d24 1px solid; PADDING-LEFT: 4px; BACKGROUND: url({$Hope_SitUrl$}{$Hope_Skin$}image/buttonSkinAL.gif) #feeeb1 repeat-x 50% bottom; PADDING-BOTTOM: 1px; FONT: bold 12px arial; BORDER-LEFT: #f39d24 1px solid; COLOR: #5e2708; PADDING-TOP: 1px; BORDER-BOTTOM: #cf6f18 1px solid" type=submit value="搜索" border=0>

<SCRIPT language=JavaScript>
  document.SearchForm.SearchText.value = XMLDecode(document.SearchForm.SearchText.value);;
</SCRIPT>

<SCRIPT language=JavaScript>
  logKeyWordsToCookie(document.SearchForm.SearchText.value);;
</SCRIPT>&nbsp;&nbsp;&nbsp;&nbsp;
<A class=yellow12  href="#">直接进入产品信息库</A>

</DIV>
</FORM>
</DIV><!-- 搜索栏结束 -->
<!-- 头部结束 -->	  


<form id="form1" runat="server">

<div id="Reg1" style=" width:760px; background:url(../Skin/skin5/IMAGES/title_Reg1.gif) no-repeat top left;">
<ul style="margin-top:100px; list-style:none;">

<li style="width:350px; float:left;"><span style="font:14px bold;">1 、</span><asp:button id="Button1" runat="server" text="企业用户" OnClick="Button1_Click" /></li>
<li style="width:410px; float:left; text-align:left;"><span style="font:14px bold;">2 、</span>
  <asp:button id="Button2" runat="server" text="个人用户" OnClick="Button2_Click" /></li>
</ul>
</div>

</form>
<div style="height:120px; width:760px; "></div>
<!-- 底部 定义-->
<DIV id="footer">
<table 
width="100%" border="0" align="center" cellpadding="0" cellspacing="0" bordercolorlight="#ffffff" bordercolordark="#f8f9f8">
  <tbody>
    <tr>
      <td bgcolor="#f8f9f8" style="font:12px;"><p align="center"><a href="../Help.aspx?help=6">关于易物 </a> |&nbsp;<a 
      href="../Help.aspx?help=8">诚征英才 </a> | 
         <a href="../Help.aspx?help=5">联系我们</a>  |  <a 
      href="../Messages.aspx">投诉反馈</a>  | <font style="COLOR: #ff6600" color="#ff7916"> &nbsp; <a 
      style="COLOR: #ff6600" 
      href="#">TOP</a></font></p></td>
    </tr>
  </tbody>
</table>
<table cellspacing="0" cellpadding="0" width="100%" border="0">
  <tbody>
    <tr>
      <td colspan="2"><hr width="100%" color="#e3e4e3" size="1" />
      </td>
    </tr>
    <tr>
      <td width="201"><img src="http://www.achange.cn/Skin/skin5/images/bottom_bg.jpg" alt="" name="Image1" 
      width="236" height="82" id="Image1" /></td>
      <td><table cellspacing="0" cellpadding="0"  style=" color:#808080; font:12px;">
        <TR>
          <TD align="left">地址：中国广东 深圳市龙岗区布吉街道诚信华庭B座11E </TD>
        </TR>
        <TR>
          <TD align="left"> 客户热线：0755-33217606 邮编：518112   公司邮箱：hongqiao@achange.cn <BR>
             
            电话：0755-33217606 传真：0755-33217606 移动： <BR>
             
            易物经纪QQ：251384283 / 296914505 / 334925382 / 745415717</TD>
        </TR>
        <TR>
          <TD align="left"> Copyright 2006-2008 aChange.cn All Rights   Reserved  版权所有 深圳红桥易物信息咨询服务有限公司</TD>
        </TR>
        <TR>
          <TD align="left"> 易物官方：红桥企业易物网     技术支持：贝斯特实验室 </TD>
        </TR>
      </table></td>
    </tr>
  </tbody>
</table>
</DIV>

</BODY></HTML>
