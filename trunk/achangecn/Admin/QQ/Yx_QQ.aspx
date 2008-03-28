<%@ page language="C#" autoeventwireup="true" inherits="Admin_QQ_Yx_QQ, App_Web__dri7f_z" %>
<%@ Register TagPrefix="ChangeHope" TagName="Chklogin" Src="~/Admin/YX_CheckLogin.ascx" %>
<%@ Register TagPrefix="ChangHope" TagName="Admin_Btm" Src="~/Admin/Admin_btm.ascx"%>
 <ChangeHope:Chklogin _Column="23" ID="chk1" runat="server" />
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
    <table width="100%" height="25" border="0" cellpadding="0" cellspacing="0">
            <tr>
              <td align="center" background="../images/YX_Bg.jpg" class="style3" style="width: 100%">
                  在线服务管理</td>
            </tr>
          </table><table width="100%" border="0" cellpadding="0" cellspacing="0">
            <tr>
              <td align="right" class="style3" style="width: 100%">
                  <a href="Yx_QQ.aspx" style="color:#FFFFFF">［添加QQ］</a><a href=YX_MYT.aspx style="color:#FFFFFF">［添加在线贸易］</a><a href=YX_MSN.aspx style="color:#FFFFFF">［添加MSN］</a></td>
            </tr>
          </table><table width="100%" height="25" border="0" cellpadding="0" cellspacing="0">
            <tr>
              <td align="center" class="style3" style="width: 100%">
                  &nbsp;<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False"
                      GridLines="None" Width="90%" CellPadding="1" CellSpacing="1">
                      <FooterStyle BackColor="#FFFFFF" Font-Bold="True" ForeColor="White" />
                      <Columns>
                          <asp:BoundField DataField="Yx_ID" HeaderText="ID" HeaderStyle-CssClass="F" ItemStyle-CssClass="If" />
                          <asp:BoundField DataField="Yx_QQ" HeaderText="QQ号码" HeaderStyle-CssClass="F" ItemStyle-CssClass="If" />
                          <asp:BoundField DataField="Yx_Title" HeaderText="在线服务称呼" HeaderStyle-CssClass="F" ItemStyle-CssClass="If" />
                          <asp:BoundField DataField="Yx_Tel" HeaderText="在线服务联系电话"  HeaderStyle-CssClass="F" ItemStyle-CssClass="If"/>
                          <asp:BoundField DataField="Yx_Email" HeaderText="在线服务联系邮箱"  HeaderStyle-CssClass="F" ItemStyle-CssClass="If"/>
                          <asp:TemplateField>
                      <ItemTemplate>
                      <script type="text/javascript">
                      function DelCheck()
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
                                 <a href="Yx_QQ.aspx?id=<%#DataBinder.Eval(Container.DataItem,"Yx_ID")%>" onclick="return DelCheck();">删除</a>
                              </ItemTemplate>
                              
                          </asp:TemplateField>
                      </Columns>
                      <RowStyle BackColor="#E3EAEB" />
                      <EditRowStyle BackColor="#7C6F57" />
                      <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                      <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                      <HeaderStyle BackColor="#FFFFFF" Font-Bold="True" ForeColor="White" Height="20px" />
                      <AlternatingRowStyle BackColor="White" />
                  </asp:GridView>
                  </td>
            </tr>
          </table>
    </div>
        <table border="0" cellpadding="0" cellspacing="0" style="width:90%; background-color: #fbfcff; " align=center >
            <tr>
                <td colspan="2" style="font-weight: bold; color: #ff6600; height: 50px; background-color: #eef9f7" align="center">添加在线服务QQ
                    <br />
                  提示：首页最多只显示４个在线服务QQ</td>
            </tr>
            <tr>
                <td style="width: 379px; height: 21px;" align="right">
                    联系的QQ号码：</td>
                <td style="height: 40px;">
                    <asp:TextBox ID="TextBox1" runat="server" MaxLength="15"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1"
                        Display="None" ErrorMessage="请输入QQ号码！"></asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td style="width: 379px" align="right">
                    显示的称呼：</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" MaxLength="15"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox2"
                        Display="None" ErrorMessage="请输入称呼！"></asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td style="width: 379px; height: 12px" align="right">
                    联系的Tel:</td>
                <td style="height: 40px">
                    <asp:TextBox ID="TextBox3" runat="server" MaxLength="15"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox3"
                        Display="None" ErrorMessage="请输入联系的电话号码！"></asp:RequiredFieldValidator></td>
            </tr><tr>
                <td style="width: 379px; height: 12px" align="right">
                  联系的Email:</td>
                <td style="height: 12px">
                    <asp:TextBox ID="TextBox4" runat="server" MaxLength="30"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4"
                        Display="None" ErrorMessage="请输入联系的邮箱地址！"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox4"
                        Display="None" ErrorMessage="请输入正确的邮箱地址！" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True"
                        ShowSummary="False" />
                </td>
            </tr><tr>
                <td style="height: 50px" align="center" colspan="2">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="添加" UseSubmitBehavior="False" BackColor="Silver" BorderColor="#404040" BorderStyle="Solid" /></td>
            </tr>
        </table>
         <ChangHope:Admin_Btm  ID="chp1" runat="server" /> 
    </form>
</body>
</html>
