<%@ page language="C#" autoeventwireup="true" inherits="Admin_YX_Product_AdminPPai, App_Web_6gj4jtg5" %>
<%@ Register  Src="../Admin_Btm.ascx" TagName="ChangHope_btm" TagPrefix="Chp" %>

<%@ Register TagPrefix="ChangHope" TagName="pinpaiClass" Src="~/Admin/pinpaiClass_list.ascx" %>
<%@ Register TagPrefix="ChangeHope" TagName="Chklogin" Src="~/Admin/YX_CheckLogin.ascx" %>

<ChangeHope:Chklogin _Column="2" ID="chk1" runat="server" />
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>无标题页</title>
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
    <div>
   
 <table  align="center" cellpadding="4" cellspacing="1" border="0" width=100%  class="toptable grid">
         <tr>
          <td height="25" class="category t2" width=100>品牌管理</td>
         <td class="category">
             <asp:HyperLink ID="HyperLink1" NavigateUrl="AdminPPai.aspx?Flag=admin" runat="server">[品牌管理]</asp:HyperLink>
             <asp:HyperLink ID="HyperLink2" NavigateUrl="AdminPPai.aspx?YX_FS=Add" runat="server">[添加品牌]</asp:HyperLink>
                        
           </td>
        </tr>
 </table>
      
		  <asp:Panel ID="Panel1" runat="server" Width="100%">
<table width="100%" border="0" cellspacing="0" cellpadding="0" align="center">
  <tr>
    <td width="100%" valign=top>
	<asp:DataGrid ID="dg1" AutoGenerateColumns="False" CellPadding="0" CellSpacing="0" PageSize="20"  runat="server"  Width="100%" AllowPaging="True" >
                   <HeaderStyle Height="30px"  CssClass="topbg" HorizontalAlign="Center" />
                 <ItemStyle BackColor="#F6F6F6" Height="25px" HorizontalAlign="Center" />
                   <Columns>
               <asp:TemplateColumn HeaderText="选   择">
                <ItemTemplate >
				
				 <input id="YX_CH" name="YX_CH" type="checkbox" style="border:0 " value="<%# Eval("YX_ID") %>"  />
				
                </ItemTemplate>
                      <HeaderStyle CssClass="B" />
             </asp:TemplateColumn>
              <asp:TemplateColumn HeaderText="I  D">
                <ItemTemplate >
			
				<%# Eval("YX_ID") %>
                </ItemTemplate>
                      <HeaderStyle CssClass="B" />
             </asp:TemplateColumn>
			      <asp:TemplateColumn HeaderText="品牌名称">
                <ItemTemplate >
		
				<%# Eval("YX_PinPaiName")%>
                </ItemTemplate>
                      <HeaderStyle CssClass="B" />
             </asp:TemplateColumn>
			  
             <asp:TemplateColumn HeaderText="操　　作">
                <ItemTemplate >
			
				<a href="YX_EditPinPai.aspx?YX_FS=Edit&YX_MID=<%#Eval("YX_ID")%>"><img src="../../Skin/skin5/IMAGES/icon_edit.gif" style="border:0" alt="编辑" /></a>
				<a href="?YX_FS=Del&YX_MID=<%#Eval("YX_ID")%>"><img src="../../Skin/skin5/IMAGES/no.gif" style="border:0" alt="删除" /></a>
                </ItemTemplate>
                  <HeaderStyle CssClass="B" />
             </asp:TemplateColumn>			 
            </Columns>
    <PagerStyle Visible="False" />          
      </asp:DataGrid>
      
      </td>
  </tr>
  <tr>
    <td valign=top> <table border="0" cellpadding="0" cellspacing="0" style="width: 100%">
            <tr bgcolor="#E7E7E7">
                <td align="center" bgcolor="#E7E7E7" style="width: 900px;color:#000000; height: 22px;">
                    <asp:Label ID="Label1" CssClass="font1" runat="server" Text="Label"></asp:Label>
                    <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>  &nbsp; 
                   <asp:HyperLink ID="start" runat="server" ForeColor="#000000">首　页</asp:HyperLink>
                      &nbsp;
                    <asp:HyperLink ID="prev" runat="server" ForeColor="#000000"> 上一页</asp:HyperLink>
                    &nbsp;
                      <asp:HyperLink ID="next" runat="server" ForeColor="#000000">下一页</asp:HyperLink>
                     &nbsp;
                      <asp:HyperLink ID="max" runat="server" ForeColor="#000000">末　页</asp:HyperLink>
                    <span class="font1">转向</span>         
                    <asp:DropDownList ID="iPage" runat="server" AutoPostBack="True" OnSelectedIndexChanged="sic">
              </asp:DropDownList> <input id="chkall" type="checkbox" onClick="CheckAll(this.form)" style="border:0 " />全选</td>
              <td align="left" style="width: 50px; height: 22px;">
  </td><td align="left" bgcolor="#E7E7E7" style="width: 180px; height: 22px;">
             
                  </td>
                <td align="center" style="width: 50px; height: 22px;">
                </td>
            </tr>
        </table></td>
  </tr>

