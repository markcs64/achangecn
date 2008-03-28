<%@ page language="C#" autoeventwireup="true" inherits="VipUser_yx_cerdit, App_Web_xyjt5bop" %>

<%@ Register Src="Top_vip.ascx" TagName="Top_vip" TagPrefix="uc" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>评价管理-会员管理中心-<%=SetUrl() %></title>
</head>
<body>
<uc:Top_vip ID="top_vip1" runat="server" Visible="false" />
    <form id="form1" runat="server">
    <div>
        &nbsp;<asp:DataGrid ID="DataG" runat="server" Width="624px">
        </asp:DataGrid></div>
    </form>
</body>
</html>
