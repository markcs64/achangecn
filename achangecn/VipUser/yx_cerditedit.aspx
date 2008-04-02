<%@ page language="C#" autoeventwireup="true" inherits="VipUser_yx_cerditedit, App_Web_xyjt5bop" %>

<%@ Register Assembly="Standny.WebControls" Namespace="Standny.WebControls" TagPrefix="Standny" %>
<%@ Register Src="Top_vip.ascx" TagName="Top_vip" TagPrefix="uc" %>
<%@ Register Src="Foot_vip.ascx" TagName="Foot_vip" TagPrefix="uc" %>
<%@ Register Src="Left_vip.ascx" TagName="Left_vip" TagPrefix="uc" %>
  

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
 <title>评价管理-会员管理中心-<%=SetUrl() %></title>
    
    <style type="text/css">
    #LI2 {
	background-color: #FEFAD8;
	color:#ffffff;
}
</style>

<link rel="stylesheet" type="text/css" href="ajaxtabs.css"/>

<script type="text/javascript" src="ajaxtabs.js"></script>
<script language="javascript">
function window.onload()
{
   var show="show"+<%=ids %>;
   document.getElementById('maintab').style.backgroundColor="#EFEFEF";
}
</script>
</head>


<body>
<uc:Top_vip ID="top_vip1" runat=server />
    <form id="formsp" name="formsp" method="post" runat="server">    
<table class=user_table align=center>
  <tr>
    <td id=myLeft valign=top>
	<uc:Left_vip ID="left_vip2" runat=server />
	</td>
	 <TD style="width: 6px"></TD>
<TD vAlign=top style="width: 653px">  <DIV class=divMenu>
      <DIV class=DivMain>信用管理</DIV></DIV>
    <table style="width: 100%" border=0>
        <tr>
            <td rowspan="3" style="width: 79px; text-align: left; height: 60px;">
              
                <table style="width: 88px">
                    <tr>
                        <td colspan="3" rowspan="3">
                 
                <div style="width: 214px; height: 24px"><div style="width: 215px; height: 24px; text-align: left">
                    有 <b class="font_orange"><a href="yx_cerdpj.aspx"><%=countpinjia() %></a></b> 条新的评价需要您作出&nbsp;&nbsp;&nbsp;<a href="yx_cerdpj.aspx">马上评价</a>
                </div></div>
                <div style="width: 213px; height: 24px">
                    已卖出的物品(0)</div>
                <div style="width: 214px; height: 24px">
                    已买到的物品(0)</div>   
                <div style="width: 213px; height: 24px">
                    您共收到 0次评价</div>
                <div style="width: 213px; height: 24px">
                    一定要给对方评价吗？</div>
                <div style="width: 214px; height: 24px">
                    什么是信用评价和信用度？</div>
                <div style="width: 214px; height: 24px">
                    信用评价的期限多长？</div>
                <div style="width: 214px; height: 24px">
                    信用度如何计算？</div>
                <div style="width: 213px; height: 24px">
                    信用评价如何计分？</div>
                <div style="width: 213px; height: 24px">
                    信用等级如何划分？</div>
                <div style="width: 213px; height: 24px; text-align: left">
                    非财付通交易评价如何计分？</div>
                        </td>
                    </tr>
                    <tr>
                    </tr>
                    <tr>
                    </tr>
                </table>
            </td>
            <td colspan="2" rowspan="3" style="height: 60px; text-align: left">
               <% s();  %>
            </td>
        </tr>
        <tr>
        </tr>
        <tr>
        </tr>
        <tr>

        </tr>
    </table>
    <table style="width: 100%">

    </table>
    <div style="width: 100%; height: 100px">
        <table style="width: 100%" style="background-color:#EFEFEF;">
            <tr>
<td colspan="3" rowspan="1" style="height: 60px; text-align: left">

<ul id="maintab" class="shadetabs">
<li id="show1" class="show1"><a href="?action=1">作为卖家收到的评价</a></li>
<li id="show2" class="show2"><a href="?action=2">作为卖家作出的评价</a></li>
<li id="show3" class="show3"><a href="?action=3">作为买家收到的评价</a></li>
<li id="show4" class="show4"><a href="?action=4">作为买家作出的评价</a></li>
</ul>

<div id="ajaxcontentarea" class="contentstyle" style="width: 95%">
    <asp:HiddenField ID="HiddenField1" runat="server" />
<script language="javascript">
    function sub(){
        var cerdit=document.getElementById('cerdit').value;
        var data=document.getElementById('data').value;
        var action=document.getElementById('HiddenField1').value;
        location.href="?action="+action+"&cerdit="+cerdit+"&data="+data+"";
    }
</script>
<div id=mr>
	        <select  id="cerdit" name="cerdit" class="select_span" onchange='sub();'>
			   <option value="7" checked>所有评价</option>
			  <option value="14">只看好评</option>
			  <option value="21" >只看中评</option>
			  <option value="30">只看差评</option>
		    </select>
	        <select id="data" name="data" class="select_span"  onchange='sub();'>
			   <option value="7" checked>一周以内</option>
			  <option value="14">一个月以内</option>
			  <option value="21" >六个月以内</option>
		    </select>
		    </div>
    
    <asp:DataGrid ID="DataG" runat="server" Width="100%" AllowCustomPaging="True" AllowPaging="True" Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False">
        <PagerStyle Mode="NumericPages" />
        <HeaderStyle BackColor="ActiveBorder" BorderColor="#00C0C0" Font-Bold="True" Font-Italic="False"
            Font-Overline="False" Font-Strikeout="False" Font-Underline="False" ForeColor="#FFFCDC" />
    </asp:DataGrid></div>
            </td>
            </tr>
            <tr>
            </tr>
            <tr>
            </tr>
        </table>
    </div>
</TD>
  </tr>
    <tr>
        <td valign="top">
        </td>
        <td style="width: 6px">
        </td>
        <td valign="top" style="width: 100%">
        </td>
    </tr>
</table>
<% mr();%>
    </form>
    <uc:Foot_vip ID="foot_vip3" runat="server"/>
                <%--</td>--%>
</body>
</html>
