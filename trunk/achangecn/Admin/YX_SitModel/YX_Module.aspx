<%@ page language="C#" autoeventwireup="true" inherits="Admin_YX_SitModel_YX_Module, App_Web_c8yzgfca" %>
<%@ Register  Src="../Admin_Btm.ascx" TagName="ChangHope_btm" TagPrefix="Chp" %>
<%@ Register TagPrefix="ChangeHope" TagName="Chklogin" Src="~/Admin/YX_CheckLogin.ascx" %>
  <ChangeHope:Chklogin _Column="7" ID="chk1" runat="server" />
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
          <td height="25" class="category t2" width=100>模块管理</td>
         <td class="category">
             <asp:HyperLink ID="HyperLink1" runat="server">[模块管理]</asp:HyperLink>
             <asp:HyperLink ID="HyperLink2" runat="server">[添加模块]</asp:HyperLink>
           </td>
        </tr>
 </table>
          <asp:Panel ID="Panel1" runat="server" Width="100%">
          <table width="100%" height="25" border="0" cellpadding="2" cellspacing="2" >
            <tr>
            <td height="25" class="category" width=100>搜索</td>
            <td align="right" class="style3" style="width:100px">&nbsp;&nbsp;&nbsp;关键字：</td>
                <td align="left" class="style3" style="width:100px"><asp:TextBox ID="sj" runat="server" /></td>
              <td align="right" class="style3" style="width:100px">&nbsp;&nbsp;&nbsp;查询类别：</td>
                <td align="left" class="style3" style="width:100px">
                <select name="sclass" id="sclass" runat="server">
                <option value="1">模板ID</option>
                <option value="2">调用名称</option>
                <option value="3">标签说明</option>
                </select>
                </td>                                  
                 <td align="left" class="style3">
                    <asp:Button ID="Button4" runat="server" Text="查　询" onmousemove=showBtnOver(this) onmouseout=showBtnOut(this)  CssClass="submitMiniGreen" OnClick="Button4_Click" />         
                      </td>  
            </tr>
          </table>
<table width="100%" border="0" cellspacing="0" cellpadding="0" align="center">
  <tr>
    <td width="100%">
<asp:DataGrid ID="dg1" AutoGenerateColumns="False" PageSize="20" runat="server" CellPadding="0" CellSpacing="1" border=0   Width="100%" AllowPaging="True" OnItemDataBound="dg1_ItemDataBound" >
                   <HeaderStyle Height="30px" CssClass="topbg" HorizontalAlign="Center" />
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
           
			      <asp:TemplateColumn HeaderText="调用名称">
                <ItemTemplate >
		
			<a href="YX_Edit_Module.aspx?YX_FS=<%# Eval("YX_ID")%>"><%# Eval("YX_ModCMSName")%></a>
                </ItemTemplate>
                      <HeaderStyle CssClass="B" />
             </asp:TemplateColumn>
            
			  <asp:TemplateColumn HeaderText="标签说明">
                <ItemTemplate >	
	　　　　　<%# Eval("YX_ModCMSSM")%>
		       </ItemTemplate>
                  <HeaderStyle CssClass="B" />
             </asp:TemplateColumn>	 
             
            </Columns>
    <PagerStyle Visible="False" />          
      </asp:DataGrid>
      
      </td>
  </tr>
  <tr>
    <td> 
    
    <table  align="center" cellpadding="4" cellspacing="1" border="0" width=100%  class="toptable grid">
            <tr bgcolor="#ffffff">
                
                  
              <td align="left" style="width: 50px">
  </td><td align="right" bgcolor="#ffffff">
                    <asp:DropDownList ID="DropDownList1" runat="server">                                   
                       <asp:ListItem Value="2">---批量删除---</asp:ListItem>                  
                    </asp:DropDownList>
                  </td>
                <td align="left" style="width: 100px"><asp:Button ID="Button2" runat="server"  onmousemove=showBtnOver(this) onmouseout=showBtnOut(this)  Class="submitMiniGreen"  Text="执行操作" OnClientClick="return isExc()" OnClick="Button2_Click" />
                </td>
            </tr>
        </table></td>
  </tr>

</table>
 </asp:Panel>
        <asp:Panel ID="Panel2" runat="server"  Width="100%">
          <table width="100%" border="0" align="center" cellpadding="1" cellspacing="1" id="TABLE1">
            <tr>
              <td width="20%" align="center" class="topbg B" >设置名称</td>
              <td height="25" align="left" class="topbg B"  style="width: 651px">基本参数设置</td>
              <td width="10%" align="center"  class="topbg B" >设置说明</td>
            </tr>
            <tr>
              <td align="center" bgcolor="#F6F6F6">模块名称：</td>
              <td height="25" align="left" bgcolor="#F6F6F6" style="width: 700px">
                  <asp:TextBox ID="t1" runat="server" Width="348px" Font-Size="14px" Font-Names="宋体"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="t1"
                      Display="Dynamic" ErrorMessage="＊不能为空"></asp:RequiredFieldValidator>{$xxxx$}</td>
              <td bgcolor="#F6F6F6">&nbsp;</td>
            </tr>
                <tr>
              <td align="center" bgcolor="#F6F6F6">模块说明：</td>
              <td height="25" align="left" bgcolor="#F6F6F6" style="width: 697px">
              <asp:TextBox ID="t3" runat="server" Width="348px" Font-Size="14px" Font-Names="宋体"></asp:TextBox></td>
              <td bgcolor="#F6F6F6">&nbsp;</td>
            </tr>
              <tr>
                  <td align="center" bgcolor="#f6f6f6">
                      所属频道：</td>
                  <td align="left" bgcolor="#f6f6f6" height="25" style="width: 697px">
                      <asp:DropDownList ID="DropDownList2" runat="server">
                      </asp:DropDownList></td>
                  <td bgcolor="#f6f6f6">
                  </td>
              </tr>
            <tr>
              <td align="center" bgcolor="#F6F6F6">模块内容：</td>
              <td height="25" align="left" bgcolor="#F6F6F6" style="width: 697px">
            
                  <asp:TextBox ID="t4" runat="server" BackColor="Window" BorderColor="Green" Height="547px" TextMode="MultiLine" Width="550px"　Font-Size="14px" Font-Names="宋体"></asp:TextBox>
             </td>
              <td bgcolor="#F6F6F6">&nbsp;</td>
            </tr>
         
            <tr>
              <td align="center" bgcolor="#F6F6F6"></td>
              <td height="25" bgcolor="#F6F6F6" align="center" style="width: 697px">&nbsp;<asp:Button ID="Button3" runat="server" onmousemove=showBtnOver(this) onmouseout=showBtnOut(this)  Class="submitMiniGreen"  Text="提　　交" Width="104px" OnClick="Button3_Click" /></td>
              <td bgcolor="#F6F6F6">&nbsp;</td>
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
<Chp:ChangHope_btm ID="ChangHope_btm1" runat="server" /> 
</body>
</html>

