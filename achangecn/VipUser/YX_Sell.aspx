<%@ page language="C#" autoeventwireup="true" inherits="VipUser_YX_Sell, App_Web_xyjt5bop" %>
<%@ Register Src="Top_vip.ascx" TagName="Top_vip" TagPrefix="uc" %>
<%@ Register Src="Foot_vip.ascx" TagName="Foot_vip" TagPrefix="uc" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>物品发布-选择发布方式-<%= SetUrl() %></title>
</head>
<body> 
<uc:Top_vip ID="top_vip1" runat=server />
    <form id="form1" runat="server">
    <div>
    
     <DIV id=content>
<DIV id=menu>
<UL id=menu_head>
  <LI class=li_now><IMG hspace=10 src="../images/upload_btn_here_01.gif" 
  align=absMiddle>选择易出方式 </LI>
  <LI><IMG hspace=10 src="../images/upload_btn_will_02.gif" 
  align=absMiddle>选择物品分类 </LI>
  <LI><IMG hspace=10 src="../images/upload_btn_will_03.gif" 
  align=absMiddle>填写物品详情 </LI></UL></DIV>
<DIV></DIV>
<DIV class="ft14_orange b" id=note></DIV>
<DIV id=drift>
<UL>
<LI>设定一个起始价，让买家在相互竞拍后购买 
<LI><A href="YX_sell_type.aspx?cSellType=2"><IMG 
  src="../images/upload_choose_btn_drift.jpg"></A>  
  
  <LI>
  </LI></UL></DIV>
<DIV id=fixup>
<UL>
  <LI>设定一个固定价格，让买家可以立刻按价购买 
  <LI><A href="YX_sell_type.aspx?cSellType=1"><IMG 
  src="../images/upload_choose_btn_fixup.jpg"></A> 
  <LI>
  &nbsp;&nbsp; <A href="../Help.aspx" 
  target=_blank>“一口价”与“拍卖”的区别</A> 
 </LI></UL></DIV></DIV>
       <uc:Foot_vip ID="foot_vip3" runat=server />
        &nbsp;
    </div>
    </form>
</body>
</html>
