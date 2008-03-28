<%@ page language="C#" autoeventwireup="true" inherits="Admin_YX_Product_add, App_Web_4bzszcgk" %>
<%@ Register  Src="../Admin_Btm.ascx" TagName="ChangHope_btm" TagPrefix="Chp" %>
<%@ Register TagPrefix="ChangeHope" TagName="Chklogin" Src="~/Admin/YX_CheckLogin.ascx" %>
<%@ Register TagPrefix="ChangHope" TagName="ProClass" Src="Article_Class.ascx" %>
  <ChangeHope:Chklogin _Column="9" ID="chk1" runat="server" />
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>无标题页</title>
 
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
          <td height="25" class="category t2" width=100>文章管理</td>
         <td class="category">
             <asp:HyperLink ID="HyperLink1" runat="server">[文章分类管理]</asp:HyperLink>
             <asp:HyperLink ID="HyperLink2" runat="server">[文章分类增加]</asp:HyperLink>
             
             
           </td>
        </tr>
 </table>
 <asp:Panel ID="Panel1" runat="server" Width="100%">
          


		  <table  align="center" cellpadding="4" cellspacing="1" border="0" width=100%  >
            <tr>
              <td width="18%" class="topbg B">设置名称</td>
              <td width="61%" class="topbg B">基本参数设置</td>
              <td width="21%" class="topbg B">设置说明</td>
            </tr>
            
            <tr>
              <td align="center" bgcolor="#F6F6F6">所属分类：</td>
              <td height="25" align="left" bgcolor="#F6F6F6"><ChangHope:ProClass ID="Pc" runat="server" /></td>
              <td bgcolor="#F6F6F6">&nbsp;</td>
            </tr>
           <tr>
              <td align="center" bgcolor="#F6F6F6">分类名称：</td>
              <td height="25" align="left" bgcolor="#F6F6F6">
                <asp:TextBox ID="ClassName" runat="server"></asp:TextBox>
              <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="ClassName"
                      ErrorMessage="该项不能为空"></asp:RequiredFieldValidator>  <asp:CheckBox ID="CheckBox1" runat="server" Text="单页" Visible="false" /></td>
              <td bgcolor="#F6F6F6">&nbsp;</td>
            </tr>
            <tr>
              <td align="center" bgcolor="#F6F6F6">关键字：</td>
              <td height="25" align="left" bgcolor="#F6F6F6">
              <asp:TextBox ID="Keys_Words" runat="server"></asp:TextBox></td>
              <td bgcolor="#F6F6F6">&nbsp;</td>
            </tr>
            <tr style=" display:none">
              <td align="center" bgcolor="#F6F6F6"></td>
              <td bgcolor="#F6F6F6">
              <textarea id="content1" name='content1' cols="20" rows="2" style="display:none" ></textarea>
            
              </td>
              <td bgcolor="#F6F6F6" >&nbsp;</td>
            </tr>
              
              <tr style=" display:none">
                  <td align="center" bgcolor="#f6f6f6" style="height: 27px">
                      厂商名称：</td>
                  <td align="left" bgcolor="#f6f6f6" style="height: 27px">
                <asp:TextBox ID="YX_Cs" runat="server"></asp:TextBox></td>
                  <td bgcolor="#f6f6f6" style="height: 27px">
                  </td>
              </tr>
            <tr>
              <td align="center" bgcolor="#F6F6F6"></td>
              <td height="25" bgcolor="#F6F6F6" align="center">&nbsp;<asp:Button ID="Button1" onmousemove=showBtnOver(this) onmouseout=showBtnOut(this)  CssClass="submitMiniGreen" runat="server" Text="添    加" OnClick="Button1_Click2"  Width="104px" /></td>
              <td bgcolor="#F6F6F6">&nbsp;</td>
            </tr>
          </table>
		
          </asp:Panel>
    <asp:Panel ID="Panel2" runat="server"  Width="100%">


