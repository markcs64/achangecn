<%@ page language="C#" autoeventwireup="true" inherits="VipUser_Default_vip, App_Web_xyjt5bop" %>
<%@ Register Src="Top_vip.ascx" TagName="Top_vip" TagPrefix="uc" %>
<%@ Register Src="Foot_vip.ascx" TagName="Foot_vip" TagPrefix="uc" %>
<%@ Register Src="Left_vip.ascx" TagName="Left_vip" TagPrefix="uc" %>
  

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>会员管理中心-<%=SetUrl() %></title>
</head>

<body> 
   <uc:Top_vip ID="top_vip1" runat=server />
    <form id="form1" runat="server">

    
<table class=user_table align=center>
  <tr>
    <td id=myLeft valign=top>
	<uc:Left_vip ID="left_vip2" runat=server />
	</td>
	 <TD width=5>&nbsp;</TD>
     
    <td valign=top align=left>
    <DIV class=welcomeHead style="FLOAT: left; WIDTH: 400px">
      <DIV class=welcome style="COLOR: #339999">欢迎您， <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label><SPAN id=welcomeIcon>，小二在此恭候多时了! </SPAN></DIV>
      <UL id=welcomeMsg style="line-height:25px">
        <LI>上一次登录时间： 
            <asp:Label ID="Label14" runat="server"></asp:Label>
        <LI>您的支付宝帐户：
        <SPAN id=welcomeInfo>
            <asp:Label ID="Label13" runat="server"></asp:Label></SPAN></LI></UL></DIV>
        
        <DIV class=welcomeHead>
       <DIV class=welcome style="COLOR: #339999">网站公告</DIV>
      <DIV  style="DISPLAY: block; HEIGHT: 93px;text-align=left">
        <%=showgonggao()%>
</DIV>
      </DIV>
       <DIV style="MARGIN-TOP: 5px; BACKGROUND: #c8e7ff; WIDTH: 110px;text-align:right" ><B class=FT14>交易提醒区 </B><IMG  src="../images/welcome_btn_notice.gif" align=absBottom></DIV>
      <DIV 
      style="BORDER-RIGHT: #c8e7ff 1px solid; PADDING-RIGHT: 10px; BORDER-TOP: #c8e7ff 5px solid; PADDING-LEFT: 10px; BACKGROUND: #f4f9ff; PADDING-BOTTOM: 10px; BORDER-LEFT: #c8e7ff 1px solid; PADDING-TOP: 10px; BORDER-BOTTOM: #c8e7ff 1px solid">
      <DIV id=showNotify 
      style="BORDER-RIGHT: #bae1fe 1px solid; PADDING-RIGHT: 10px; BORDER-TOP: #bae1fe 1px solid; DISPLAY: none; PADDING-LEFT: 10px; BACKGROUND: #eaf7fe; PADDING-BOTTOM: 10px; BORDER-LEFT: #bae1fe 1px solid; LINE-HEIGHT: 150%; PADDING-TOP: 10px; BORDER-BOTTOM: #bae1fe 1px solid">拍拍提醒您，<SPAN 
      id=notifyWaitMyPay style="DISPLAY: none"><SPAN 
      class="fontOrange b">您有交易待付款</SPAN>，<A 
      href="sold_commodity.aspx?start=1">查看详情&gt;&gt;</A><BR></SPAN><SPAN 
      id=notifyWaitMyConfirmReturnMoneyOrItem 
      style="DISPLAY: none">您收到退款或退货申请，<A 
      href="#">查看退款/退货状态中的订单&gt;&gt;</A></SPAN></DIV>
      <DIV style="PADDING-BOTTOM: 10px; LINE-HEIGHT: 150%">
      <DIV class=sellHead style="POSITION: relative"><b>作为买家</b> </DIV>
      您已购买商品 <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label> 笔，<A 
      href="bought_commodity.aspx">查看全部&gt;&gt;</A> 
      <SPAN id=showWaitMyPay style="DISPLAY: none"><SPAN 
      class=b><BR>&nbsp;&nbsp;&nbsp;需要您付款的交易有 <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
      笔，</SPAN><A 
      href="bought_commodity.aspx?start=1">点此查看&gt;&gt;</A></SPAN> 
      <SPAN id=showWaitMyConfirmReceived 
      style="DISPLAY:"><BR>&nbsp;&nbsp;&nbsp;需要您确认收货的交易有<asp:Label ID="Label4" runat="server" Text="Label"></asp:Label> 笔，<A 
      href="bought_commodity.aspx?start=3">点此查看&gt;&gt;</A></SPAN> 
      <SPAN id=showWaitYourConsign 
      style="DISPLAY: "><BR>&nbsp;&nbsp;&nbsp;还在等待卖家发货的交易有<asp:Label ID="Label5" runat="server" Text="Label"></asp:Label> 笔。</SPAN>

       <BR>您共收到卖家留言
          <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
       条，<A 
      href="leavingms.aspx">查看&gt;&gt;</A></DIV>
      <DIV style="BORDER-TOP: #b5dfff 1px dashed; LINE-HEIGHT: 150%">
      <DIV class=sellHead><b>作为卖家</b></DIV>您共有已卖出交易<asp:Label ID="Label7" runat="server" Text="Label"></asp:Label> 笔，<A 
      href="sold_commodity.aspx?start=1">查看全部&gt;&gt;</A> 
      <SPAN id=showWaitMyConsign style="DISPLAY: "><SPAN 
      class=b><BR>&nbsp;&nbsp;&nbsp;需要您发货的交易有<asp:Label ID="Label8" runat="server" Text="Label"></asp:Label>
      笔，</SPAN><A 
      href="sold_commodity.aspx?start=2">点此查看&gt;&gt;</A></SPAN> 
      <SPAN id=showWaitYourPay 
      style="DISPLAY: "><BR>&nbsp;&nbsp;&nbsp;需要买家付款的有<asp:Label ID="Label9" runat="server" Text="Label"></asp:Label>笔，<A 
      href="sold_commodity.aspx?start=1">点此查看&gt;&gt;</A></SPAN> 
      <SPAN id=showWaitYourConfirmReceived 
      style="DISPLAY: "><BR>&nbsp;&nbsp;&nbsp;等待买家确认收货的交易有<asp:Label ID="Label10" runat="server" Text="Label"></asp:Label>笔。</SPAN>
     
       <BR>您共有买家留言<span>
       <asp:Label ID="Label11" runat="server" Text="Label"></asp:Label>
       条，<a href=leavingmsg_seller.aspx>查看留言</A></SPAN> 
      <BR>
      <DIV 
      style="PADDING-RIGHT: 10px; MARGIN-TOP: 10px; PADDING-LEFT: 10px; BACKGROUND: #eaf7fe; PADDING-BOTTOM: 10px; LINE-HEIGHT: 150%; PADDING-TOP: 10px"><span>您共有出售中的商品
    <asp:Label ID="Label12" runat="server" Text="Label"></asp:Label>
       件</SPAN></DIV></DIV></DIV>
    </td>
  </tr>
</table>

    
    <uc:Foot_vip ID="foot_vip3" runat=server />
    </form>
</body>
</html>
