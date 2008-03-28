<%@ page language="C#" autoeventwireup="true" inherits="YX_alipay, App_Web_xyjt5bop" %>
<%@ Register Src="Top_vip.ascx" TagName="Top_vip" TagPrefix="uc" %>
<%@ Register Src="Foot_vip.ascx" TagName="Foot_vip" TagPrefix="uc" %>
<%@ Register Src="Left_vip.ascx" TagName="Left_vip" TagPrefix="uc" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
  <title>支付宝/提现设置-会员管理中心-<%=SetUrl() %></title>
    <LINK href="../../Skin/Skin4/index.css" type="text/css" rel="stylesheet" >
    <LINK href="../../Skin/Skin4/vip.css" type=text/css rel="stylesheet">
<script language="javascript" src="../include/yz.js"></script>
    <style>
   .s {
	background-color: #FEFAD8;
	color:#ffffff;
    }
    </style>
</head>
<body>
  <uc:Top_vip ID="top_vip1" runat="server" />
    <form id="form1" runat="server" onsubmit="return Validator.Validate(document.getElementById('form1'),3)" method="post" action="UserDetail.aspx">
        &nbsp;
   
     <table class="user_table" align="center">    
  <tr>
    <td id=myLeft valign=top style="width: 41px">
	<uc:Left_vip ID="left_vip2" runat="server" />
	</td>
	 <TD style="width: 5px"></TD>
	 
	<td style=" vertical-align:top;">
	 <div >
        <div class="DivMain" >
            支付宝/提现设置</div>
        
             <asp:Panel ID="Panel2" runat="server" Width="100%">
           <table width="100%"  border="0" cellspacing="1" bgcolor="#f4f4f4">
  <tr>
    <td bgcolor="#FFFFFF" align="right"><span class="F">支付宝邮箱:</span></td>
    <td bgcolor="#FFFFFF" align="left"><asp:TextBox ID="TextBox7" runat="server" Width="200px"></asp:TextBox></td>
  </tr>
   <tr>
                   <td align="right" bgcolor="#ffffff">
                       提现名称:</td>
                   <td align="left" bgcolor="#ffffff">
                       网银</td>
               </tr>
  <tr>
    <td bgcolor="#FFFFFF" align="right" style="height: 26px"><span class="F" style="height;">网银Key:</span></td>
    <td bgcolor="#FFFFFF" align="left" style="height: 26px"><asp:TextBox ID="Text_key" runat="server" Width="200px"></asp:TextBox></td>
  </tr>
  <tr>
    <td bgcolor="#FFFFFF" style="text-align: right; height: 26px;" > 网银收款人的partner:</td>
    <td bgcolor="#FFFFFF" align="left" style="height: 26px">
        <asp:TextBox ID="Text_partner" runat="server" Width="200px"></asp:TextBox></td>
  </tr>
  <tr>
    <td bgcolor="#FFFFFF" > </td>
    <td bgcolor="#FFFFFF" align="left">&nbsp; <asp:CheckBox ID="CheckBox1" runat="server" />开通</td>
  </tr>
 <tr>
    <td bgcolor="#FFFFFF"> 
    </td>
    <td bgcolor="#FFFFFF" align="left">&nbsp;<asp:Button ID="Button1" runat="server" Text="修　改" Width="104px" OnClick="Button1_Click" /></td>
  </tr>
               <tr>
             
                   <td align="left" bgcolor="#FFFFFF" colspan=2 style="margin:0px">
                   <DIV   class=note>一.<a href="https://www.alipay.com/user/user_register.htm" style="color:Maroon;" target="_blank">点击申请你的支付宝</a>
                       <br />
二.您可以通过“支付宝帐户”管理您的网络财务收支。 <br>
三.更多“支付宝帐户”的使用，请<a href="https://www.alipay.com/" target="_blank" style="color:Maroon;">登录</a>支付宝网站<br>
                       四.点击<a href="http://merchant3.chinabank.com.cn/register.do" style="color:Gray;" target="_blank">申请你的网银</a> 
                       <br />
                       五.您可以通过“网银帐户”管理您的网络财务收支。
                       <br>
                       六.更多“网银帐户”的使用，请<a href="http://www.chinabank.com.cn/gateway/index.shtml/" target="_blank" style="color:Maroon;">登录</a>支付宝网站<br>
</DIV>
</td>
               </tr>
  </table> 
        </asp:Panel>
        </div>
        </td>
        </tr>
        </table>	 
    </form>
         <script language="javascript">document.getElementById('A2').className='s';</script> 
            <uc:Foot_vip ID="foot_vip3" runat="server"/>
</body>
</html>
