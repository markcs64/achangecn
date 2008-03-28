<%@ page language="C#" autoeventwireup="true" inherits="Admin_YX_SitModel_YX_SecondArea, App_Web_c8yzgfca" %>
<%@ Register  Src="../Admin_Btm.ascx" TagName="ChangHope_btm" TagPrefix="Chp" %>
<%@ Register TagPrefix="ChangHope" TagName="ProClass" Src="~/Admin/Class_list.ascx" %>
<%@ Register TagPrefix="ChangeHope" TagName="Chklogin" Src="~/Admin/YX_CheckLogin.ascx" %>
  <ChangeHope:Chklogin _Column="4" ID="chk1" runat="server" />
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>no title page</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" href="../style/style.css" type="text/css" />
<script language="javascript" type="text/javascript" src="../style/JScript.js"></script>
<script language="javascript" type="text/javascript">
function selectshop()
{
    var keyword=<%=HttpUtility.UrlEncode("document.getElementById('keyword').value")%> ;
    var searchtype=document.getElementById('searchtype').value;
    document.getElementById("form1").action="?keyword="+keyword+"&searchtype="+searchtype;
    document.form1.submit();
 }
</script>
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
    <table  align="center" cellpadding="4" cellspacing="1" border="0" width=100%  class="toptable grid">
         <tr>
          <td height="25" class="category t2">二级域名管理           </td>
         </tr>
 </table>
        <asp:Panel ID="Panel1" runat="server" width="100%">
        <table width="100%" height="25" border="0" cellpadding="2" cellspacing="2">
            <tr>
            <td height="25" class="category" width=100>搜索</td>
              <td class="category" > 
                关键字:<input type=text name=keyword id=keyword/>
                查询类别<select name=searchtype><option value=1 selected>ID号</option><option value=2>用户名</option><option value=3>店铺名称</option><option value=4>状态</option></select>
                <input type=button value=查询 onclick='selectshop()' onmousemove=showBtnOver(this) onmouseout=showBtnOut(this) Class="submitMiniGreen" >               </td>  
            </tr>
          </table>
          <table width="100%" border="0" cellpadding="2" cellspacing="2">
    <tr>
        <td align="left" colspan="2" style="height: 20px; text-align: right">
        <asp:DataGrid ID="dg1" AutoGenerateColumns="False" PageSize="20"  runat="server" CellPadding="0" CellSpacing="0"  Width="100%" AllowPaging="True"  OnSelectedIndexChanged="dg1_SelectedIndexChanged"> <HeaderStyle  CssClass="topbg" Height="25px"  HorizontalAlign="Center" />
                 <ItemStyle BackColor="#F6F6F6" Height="25px" HorizontalAlign="Center" />
                   <Columns>
               <asp:TemplateColumn HeaderText="选择">
                <ItemTemplate >
				
				 <input id="yx_id" name="yx_id" type="checkbox" style="border:0 " value="<%#Eval("yx_shopid") %>" />
				
                </ItemTemplate>
                      <HeaderStyle CssClass="B" />
             </asp:TemplateColumn>
              <asp:TemplateColumn HeaderText="I  D">
                <ItemTemplate >
				<%#Eval("yx_shopid")%>
                </ItemTemplate>
                      <HeaderStyle CssClass="B" />
             </asp:TemplateColumn>
			      <asp:TemplateColumn HeaderText="用户名">
                <ItemTemplate >
				<%#Eval("yx_shopuser")%>			
                </ItemTemplate>
                      <HeaderStyle CssClass="B" />
             </asp:TemplateColumn>	 
             <asp:TemplateColumn HeaderText="店铺名">
                <ItemTemplate >
				<%#Eval("yx_shopname")%>			
                </ItemTemplate>
                      <HeaderStyle CssClass="B" />
             </asp:TemplateColumn>	 
             <asp:TemplateColumn HeaderText="状态">
                <ItemTemplate >
                <%#setstat(Convert.ToInt32(Eval("yx_stat"))) %>		
                </ItemTemplate>
                      <HeaderStyle CssClass="B" />
             </asp:TemplateColumn>
             	 <asp:TemplateColumn HeaderText="操作">
                <ItemTemplate >
				<a href="?YX_FS=edit&YX_MID=<%#Eval("yx_shopid")%>&falg=<%#Eval("yx_stat") %>"><img src="../../Skin/skin5/IMAGES/icon_edit.gif" alt="设置域名" style="border:0" /></a>		
                </ItemTemplate>
                      <HeaderStyle CssClass="B" />
             </asp:TemplateColumn>	            
            </Columns>
    <PagerStyle Visible="False" />        
      </asp:DataGrid> 
                    <table border="0" cellpadding="0" cellspacing="0" style="width: 100%; height: 1px;">
            <tr>
                <td align="center" bgcolor="#e7e7e7" style=" width:auto; color: #000000; height: 22px">
                    <asp:Label ID="Label1" runat="server" Height="22px" Width="95px"></asp:Label>
                    <asp:Label ID="Label2" runat="server" Height="20px" Width="164px"></asp:Label>
                   <asp:HyperLink ID="start" runat="server" ForeColor="Black">首页</asp:HyperLink>
                    <asp:HyperLink ID="prev" runat="server" ForeColor="Black">上一条</asp:HyperLink>
                      <asp:HyperLink ID="next" runat="server" ForeColor="Black">下一条</asp:HyperLink>
                      <asp:HyperLink ID="max" runat="server" ForeColor="Black">尾页</asp:HyperLink>
                    <asp:HyperLink ID="HyperLink1" runat="server" ForeColor="Black">跳转 </asp:HyperLink>
                    <asp:DropDownList ID="iPage" runat="server" AutoPostBack="True" OnSelectedIndexChanged="sic">
              </asp:DropDownList>
             
                    <input id="chkall" type="checkbox" onClick="CheckAll(this.form)" style="border:0 " />全选
               
                    <asp:Button ID="Button2" runat="server" Text="审核" OnClick="Button2_Click" onmousemove=showBtnOver(this) onmouseout=showBtnOut(this)  CssClass="submitMiniGreen"/></td>
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
