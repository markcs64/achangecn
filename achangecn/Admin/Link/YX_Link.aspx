<%@ page language="C#" autoeventwireup="true" inherits="Admin_YX_Link, App_Web_nl8fvhxe" %>
<%@ Register  Src="../Admin_Btm.ascx" TagName="ChangHope_btm" TagPrefix="Chp" %>
<%@ Register TagPrefix="ChangeHope" TagName="Chklogin" Src="~/Admin/YX_CheckLogin.ascx" %>
<ChangeHope:Chklogin _Column="6" ID="chk1" runat="server" />
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
          <td height="25" class="category t2" width=100>友情连接管理</td>
         <td class="category">
             <asp:HyperLink ID="HyperLink1" NavigateUrl="YX_Link.aspx?YX_FS=Add" runat="server">[添加友情连接 ]</asp:HyperLink>
             <asp:HyperLink ID="HyperLink2" NavigateUrl="YX_Link.aspx" runat="server">[友情连接管理]</asp:HyperLink>
           </td>
        </tr>
 </table>   
    <asp:Panel ID="Panel1" runat="server" Width="100%">
		  <table width="100%" border="0" cellspacing="0" cellpadding="0" align="center">
  <tr>
    <td width="100%">
	<asp:DataGrid ID="dg1" AutoGenerateColumns="False" CellPadding="1" CellSpacing="1" PageSize="20"  runat="server"  Width="100%" AllowPaging="True" border=0 OnItemDataBound="dg1_ItemDataBound" > <HeaderStyle Height="30px"  CssClass="topbg" HorizontalAlign="Center" />
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
			      <asp:TemplateColumn HeaderText="网站名称">
                <ItemTemplate >
		
				<%# Eval("YX_WebName") %>
                </ItemTemplate>
                      <HeaderStyle CssClass="B" />
             </asp:TemplateColumn>
            			      <asp:TemplateColumn HeaderText="用户名称">
                <ItemTemplate >
                  <%#dismc(Convert.ToInt32(Eval("YX_userid")))%>
                </ItemTemplate>
                      <HeaderStyle CssClass="B" />
             </asp:TemplateColumn>
			  <asp:TemplateColumn HeaderText="LOGO内型">
                <ItemTemplate >	
		<a href="?YX_FS=Edit&YX_MID=<%#Eval("YX_id") %>">
<%#GetTypename(Convert.ToInt32(Eval("YX_Type")))%>
</a>
		       </ItemTemplate>
                  <HeaderStyle CssClass="B" />
             </asp:TemplateColumn>
             
             <asp:TemplateColumn HeaderText="是否审核">
                <ItemTemplate >
		<%#Ret_stat(Convert.ToInt16(Eval("YX_Ver")))%>
                </ItemTemplate>
                  <HeaderStyle CssClass="B" />
             </asp:TemplateColumn>
             
             <asp:TemplateColumn HeaderText="操　　作">
                <ItemTemplate >
				<a href="?YX_FS=SJ&YX_MID=<%#Eval("YX_ID")%>">审核</a>
				<a href="?YX_FS=NSJ&YX_MID=<%#Eval("YX_ID")%>">取消审核</a>
			
				<a href="?YX_FS=Del&YX_MID=<%#Eval("YX_ID")%>">删除</a>
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
              <td align="left" style="width: 50px">
  </td><td align="left" bgcolor="#E7E7E7" style="width: 180px">
                    <asp:DropDownList ID="DropDownList1" runat="server">                                   
                       <asp:ListItem Value="2">---批量删除---</asp:ListItem>                  
                    </asp:DropDownList>
                  </td>
                <td align="center" style="width: 50px"><asp:Button ID="Button2" runat="server" Text="执行操作" OnClientClick="return isExc()" OnClick="Button2_Click" onmousemove=showBtnOver(this) onmouseout=showBtnOut(this)  CssClass="submitMiniGreen" />
                </td>
            </tr>
        </table></td>
  </tr>
</table>
 </asp:Panel>
        <asp:Panel ID="Panel2" runat="server"  Width="100%">
          <table width="100%" border="0" align="center" cellpadding="1" cellspacing="1" id="TABLE1">
            <tr>
              <td width="18%" class="B topbg">设置名称</td>
              <td width="61%" height="25"  class="B topbg">基本参数设置</td>
              <td width="21%"  class="B topbg">设置说明</td>
            </tr>
              <tr>
                  <td align="center" bgcolor="#f6f6f6">
                      连接类型：</td>
                  <td align="left" bgcolor="#f6f6f6" height="25">
                      <asp:RadioButton ID="RadioButton1" GroupName="r1" runat="server" Text="图片" />&nbsp;
                      <asp:RadioButton ID="RadioButton2" GroupName="r1" runat="server" Text="文字" /></td>
                  <td bgcolor="#f6f6f6">
                  </td>
              </tr>
            <tr>
              <td align="center" bgcolor="#F6F6F6">网站名称：</td>
              <td height="25" align="left" bgcolor="#F6F6F6">
                  <asp:TextBox ID="YX_fcname" runat="server"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="YX_fcname"
                      Display="Dynamic" ErrorMessage="＊不能为空"></asp:RequiredFieldValidator></td>
              <td bgcolor="#F6F6F6">&nbsp;</td>
            </tr>
            <tr>
              <td align="center" bgcolor="#F6F6F6">网站LOGO：</td>
              <td height="25"  bgcolor="#F6F6F6" align="left"><table align="left">
                <tr>
                <td align="left">
                    <asp:TextBox ID="imgUrl"  name="imgUrl" runat="server"></asp:TextBox>
                </td>
                <td>
                <iframe id="upfile" src="YX_UpFile.aspx" scrolling="no" frameborder="0" width="300px" height="25"></iframe>
                </td>
                </tr>
                </table>
             </td>
              <td bgcolor="#F6F6F6">&nbsp;</td>
            </tr>
            <tr>
              <td align="center" bgcolor="#F6F6F6">网站网址</td>
              <td height="25" align="left" bgcolor="#F6F6F6">
              <asp:TextBox ID="YX_fcurl" runat="server"></asp:TextBox>
                
                  </td>
              <td bgcolor="#F6F6F6">&nbsp;</td>
            </tr>          
              <tr>
                  <td align="center" bgcolor="#f6f6f6">是否审核：</td>
                  <td height="25" align="left" bgcolor="#f6f6f6">
                      <asp:CheckBox id="tj" runat="server" CssClass="table3"  />
                      <asp:HiddenField ID="HiddenField1"        runat="server" />
                      
                   </td>
                  <td bgcolor="#f6f6f6">                  </td>
              </tr>
            <tr>
              <td align="center" bgcolor="#F6F6F6"></td>
              <td height="25" bgcolor="#F6F6F6" align="center">&nbsp;<asp:Button ID="Button1" runat="server" Text="提　　交" Width="104px" OnClick="Button1_Click" onmousemove=showBtnOver(this) onmouseout=showBtnOut(this)  CssClass="submitMiniGreen"/></td>
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
<Chp:ChangHope_btm ID="chp1" runat="server" /></td>
</body>
</html>