<table width="100%" border="0" cellspacing="0" cellpadding="0" align="center">
  <tr>
    <td width="100%">
	<asp:DataGrid ID="dg1" AutoGenerateColumns="False" runat="server"  CellSpacing=1 border=0  Width="100%" CellPadding="0">
                   <HeaderStyle Height="25px" CssClass="topbg" HorizontalAlign="Center" />
                 <ItemStyle BackColor="#F6F6F6" />
                   <Columns>
                 <asp:TemplateColumn HeaderText="id">
                <ItemTemplate >
				<table ><tr>
				<td align="center"><%#DataBinder.Eval(Container.DataItem, "YX_ID")%></td>
                </tr></table>
                </ItemTemplate>
                      <HeaderStyle CssClass="B" />
                      <ItemStyle Width="50px" HorizontalAlign=Center />
             </asp:TemplateColumn>
			      <asp:TemplateColumn HeaderText="分类名称">
                <ItemTemplate >
				<table ><tr>
				<td align="center"><%# strclass(Convert.ToInt32(DataBinder.Eval(Container.DataItem, "YX_ID")))%>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				</td>
                </tr></table>
                </ItemTemplate>
                      <HeaderStyle CssClass="B" />
                      <ItemStyle Width="300px" />
             </asp:TemplateColumn>
             <asp:TemplateColumn HeaderText="排&#160;&#160;&#160; 序">
                <ItemTemplate >
				<table align="center"><tr>
				<td>
				<a href="?action=uporder&YX_id=<%# DataBinder.Eval(Container.DataItem, "YX_ID")%>&ChannelID=<%#Eval("YX_ChannelClass") %>"><img src="../../Skin/skin5/IMAGES/up.gif" style="border:0"  alt="上移"/></a>　&nbsp;&nbsp; 
				<a href="?action=down&YX_id=<%# DataBinder.Eval(Container.DataItem, "YX_ID")%>&ChannelID=<%#Eval("YX_ChannelClass") %>"><img src="../../Skin/skin5/IMAGES/down.gif" style="border:0"  alt="下移"/></a>
				</td>
            </tr></table>
             </ItemTemplate>
                 <HeaderStyle CssClass="B" />
                 <ItemStyle Width="150px" />
             </asp:TemplateColumn>
			  <asp:TemplateColumn HeaderText="编&#160;&#160; 辑">
                <ItemTemplate >
				<table align="center"><tr>
				<td>
				<a href="YX_EditClaas.aspx?YX_MID=<%# DataBinder.Eval(Container.DataItem, "YX_ID")%>&ChannelID=<%#Eval("YX_ChannelClass") %>"><img src="../../Skin/skin5/IMAGES/icon_edit.gif" style="border:0" alt="编辑" /></a>
				 <a href="?action=del&YX_id=<%# DataBinder.Eval(Container.DataItem, "YX_ID")%>&ChannelID=<%#Eval("YX_ChannelClass") %>"><img src="../../Skin/skin5/IMAGES/no.gif" style="border:0" alt="删除" /></a> 
				<a href="?action=move&YX_id=<%# DataBinder.Eval(Container.DataItem, "YX_ID")%>&ChannelID=<%#Eval("YX_ChannelClass") %>"><%--<img src="../../Skin/skin5/IMAGES/UpD.jpg" style="border:0" alt="移动分类" />--%>移动分类</a> 
				</td>
                </tr></table>
                </ItemTemplate>
                  <HeaderStyle CssClass="B" />
             </asp:TemplateColumn>
			 
            
            </Columns>
    <PagerStyle Visible="False" />

            
      </asp:DataGrid></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
  </tr>
</table>


        </asp:Panel>
       <asp:Panel ID="Panel3" runat="server" Width="100%">
<table cellpadding="0" cellspacing="1" border="0" width="100%" class="border" align="center">
	<tr>
	  <td colspan="3" align="center" class="title" style="height: 16px">
	  	  <table width="100%" height="25" border="0" cellpadding="0" cellspacing="0">
            <tr>
              <td  class="topbg B">新闻分类管理</td>
            </tr>
          </table>
          </td>
    </tr>
    <tr> 
      <td width="200" style="height: 16px" bgcolor="#ffffff"><strong>&nbsp;栏目名称：</strong></td>
      <td style="height: 25px" bgcolor="#ffffff">
          <asp:Label ID="lm" runat="server" EnableTheming="True" Text="Label"></asp:Label></td>
    </tr>
    <tr >
      <td width="200" style="height: 16px"  bgcolor="#ffffff"><strong>&nbsp;当前所属栏目：</strong></td>
      <td style="height: 25px" bgcolor="#ffffff">
          <asp:Label ID="sslm" runat="server" Text="Label"></asp:Label></td>
    </tr>
    <tr> 
      <td width="200"  bgcolor="#ffffff"><strong>&nbsp;移动到：</strong><br>
        &nbsp;不能指定为当前栏目的下属子栏目<br>
        &nbsp;不能指定为外部栏目</td>
      <td  bgcolor="#ffffff">
      <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
        </td>
    </tr>
    <tr> 
      <td height="40" colspan="2" align="center"  bgcolor="#ffffff">
      <asp:HiddenField ID="HiddenField1" runat="server" />
      <input name="Action" type="hidden" id="Action" value="SaveMove"/> 
         <asp:Button ID="Button2"
          runat="server" Text="移动到选中的分类" onmousemove=showBtnOver(this) onmouseout=showBtnOut(this)  CssClass="submitMiniGreen"  OnClick="Button1_Click"  />
	 </td>
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
