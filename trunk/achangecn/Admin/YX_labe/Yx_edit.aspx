<%@ page language="C#" autoeventwireup="true" inherits="Admin_YX_labe_Yx_edit, App_Web_aqg4wnqc" %>
<%@ Register  Src="../Admin_Btm.ascx" TagName="ChangHope_btm" TagPrefix="Chp" %>
<%@ Register TagPrefix="ChangeHope" TagName="Chklogin" Src="~/Admin/YX_CheckLogin.ascx" %>
  <ChangeHope:Chklogin _Column="7" ID="chk1" runat="server" />
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
    <div>
     <table  align="center" cellpadding="4" cellspacing="1" border="0" width=100%  class="toptable grid">
         <tr>
          <td height="25" class="category t2" width=100>标签生成器管理</td>
         <td class="category">
             <asp:HyperLink ID="HyperLink1" NavigateUrl="yx_labeviwe.aspx" runat="server">[自定义标签管理]</asp:HyperLink>
             <asp:HyperLink ID="HyperLink2" NavigateUrl="Yx_edit.aspx" runat="server">[自定义标签修改]</asp:HyperLink>
             <asp:HyperLink ID="HyperLink3" NavigateUrl="yx_labeadd.aspx" runat="server">[自定义标签添加]</asp:HyperLink>			 
           </td>
        </tr>
 </table>  
            <table style="width: 985px">
                
                <tr>
                    <td width="165" style="width: 164px; height: 23px;">
                        <asp:Label ID="Label2" runat="server" Text="自定义标签类别：" Width="97px"></asp:Label></td>
                    <td width="52" style="width: 1px; height: 23px;">
                        <asp:DropDownList ID="DropDown_name" runat="server" AutoPostBack="True" Width="125px" OnSelectedIndexChanged="DropDown_name_SelectedIndexChanged">                        </asp:DropDownList>                        </td>
                    <td width="151" style="height: 23px">
                        <asp:TextBox ID="TextBox2" runat="server" Width="119px"></asp:TextBox></td>
                    <td width="65" style="width: 65px; height: 23px;">
                        <asp:Label ID="Label3" runat="server" Text="标签内容：" Width="65px"></asp:Label></td>
                    <td width="149" style="height: 23px; width: 9px;">
                        <asp:TextBox ID="TextBox1" runat="server" Width="132px" ReadOnly="True"></asp:TextBox></td>
                    <td width="59" style="height: 23px">
                        <asp:Button ID="But_xg" runat="server" Text="修　改" OnClick="But_xg_Click" onmousemove=showBtnOver(this) onmouseout=showBtnOut(this)  CssClass="submitMiniGreen"/></td>
                    <td width="312" style="height: 23px;">
                        <asp:Button ID="But_sc" runat="server" Text="删　除" OnClick="But_sc_Click" onmousemove=showBtnOver(this) onmouseout=showBtnOut(this)  CssClass="submitMiniGreen"/></td>
                </tr>
                <tr>
                    <td colspan="7">
                        &nbsp;<asp:DataGrid ID="DataG" runat="server" AllowPaging="True"
            Width="975px" OnEditCommand="DataG_EditCommand" AutoGenerateColumns="False" OnDeleteCommand="DataG_DeleteCommand" OnItemCommand="DataG_ItemCommand" OnItemCreated="DataG_ItemCreated" BackColor="White" OnPageIndexChanged="DataG_PageIndexChanged" PageSize="20">
            <Columns>
                <asp:BoundColumn DataField="yx_id" HeaderText="ID" ReadOnly="True" Visible="False"></asp:BoundColumn>
                <asp:BoundColumn DataField="yx_name" HeaderText="标签名称"></asp:BoundColumn>
                <asp:EditCommandColumn CancelText="取消" EditText="编辑" UpdateText="更新"></asp:EditCommandColumn>
                <asp:ButtonColumn CommandName="Delete" Text="删除"></asp:ButtonColumn>
            </Columns>
                            <PagerStyle Mode="NumericPages" />
        </asp:DataGrid></td>
                </tr>
            </table>
    
    </div>
    </form> 
      </td><td></td>
</tr>   
<tr>
<td><img src="../images/r_4.gif" alt="" /></td>
<td></td>
<td><img src="../images/r_3.gif" alt="" /></td>
</tr>
</table>
<Chp:ChangHope_btm ID="chp1" runat="server" /></td>
</body>
</html>
