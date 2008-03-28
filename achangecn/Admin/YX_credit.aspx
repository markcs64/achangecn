<%@ page language="C#" autoeventwireup="true" inherits="Admin_YX_credit, App_Web_ymdsagyx" %>
<%@ Register  Src="Admin_Btm.ascx" TagName="ChangHope_btm" TagPrefix="Chp" %>
<%@ Register TagPrefix="ChangHope" TagName="Admin_Btm" Src="Admin_Btm.ascx" %>
<%@ Register TagPrefix="ChangeHope" TagName="Chklogin" Src="~/Admin/YX_CheckLogin.ascx" %>
  <ChangeHope:Chklogin _Column="3" ID="chk1" runat="server" />
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>易想网络</title>
    <script language=javascript>
    function setTxt() 
{ 
var t=document.getElementById('TextBox1');
t.select(); 
window.clipboardData.setData('text',t.createTextRange().text); 
} 
    </script>

<link rel="stylesheet" href="style/style.css" type="text/css" />
<script language="javascript" type="text/javascript" src="style/JScript.js"></script>
</head>
<body>
<table width="100%" border="0" cellpadding="0" cellspacing="0" bgcolor="#C4D8ED">
<tr>
<td><img src="images/r_1.gif" alt="" /></td>
<td width="100%" background="images/r_0.gif"></td>
<td><img src="images/r_2.gif" alt="" /></td>
</tr>
<tr><td></td><td>
    <form id="form1" runat="server">
    <div> 
	<table  align="center" cellpadding="4" cellspacing="1" border="0" width=100%  class="toptable grid">
         <tr>
          <td height="25" class="category t2">荣誉管理
           </td>
         </tr>
 </table>
	<center> 
            <table style="width: 100%">
            
                <tr>
                    <td colspan="7" style="height: 23px; text-align: left">
                        <asp:Label ID="Label2" runat="server" style="color:#ffffff; font-weight:bold" Text="荣誉名称：" Width="69px"></asp:Label>
                        &nbsp;<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                        <asp:Label ID="Label3" runat="server" style="color:#ffffff; font-weight:bold" Text="荣誉值：" Width="53px"></asp:Label>
                        <asp:TextBox ID="TextBox1" runat="server" Width="132px"></asp:TextBox>
                        <asp:Label ID="Label4" runat="server" style="color:#ffffff;" Text="等级图片：" Width="62px"></asp:Label>
                        <asp:FileUpload ID="photo" runat="server" />&nbsp;
                        <asp:Image ID="Image2" runat="server" />                        </td>
                </tr>
                <tr>
                    <td colspan="7" style="height: 23px; text-align: center">
                        <asp:Button ID="But_sc" runat="server" Text="添  加" OnClick="But_sc_Click" onmousemove=showBtnOver(this) onmouseout=showBtnOut(this)  CssClass="submitMiniGreen"/>
                        <asp:Button ID="But_xg" runat="server" Text="修  改" OnClick="But_xg_Click" onmousemove=showBtnOver(this) onmouseout=showBtnOut(this)  CssClass="submitMiniGreen"/></td>
                </tr>
                <tr>
                    <td colspan="7" style="text-align: left"> 
                        <asp:DataGrid ID="DataG" runat="server" AllowPaging="True" CellPadding="1" CellSpacing="1" Width="100%"  OnEditCommand="DataG_EditCommand" AutoGenerateColumns="False" OnDeleteCommand="DataG_DeleteCommand" OnItemCommand="DataG_ItemCommand" OnItemCreated="DataG_ItemCreated" OnPageIndexChanged="DataG_PageIndexChanged" PageSize="15" Border="0">
                 <HeaderStyle Height="30px"  CssClass="topbg" HorizontalAlign="Center" />
                 <ItemStyle BackColor="#F6F6F6" Height="25px" HorizontalAlign="Center" />
            <Columns>
                <asp:BoundColumn DataField="yx_id" HeaderText="ID" ReadOnly="True" Visible="False"></asp:BoundColumn>
                <asp:BoundColumn  HeaderStyle-ForeColor="white" DataField="yx_grade" HeaderText="荣称"></asp:BoundColumn>
                <asp:TemplateColumn HeaderStyle-ForeColor="white" HeaderText="等级">
                    <ItemTemplate>
                        <img src="../<%#Eval("yx_map") %>"  style="width:auto; height:15px">                    </ItemTemplate>
                </asp:TemplateColumn>
                <asp:BoundColumn HeaderStyle-ForeColor="white" DataField="yx_point" HeaderText="荣誉值"></asp:BoundColumn>
                <asp:EditCommandColumn CancelText="取消" EditText="编辑" UpdateText="更新"></asp:EditCommandColumn>
                <asp:ButtonColumn CommandName="Delete" Text="删除"></asp:ButtonColumn>
            </Columns>
                            <PagerStyle Mode="NumericPages" />
                            <ItemStyle Height="15px" BackColor="#F6F6F6" HorizontalAlign="Center" />
        </asp:DataGrid></td>
                </tr>
            </table>
   </center>  </div>
    </form> 
	      </td><td></td>
</tr>   
<tr>
<td><img src="images/r_4.gif" alt="" /></td>
<td></td>
<td><img src="images/r_3.gif" alt="" /></td>
</tr>
</table>
<Chp:ChangHope_btm ID="chp1" runat="server" /></td>
</body>
</html>
