<%@ page language="C#" autoeventwireup="true" inherits="Admin_Messages_Yx_ManageMessages, App_Web_ud_7ra-h" %>
<%@ Register TagPrefix="ChangeHope" TagName="Chklogin" Src="~/Admin/YX_CheckLogin.ascx" %>
  <ChangeHope:Chklogin _Column="1" ID="chk1" runat="server" />
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>无标题页</title>
    <style>
    <!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
}
-->

</style>
<link rel="stylesheet" href="../CSS.css" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div style="text-align: center">
        <table width="100%" height="25" border="0" cellpadding="0" cellspacing="0">
            <tr>
              <td align="center" background="../images/YX_Bg.jpg" class="style3" style="width: 100%">
                  在线信息管理[<a href="Yx_SendVip.aspx" style="color: #ff6600">发送在线消息</a>]</td>
            </tr>
          </table><table width="100%" height="25" border="0" cellpadding="0" cellspacing="0">
            <tr>
              <td align="center" class="style3" style="width: 100%">
                  每页显示１０条</td>
            </tr>
          </table>
        </div>
    </div>
    
        <asp:GridView ID="GridView1" CellPadding="0" CellSpacing="0" runat="server" AutoGenerateColumns="False" Width="854px" BackColor="#3270C5" GridLines="None" AllowPaging="True" OnPageIndexChanging="GridView1_PageIndexChanging">
            <Columns>
                <asp:BoundField DataField="Yx_UserName" HeaderText="用户" HeaderStyle-CssClass="F" />
                <asp:BoundField DataField="Yx_Title" HeaderText="主题" HeaderStyle-CssClass="F" />
                <asp:TemplateField HeaderText="内容">
                    
                    <ItemTemplate>
                       <table width="100%" border="0" cellpadding="0" cellspacing="0"><tr><td style="word-break:break-all; width: 240px; height: 20px;"><%#DataBinder.Eval(Container.DataItem,"Yx_Content")%></td></tr></table>
                    </ItemTemplate>
                     <HeaderStyle CssClass="F" />
                </asp:TemplateField>
                <asp:BoundField DataField="Yx_Time" HeaderText="发送时间" HeaderStyle-CssClass="F" />
                <asp:TemplateField HeaderText="状态">
                    
                    <ItemTemplate>
                      <%#StateShow(Convert.ToInt32(DataBinder.Eval(Container.DataItem,"Yx_Hf")))%>
                    </ItemTemplate>
                     <HeaderStyle CssClass="F" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="操作" HeaderStyle-CssClass="F">
                   
                    <ItemTemplate>
                    
                    <script type="text/javascript">
    function Checks()
    {
    var i=confirm("你确定要删除吗？");
    if(i)
    {
      return true;
        }
        else
        {
        return false;
        }    
     }
    
    </script>
                       <HeaderStyle CssClass="F" /> 
                       <a href="Yx_ManageMessagesH.aspx?id=<%#DataBinder.Eval(Container.DataItem,"Yx_ID")%>" >回复</a>&nbsp;&nbsp;<a href="Yx_DelMessages.aspx?id=<%#DataBinder.Eval(Container.DataItem,"Yx_ID")%>"  onclick="return Checks();" >删除</a>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <RowStyle BackColor="#E3EAEB" />
            <EditRowStyle BackColor="#7C6F57" />
            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <HeaderStyle BackColor="#FFFFFF" Font-Bold="True" ForeColor="White" Height="25px" />
            <AlternatingRowStyle BackColor="White" />
        </asp:GridView>
    </form>
</body>
</html>