</table>
 </asp:Panel>
        <asp:Panel ID="Panel2" runat="server"  Width="100%">
          <table width="100%" border="0" align="center" cellpadding="1" cellspacing="1" id="TABLE1">
            <tr>
              <td width="18%"  class="topbg B">设置名称</td>
              <td width="61%" height="25"  class="topbg B">基本参数设置</td>
              <td width="21%" class="B topbg">设置说明</td>
            </tr>
            <tr>
              <td align="center" bgcolor="#F6F6F6">
                  物品分类：</td>
              <td height="25" align="left" bgcolor="#F6F6F6">
                <ChangHope:pinpaiClass ID="pinpaiClass1" runat="server" />  &nbsp;</td>
              <td bgcolor="#F6F6F6">&nbsp;</td>
            </tr>   
              <tr>
                  <td align="center" bgcolor="#f6f6f6">
                  品牌名称：</td>
                  <td align="left" bgcolor="#f6f6f6" height="25">
                  <asp:TextBox ID="YX_pp" runat="server" Width="289px"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="YX_pp"
                      Display="Dynamic" ErrorMessage="＊不能为空"></asp:RequiredFieldValidator></td>
                  <td bgcolor="#f6f6f6">                  </td>
              </tr>
                 <tr>
                  <td align="center" bgcolor="#f6f6f6" style="height: 27px">
                  品牌推荐：</td>
                  <td align="left" bgcolor="#f6f6f6" style="height: 27px">
                      <asp:RadioButton ID="RadioButton1" Checked runat="server" GroupName="grouppp" Text="推荐" />
                      <asp:RadioButton ID="RadioButton2"  runat="server" GroupName="grouppp" Text="不推荐" />                      </td>
                  <td bgcolor="#f6f6f6" style="height: 27px">                  </td>
              </tr>
                               <tr>
                  <td align="center" bgcolor="#f6f6f6" style="height: 48px">
                  品牌图片：</td>
                  <td align="left" bgcolor="#f6f6f6" style="height: 48px">
                      <asp:FileUpload ID="photo" runat="server" /></td>
                  <td bgcolor="#f6f6f6" style="height: 48px">                  </td>
              </tr>
                               <tr>
                  <td align="center" bgcolor="#f6f6f6">
                  品牌说明：</td>
                  <td align="left" bgcolor="#f6f6f6" height="25">
                      <asp:TextBox ID="TextBox2" runat="server" Height="50px" TextMode="MultiLine" Width="300px"></asp:TextBox></td>
                  <td bgcolor="#f6f6f6">                  </td>
              </tr>
            <tr>
              <td align="center" bgcolor="#F6F6F6"></td>
              <td height="25" bgcolor="#F6F6F6" align="center">&nbsp;
                <asp:Button ID="Button1" runat="server" Text="添    加"  OnClick="Button1_Click" onmousemove=showBtnOver(this) onmouseout=showBtnOut(this)  CssClass="submitMiniGreen" /></td>
              <td bgcolor="#F6F6F6">&nbsp;</td>
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
<Chp:ChangHope_btm ID="chp" runat="server" /> 
</body>
</html>