<%@ page language="C#" autoeventwireup="true" inherits="Admin_YX_SitModel_DAOTempalte, App_Web_c8yzgfca" %>
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
          <td height="25" class="category t2" width=124>模板导入导出管理</td>
         <td width="812" class="category">
             <asp:HyperLink ID="HyperLink1" NavigateUrl="DAOTempalte.aspx?Flag=DaoR" runat="server">[模板导入]</asp:HyperLink>
             <asp:HyperLink ID="HyperLink2" NavigateUrl="DAOTempalte.aspx?Flag=DaoC" runat="server">[导出管理]</asp:HyperLink>
           </td>
        </tr>
 </table>   
    <asp:Panel ID="Panel2" runat="server"  Width="100%">
        <asp:DataGrid ID="dg1" AutoGenerateColumns="False" PageSize="20" CellPadding="0" CellSpacing="0" runat="server"  Width="100%" AllowPaging="True">
                   <HeaderStyle Height="30px"  CssClass="topbg" HorizontalAlign="Center"/>
                 <ItemStyle BackColor="#F6F6F6" Height="25px" HorizontalAlign="Center" />
                   <Columns>

              
              <asp:TemplateColumn HeaderText="方案名称">
                <ItemTemplate>	
	　　　　　<a href="YX_Tempalte.aspx?YX_FX=<%# Eval("YX_ID")%>&Flag=Edit"><%# Eval("YX_Template_Name").ToString().Trim()%></a>
		       </ItemTemplate>
                 <HeaderStyle CssClass="B" />
             </asp:TemplateColumn>	 
			      <asp:TemplateColumn HeaderText="方案文件夹">
                <ItemTemplate >	
			<%# Eval("YX_Template_Dir")%>
                </ItemTemplate>  
                  <HeaderStyle CssClass="B" />                
             </asp:TemplateColumn>  
			  <asp:TemplateColumn HeaderText="方案说明">
                <ItemTemplate >	
	　　　　　<%# Eval("YX_Template_Desc")%>
		       </ItemTemplate>  
		         <HeaderStyle CssClass="B" />          
             </asp:TemplateColumn>	 
             		
              <asp:TemplateColumn HeaderText="模版选择">
                <ItemTemplate >
                	 <input id="YX_CH" name="YX_CH" type="checkbox" style="border:0 " value="<%# Eval("YX_ID") %>"  />
                </ItemTemplate>
                   <HeaderStyle CssClass="B" />
             </asp:TemplateColumn>
            </Columns>
    <PagerStyle Visible="False" />          
      </asp:DataGrid>
          <table width="100%" border="0" align="center" cellpadding="1" cellspacing="1" id="TABLE1">
            <tr>
              <td width="18%" align="center" bgcolor="#FFFFFF" class="F" style="height: 27px">
                  </td>
              <td align="left" bgcolor="#FFFFFF" class="F" style="width: 598px; height: 27px;">
                  </td>
              <td width="21%" align="center"bgcolor="#FFFFFF" class="F" style="height: 27px"></td>
            </tr>
            <tr>
              <td align="center" bgcolor="#F6F6F6">
                  模板数据库路径：</td>
              <td height="25" align="left" bgcolor="#F6F6F6" style="width: 598px">
                  <asp:TextBox ID="t1" runat="server" Width="241px"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="t1"
                      Display="Dynamic" ErrorMessage="＊不能为空"></asp:RequiredFieldValidator>
                  <asp:Button ID="Button3" runat="server" Text="导   出" OnClick="Button3_Click" onmousemove=showBtnOver(this) onmouseout=showBtnOut(this)  CssClass="submitMiniGreen"/>
                  <asp:CheckBox ID="CheckBox1" runat="server" Text="覆盖"/></td>
              <td bgcolor="#F6F6F6">&nbsp;</td>
            </tr>
            
                
                           <tr>
              <td align="center" bgcolor="#F6F6F6" style="height: 40px"></td>
              <td align="left" bgcolor="#F6F6F6" style="width: 598px; height: 40px;">
              </td>
              <td bgcolor="#F6F6F6" style="height: 40px"></td>
            </tr>
           
         
            <tr>
              <td align="center" bgcolor="#F6F6F6"></td>
              <td height="25" bgcolor="#F6F6F6" align="center" style="width: 598px">&nbsp;</td>
              <td bgcolor="#F6F6F6">&nbsp;</td>
            </tr>
          </table>
        </asp:Panel>
         <asp:Panel ID="Panel1" runat="server" Height="50px" Width="100%">
        
    
          <table width="100%" border="0" align="center" cellpadding="1" cellspacing="1" id="TABLE2">
         
            <tr>
              <td align="center" bgcolor="#F6F6F6">
                  模板数据库路径：</td>
              <td height="25" align="left" bgcolor="#F6F6F6" style="width: 598px">
                  <asp:TextBox ID="TextBox1" runat="server" Width="241px"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox1"
                      Display="Dynamic" ErrorMessage="＊不能为空"></asp:RequiredFieldValidator>
                  <asp:Button ID="Button1" runat="server" Text="导  入"  OnClick="Button1_Click" onmousemove=showBtnOver(this) onmouseout=showBtnOut(this)  CssClass="submitMiniGreen"/>
                  <asp:CheckBox ID="CheckBox2" runat="server" Text="覆盖"/></td>
              <td bgcolor="#F6F6F6">&nbsp;</td>
            </tr>
            
                
                           <tr>
              <td align="center" bgcolor="#F6F6F6" style="height: 40px"></td>
              <td align="left" bgcolor="#F6F6F6" style="width: 598px; height: 40px;">
              请填写在根目录的相应的路径
              </td>
              <td bgcolor="#F6F6F6" style="height: 40px"></td>
            </tr>
           
         
            <tr>
              <td align="center" bgcolor="#F6F6F6"></td>
              <td height="25" bgcolor="#F6F6F6" align="center" style="width: 598px">&nbsp;</td>
              <td bgcolor="#F6F6F6">&nbsp;</td>
            </tr>
          </table>
        </asp:Panel>
        &nbsp;
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

