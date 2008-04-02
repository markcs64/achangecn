<%@ page language="C#" autoeventwireup="true" inherits="Admin_YX_Product_YX_prosx, App_Web_6gj4jtg5" %>
<%@ Register  Src="../Admin_Btm.ascx" TagName="ChangHope_btm" TagPrefix="Chp" %>
<%@ Register TagPrefix="ChangeHope" TagName="Chklogin" Src="~/Admin/YX_CheckLogin.ascx" %>
<%@ Register TagPrefix="ChangHope" TagName="prosx" Src="~/Admin/prosx_list.ascx" %>
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
          <td height="25" class="category t2" width=180>物品类别属性参数管理</td>
         <td class="category">
             <a href="?YX_FS=Add&YX_MID=<%=Request["YX_MID"] %>"> 添加参数</a>
              <a href="?YX_FS=JXAdd&YX_MID=<%=Request["YX_MID"] %>"> 继承参数</a>
             
             
           </td>
        </tr>
 </table>
 <asp:Panel ID="Panel1" runat="server" Width="100%">
<table width="100%" border="0" cellspacing="0" cellpadding="0" align="center">
  <tr>
    <td width="100%">
	<asp:DataGrid ID="dg1" AutoGenerateColumns="False" CellPadding="0" CellSpacing="0" PageSize="20"  runat="server"  Width="100%" AllowPaging="True" >
                   <HeaderStyle Height="25px" CssClass="topbg B" HorizontalAlign="Center" />
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
             			      <asp:TemplateColumn HeaderText="参数名称">
             			      
                <ItemTemplate >
		        <%#Displaycsz(Convert.ToInt32(Eval("YX_ID")), Convert.ToInt32(Request["YX_MID"]), Eval("YX_name").ToString()) %>        
                </ItemTemplate>
                      <HeaderStyle CssClass="B" />
             </asp:TemplateColumn>
			  
             <asp:TemplateColumn HeaderText="操　　作">
                <ItemTemplate >
			    <%#Displaydx(Convert.ToInt32(Eval("YX_ID")), Convert.ToInt32(Request["YX_MID"]), Convert.ToInt32(Eval("YX_check")))%> 
				<a href="YX_editprosx.aspx?YX_FS=Edit&YX_id=<%#Eval("YX_ID")%>&YX_MID=<%=Request["YX_MID"] %>">修改</a>
				<a href="?YX_FS=Del&YX_id=<%#Eval("YX_ID")%>&YX_MID=<%=Request["YX_MID"] %>">删除</a>
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
                      &nbsp;
                    <asp:HyperLink ID="prev" runat="server" ForeColor="#000000"> 上一页</asp:HyperLink>
                    &nbsp;
                      <asp:HyperLink ID="next" runat="server" ForeColor="#000000">下一页</asp:HyperLink>
                     &nbsp;
                      <asp:HyperLink ID="max" runat="server" ForeColor="#000000">末　页</asp:HyperLink>
                    <span class="font1">转向</span>         
                    <asp:DropDownList ID="iPage" runat="server" AutoPostBack="True" OnSelectedIndexChanged="sic">
              </asp:DropDownList></td>
              <td align="left" style="width: 50px">
  </td><td align="left" bgcolor="#E7E7E7" style="width: 180px">
             
                  </td>
                <td align="center" style="width: 50px">
                </td>
            </tr>
        </table></td>
  </tr>

</table> 
 </asp:Panel> 
         <asp:Panel ID="Panel2" runat="server"  Width="100%">
          <table width="100%" border="0" align="center" cellpadding="1" cellspacing="1" id="TABLE1">
            <tr>
              <td width="18%" align="center" class="topbg B" >设置名称</td>
              <td width="61%" height="25" align="left" class="topbg B">基本参数设置</td>
              <td width="21%" align="center" class="topbg B">设置说明</td>
            </tr>
            <tr>
              <td align="center" bgcolor="#F6F6F6">
                  类别：</td>
              <td height="25" align="left" bgcolor="#F6F6F6">
                <ChangHope:prosx ID="prosx1" runat="server" />  &nbsp;</td>
              <td bgcolor="#F6F6F6">&nbsp;</td>
            </tr>   
              <tr>
                  <td align="center" bgcolor="#f6f6f6">
                  参数名称(值)：</td>
                  <td align="left" bgcolor="#f6f6f6" height="25">
                  <asp:TextBox ID="YX_pp" runat="server" Width="289px"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="YX_pp"
                      Display="Dynamic" ErrorMessage="＊不能为空"></asp:RequiredFieldValidator>
                      <asp:HiddenField ID="HiddenField1" runat="server" />
                    
                  </td>
                  <td bgcolor="#f6f6f6">
                  </td>
              </tr>
            <tr>
              <td align="center" bgcolor="#F6F6F6"></td>
              <td height="25" bgcolor="#F6F6F6" align="center">&nbsp;

              <asp:Button ID="Button1" runat="server" Text="添    加" onmousemove=showBtnOver(this) onmouseout=showBtnOut(this) Class="submitMiniGreen"  Width="104px" OnClick="Button1_Click" /></td>
              <td bgcolor="#F6F6F6">&nbsp;</td>
            </tr>
   
          </table>
        </asp:Panel>
        
                <asp:Panel ID="Panel3" runat="server" Height="50px" Width="100%">
            <table border="0" align="center" cellpadding="1" cellspacing="1" id="Table2" >
                <tr>
                    <td width="18%" align="center" class="topbg B">
                        设置名称</td>
                    <td width="61%" height="25" align="left"  class="topbg B">
                        继承参数设置</td>
                   
                </tr>
                <tr>
                    <td align="center" bgcolor="#F6F6F6">
                        继承类别：</td>
                    <td height="25" align="left" bgcolor="#F6F6F6">
                        
                        &nbsp;<asp:DropDownList ID="DropDownList1" runat="server" Width="238px">
                        </asp:DropDownList></td>
                  
                </tr>
                <tr>
                    <td align="center" bgcolor="#f6f6f6">
                        <asp:HiddenField ID="HiddenField2" runat="server"/>
                        </td>
                    <td align="left" bgcolor="#f6f6f6" height="25" style="text-align: center">
                        &nbsp;&nbsp;
                        <asp:Button ID="Button2" runat="server" Text="继    承" onmousemove=showBtnOver(this) onmouseout=showBtnOut(this) Class="submitMiniGreen"  Width="104px" OnClick="Button2_Click" />
                    </td>
                    
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
 <Chp:ChangHope_btm ID="ChangHope_btm1" runat="server" />
</body>
</html>
