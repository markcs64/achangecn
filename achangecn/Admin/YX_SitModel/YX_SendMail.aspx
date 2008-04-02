<%@ page language="C#" inherits="Admin_YX_SitModel_YX_SendMail, App_Web_c8yzgfca" enableeventvalidation="false" %> 
<%@ Register  Src="../Admin_Btm.ascx" TagName="ChangHope_btm" TagPrefix="Chp" %>
<%@ Register TagPrefix="ChangHope" TagName="ProClass" Src="~/Admin/Class_list.ascx" %>
<%@ Register TagPrefix="ChangeHope" TagName="Chklogin" Src="~/Admin/YX_CheckLogin.ascx" %>
  <ChangeHope:Chklogin _Column="1" ID="chk1" runat="server" />
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>no title page</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<link rel="stylesheet" href="../style/style.css" type="text/css" />
 <script language="javascript" type="text/javascript" src="../style/JScript.js"></script>
 
</head>
<body>
    
<table width="100%" border="0" cellpadding="0" cellspacing="0" bgcolor="#C4D8ED">
<tr>
<td><img src="../images/r_1.gif" alt="" /></td>
<td width="100%" background="../images/r_0.gif"></td>
<td><img src="../images/r_2.gif" alt="" /></td>
</tr>
<tr><td></td><td>

    <form id="form1" runat="server">
    
    
        <asp:Panel ID="Panel1" runat="server" width="100%">
      <table  align="center" cellpadding="4" cellspacing="1" border="0" width=100%  class="toptable grid">
         <tr>
          <td height="25" class="category t2" width=100>邮件订阅</td> 
        </tr>
     </table>
        
 <table  align="center" cellpadding="0" cellspacing="0" border="0" width=100%  class="toptable grid">
    <tr>
        <td align="left" colspan="2" style="height: 20px; text-align: right">
        <asp:DataGrid ID="dg1" AutoGenerateColumns="False" PageSize="20"  runat="server" CellPadding="0" CellSpacing="0" class="toptable grid"  Width="100%" AllowPaging="True">
                   <HeaderStyle Height="25px" CssClass="topbg"   HorizontalAlign="Center"    />
                  
                 <ItemStyle BackColor="#F6F6F6" Height="25px" HorizontalAlign="Center" />
                   <Columns>
               <asp:TemplateColumn HeaderText="选择">
                <ItemTemplate >
				
				 <input id="yx_id" name="yx_id" type="checkbox" style="border:0 " value="<%#Eval("yx_id") %>" />
				
                </ItemTemplate>
                      <HeaderStyle CssClass="B" />
             </asp:TemplateColumn>
              <asp:TemplateColumn HeaderText="I  D">
                <ItemTemplate >
				<%#Eval("yx_id")%>
                </ItemTemplate>
                      <HeaderStyle CssClass="B" />
             </asp:TemplateColumn>
			      <asp:TemplateColumn HeaderText="邮箱">
                <ItemTemplate >
				<%#Eval("yx_mail")%>			
                </ItemTemplate>
                      <HeaderStyle CssClass="B" />
             </asp:TemplateColumn>	  
             	 <asp:TemplateColumn HeaderText="操作">
                <ItemTemplate >
				<a href="?YX_FS=Del&YX_MID=<%#Eval("yx_id")%>"><img src="../../Skin/skin5/IMAGES/no.gif" alt="删除" style="border:0" /></a>		
                </ItemTemplate>
                      <HeaderStyle CssClass="B" />
             </asp:TemplateColumn>	            
            </Columns>
    <PagerStyle Visible="False" />        
      </asp:DataGrid> 
                     <table  align="center" cellpadding="0" cellspacing="0" border="0" width=100%  class="toptable grid">
            <tr>
                <td align="center"  style=" width:auto;  height: 22px">
                    <asp:Label ID="Label1" runat="server" Height="22px" Width="95px"></asp:Label>
                    <asp:Label ID="Label2" runat="server" Height="20px" Width="164px"></asp:Label>
                   <asp:HyperLink ID="start" runat="server" ForeColor="Black">首页</asp:HyperLink>
                    <asp:HyperLink ID="prev" runat="server" ForeColor="Black">上一条</asp:HyperLink>
                      <asp:HyperLink ID="next" runat="server" ForeColor="Black">下一条</asp:HyperLink>
                      <asp:HyperLink ID="max" runat="server" ForeColor="Black">尾页</asp:HyperLink>
                    <asp:HyperLink ID="HyperLink1" runat="server" ForeColor="Black">跳转 </asp:HyperLink>
                    <asp:DropDownList ID="iPage" runat="server" AutoPostBack="True" OnSelectedIndexChanged="sic">
              </asp:DropDownList>
                    &nbsp;&nbsp; 
                    <input id="chkall" type="checkbox" onClick="CheckAll(this.form)" style="border:0 " />全选
                    <asp:Button ID="Button2" runat="server" Text="发送" onmousemove=showBtnOver(this) onmouseout=showBtnOut(this)  CssClass="submitMiniGreen" OnClick="Button2_Click"/></td>
            </tr>
        </table>
        </td>
    </tr>
    <tr>
        <td align="left" class="style3" colspan="2" style="height: 20px; text-align: right">
            <table  align="center" cellpadding="0" cellspacing="0" border="0" width=100%  class="toptable grid">
                <tr>
                    <td align="center" bgcolor="#e7e7e7" style="width: 278px; color: #000000; height: 23px;
                        text-align: center">
                        <asp:Label ID="Label5" runat="server" Text="邮件配置"></asp:Label></td>
                    <td align="center" bgcolor="#e7e7e7" style="width: 1083px; color: #000000; height: 23px;
                        text-align: center">
                        <asp:Label ID="Label6" runat="server" Text="服务器"></asp:Label>
                        <asp:TextBox ID="TextBox3" runat="server" Width="92px">smtp.163.com</asp:TextBox>
                        <asp:Label ID="Label7" runat="server" Text="帐号"></asp:Label>
                        <asp:TextBox ID="TextBox4" runat="server" Width="87px"></asp:TextBox>
                        <asp:Label ID="Label8" runat="server" Text="密码"></asp:Label>
                        <asp:TextBox ID="TextBox5" runat="server" Width="72px"></asp:TextBox></td>
                    <td align="center" bgcolor="#e7e7e7" style="width: 430px; color: #000000; height: 23px;
                        text-align: center">
                        邮件配置</td>
                </tr>
          <tr>
              <td align="center" bgcolor="#e7e7e7" style="width: 278px; color: #000000; height: 23px;
                  text-align: center">
                  <asp:Label ID="Label3" runat="server" Text="标题"></asp:Label></td>
                <td align="center" bgcolor="#E7E7E7" style="width: 1083px;color:#000000; height: 23px; text-align: center;">
                    &nbsp;<asp:TextBox ID="TextBox1" runat="server">新上市的物品</asp:TextBox></td>
              <td align="center" bgcolor="#e7e7e7" style="width: 430px; color: #000000; height: 23px;
                  text-align: center">
                  标题</td>
          </tr>
        </table> 
        </td> 
    </tr>
          </table>
	      
	        </asp:Panel>
    </form>
    
        </td><td></td>
</tr>   
<tr>
<td><img src="../images/r_4.gif" alt="" /></td>
<td></td>
<td><img src="../images/r_3.gif" alt="" /></td>
</tr>
</table>
  <Chp:ChangHope_btm ID="chp1" runat="server" />
</body>
</html>
