<%@ page language="C#" autoeventwireup="true" inherits="Admin_YX_Shop_YX_AdminClass, App_Web_hzrmr9fw" %>
<%@ Register  Src="../Admin_Btm.ascx" TagName="ChangHope_btm" TagPrefix="Chp" %>
<%@ Register TagPrefix="ChangeHope" TagName="Chklogin" Src="~/Admin/YX_CheckLogin.ascx" %>
  <ChangeHope:Chklogin _Column="4" ID="chk1" runat="server" />
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
<title>无标题页</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" href="../style/style.css" type="text/css" />
<script language="javascript" type="text/javascript" src="../style/JScript.js"></script>
</head>
<body  >
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
          <td height="25" class="category t2">商铺用户自定义分类管理</td>
         </tr>
 </table>  
        <asp:Panel ID="Panel1" runat="server">
          <table width="100%" height="5" border="0" cellspacing="0" cellpadding="0">

</table>
        <table width="100%" border="0" cellspacing="0" cellpadding="0" align="center">
       <%-- <tr><td bgcolor=#ffffff align=right><a href="?order=0">按ID排序</a>&nbsp;<a href="?order=1">按商铺排序</a></td></tr>--%>
  <tr>
    <td width="100%">
	<asp:DataGrid ID="dg1" AutoGenerateColumns="False" CellPadding="1" CellSpacing="1" PageSize="20"  runat="server"  Width="100%" AllowPaging="True" border=0 OnItemDataBound="dg1_ItemDataBound" > <HeaderStyle  CssClass="topbg" Height="25px"  HorizontalAlign="Center" />
                 <ItemStyle BackColor="#F6F6F6" Height="25px" HorizontalAlign="Center" />
                   <Columns>
               <asp:TemplateColumn HeaderText="选   择">
                <ItemTemplate >
				
				 <input id="YX_CH" name="YX_CH" type="checkbox" style="border:0 " value="<%# DataBinder.Eval(Container.DataItem,"YX_shopclassid") %>"  />
				
                </ItemTemplate>
                      <HeaderStyle CssClass="B" />
             </asp:TemplateColumn>
              <asp:TemplateColumn HeaderText="I  D">
                <ItemTemplate >
			<%# DataBinder.Eval(Container.DataItem,"YX_shopclassid") %>
				
                </ItemTemplate>
                      <HeaderStyle CssClass="B" />
             </asp:TemplateColumn>
             <asp:TemplateColumn HeaderText="分类名称">
                <ItemTemplate >	
			<%# DataBinder.Eval(Container.DataItem,"YX_shopname") %>
	                  </ItemTemplate>
                  <HeaderStyle CssClass="B" />
             </asp:TemplateColumn>
              <asp:TemplateColumn HeaderText="店铺名称">
                <ItemTemplate >
                 <%#ChangeHope.ChangHope_ExcUser.User_column("YX_shop", Convert.ToInt32(Eval("YX_userid")), "YX_shopname", "yx_shopuserid")%>
                </ItemTemplate>
                  <HeaderStyle CssClass="B" />
             </asp:TemplateColumn>
                <asp:TemplateColumn HeaderText="操　　作">
                <ItemTemplate >
					
				<a href="?YX_FS=Edit&YX_MID=<%#Eval("YX_shopclassid") %>"><img src="../../Skin/skin5/IMAGES/icon_edit.gif" alt="修改" style="border:0" /></a>
				<a href="?YX_FS=Del&YX_MID=<%#Eval("YX_shopclassid") %>" onClick="return isdel()"><img src="../../Skin/skin5/IMAGES/no.gif" alt="删除" style="border:0" /></a>		
                </ItemTemplate>
                  <HeaderStyle CssClass="B" />
             </asp:TemplateColumn>			 
            </Columns>
    <PagerStyle Visible="False" />          
      </asp:DataGrid>
      
      </td>
  </tr>
  <tr>
    <td> <table border="0" cellpadding="0" cellspacing="0" style="width: 100%">
            <tr bgcolor="#E7E7E7">
                <td align="center" bgcolor="#E7E7E7" style="width: 900px;color:#000000">
                    <asp:Label ID="Label1" CssClass="font1" runat="server" Text="Label"></asp:Label>
                    <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                   <asp:HyperLink ID="start" runat="server" ForeColor="#000000">首　页</asp:HyperLink>
 
                    <asp:HyperLink ID="prev" runat="server" ForeColor="#000000"> 上一页</asp:HyperLink>
                    &nbsp;
                      <asp:HyperLink ID="next" runat="server" ForeColor="#000000">下一页</asp:HyperLink>
                     &nbsp;
                      <asp:HyperLink ID="max" runat="server" ForeColor="#000000">末　页</asp:HyperLink>
                    <span class="font1">转向</span>         
                    <asp:DropDownList ID="iPage" runat="server" AutoPostBack="True" OnSelectedIndexChanged="sic">
              </asp:DropDownList> <input id="chkall" type="checkbox" onClick="CheckAll(this.form)" style="border:0 " />全选</td>
              <td align="left" style="width: 50px">
               <asp:DropDownList ID="DropDownList1" runat="server">
                   <asp:ListItem Value="0">-批量删除-</asp:ListItem>  

                    </asp:DropDownList>
  </td><td align="left" bgcolor="#E7E7E7" style="width: 180px">
<asp:Button ID="Button2" runat="server" Text="执行操作" OnClientClick="return isExc()" onmousemove=showBtnOver(this) onmouseout=showBtnOut(this)  CssClass="submitMiniGreen"  OnClick="Button2_Click" />
                  </td>
                <td align="center" style="width: 50px">
                </td>
            </tr>
        </table></td>
  </tr>
</table>
        </asp:Panel>
<asp:Panel runat="server"  ID="Panel2" Width="100%">
<table width="100%" border="0" align="right" bgcolor="ffffff">
  <tr>
    <td width="231" align="right" style="height: 23px">分类名称</td>
    <td width="734" style="height: 23px" >&nbsp;
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox1"
            ErrorMessage="分类名称不能为空"></asp:RequiredFieldValidator>
            <asp:HiddenField ID="HiddenField1"    runat="server" />
            
            
            </td>
  </tr>
 <tr>
    <td colspan="2" align="center">&nbsp;<asp:Button ID="botton" runat="server" Text="提交信息" OnClick="botton_Click" onmousemove=showBtnOver(this) onmouseout=showBtnOut(this)  CssClass="submitMiniGreen"/></td>
    </tr>
</table>
</asp:Panel>
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
<Chp:ChangHope_btm ID="chp1" runat="server" />
</body>
</html>
