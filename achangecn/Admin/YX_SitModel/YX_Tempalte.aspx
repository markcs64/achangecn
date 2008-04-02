<%@ page language="C#" autoeventwireup="true" inherits="Admin_YX_SitModel_YX_Tempalte, App_Web_c8yzgfca" %>
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
          <td height="25" class="category t2" width=100>物品分类管理</td>
         <td class="category">
             <asp:HyperLink ID="HyperLink1" NavigateUrl="YX_Tempalte.aspx?Flag=Admin" runat="server">[全部方案管理]</asp:HyperLink>
             <asp:HyperLink ID="HyperLink2" NavigateUrl="YX_Tempalte.aspx?Flag=Add" runat="server">[方案添加]</asp:HyperLink>
           </td>
        </tr>
 </table>   
    <asp:Panel ID="Panel1" runat="server" Width="100%">
<table width="100%" border="0" cellspacing="0" cellpadding="0" align="center">
  <tr>
    <td width="100%">
<asp:DataGrid ID="dg1" AutoGenerateColumns="False" PageSize="20" CellPadding="0" CellSpacing="0" runat="server"  Width="100%" AllowPaging="True" OnItemDataBound="dg1_ItemDataBound" >
                   <HeaderStyle Height="30px"  CssClass="topbg" HorizontalAlign="Center"/>
                 <ItemStyle BackColor="#F6F6F6" Height="25px" HorizontalAlign="Center" />
                   <Columns>
 <asp:TemplateColumn HeaderText="ID">
                <ItemTemplate>	
	　　　　　<%# Eval("YX_ID")%>
		       </ItemTemplate>
                 <HeaderStyle CssClass="B" />
             </asp:TemplateColumn>	 
              
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
             		  <asp:TemplateColumn HeaderText="选中状态">
                <ItemTemplate >	
	　　　　　　<%#Stat(Convert.ToInt16(Eval("YX_Template_SelectedFlag")))%>
		       </ItemTemplate>   
		         <HeaderStyle CssClass="B" />         
             </asp:TemplateColumn>	 
              <asp:TemplateColumn HeaderText="模版选择">
                <ItemTemplate >
                	 <input id="YX_CH" name="YX_CH" type="radio" style="border:0 " value="<%# Eval("YX_ID") %>"  />
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
            <tr bgcolor="#e7e7e7">
                
                  
              <td align="left" style="width: 50px; height: 21px;">
  </td><td align="right" bgcolor="#e7e7e7" style="height: 21px">
                    <asp:DropDownList ID="DropDownList1" runat="server">    
                          <asp:ListItem Value="1">---选择该模板---</asp:ListItem>                            
                       <asp:ListItem Value="2">---删除该模版---</asp:ListItem>                  
                    </asp:DropDownList>
                  </td>
                <td align="left" style="width: 100px; height: 21px;"><asp:Button ID="Button2" runat="server" Text="执行操作"  OnClick="Button2_Click" onmousemove=showBtnOver(this) onmouseout=showBtnOut(this)  CssClass="submitMiniGreen"/>
                </td>
            </tr>
        </table></td>
  </tr>

</table>
 </asp:Panel>
        <asp:Panel ID="Panel2" runat="server"  Width="100%">
          <table width="100%" border="0" align="center" cellpadding="1" cellspacing="1" id="TABLE1">
            <tr>
              <td width="18%"  class="B topbg">设置名称</td>
              <td height="25"  class="B topbg" style="width: 651px">基本参数设置</td>
              <td width="21%"  class="B topbg">设置说明</td>
            </tr>
            <tr>
              <td align="center" bgcolor="#F6F6F6">方案名称：</td>
              <td height="25" align="left" bgcolor="#F6F6F6" style="width: 700px">
                  <asp:TextBox ID="t1" runat="server" Width="348px"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="t1"
                      Display="Dynamic" ErrorMessage="＊不能为空"></asp:RequiredFieldValidator></td>
              <td bgcolor="#F6F6F6">&nbsp;</td>
            </tr>
              <tr>
                  <td align="center" bgcolor="#f6f6f6">
                      文件夹名称：
                  </td>
                  <td align="left" bgcolor="#f6f6f6" height="25" style="width: 697px">
                      <asp:TextBox ID="t2" runat="server" Width="216px"></asp:TextBox></td>
                  <td bgcolor="#f6f6f6">
                  </td>
              </tr>
                
                           <tr>
              <td align="center" bgcolor="#F6F6F6" style="height: 40px">方案说明：</td>
              <td align="left" bgcolor="#F6F6F6" style="width: 697px; height: 40px;">
              <asp:TextBox ID="t3" runat="server" Width="348px" Height="120px" TextMode="MultiLine"></asp:TextBox></td>
              <td bgcolor="#F6F6F6" style="height: 40px">&nbsp;</td>
            </tr>
           
         
            <tr>
              <td align="center" bgcolor="#F6F6F6"></td>
              <td height="25" bgcolor="#F6F6F6" align="center" style="width: 697px">&nbsp;<asp:Button ID="Button3" runat="server" Text="提　　交" Width="104px" OnClick="Button3_Click" onmousemove=showBtnOver(this) onmouseout=showBtnOut(this)  CssClass="submitMiniGreen" /></td>
              <td bgcolor="#F6F6F6">&nbsp;</td>
            </tr>
          </table>
        </asp:Panel>
        <asp:panel ID="panel4" runat="server" width="98%"> 
                  <table width="100%" border="0" align="center" cellpadding="1" cellspacing="1" id="TABLE2">
            <tr>
              <td width="18%"  class="B topbg">设置名称</td>
              <td height="25" class="B topbg" style="width: 651px">基本参数设置</td>
              <td width="21%" class="B topbg">设置说明</td>
            </tr>
            <tr>
              <td align="center" bgcolor="#F6F6F6">方案名称：</td>
              <td height="25" align="left" bgcolor="#F6F6F6" style="width: 700px">
                  <asp:TextBox ID="et1" runat="server" Width="348px"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="et1"
                      Display="Dynamic" ErrorMessage="＊不能为空"></asp:RequiredFieldValidator></td>
              <td bgcolor="#F6F6F6">&nbsp;</td>
            </tr>
              <tr>
                  <td align="center" bgcolor="#f6f6f6">
                      文件夹名称：
                  </td>
                  <td align="left" bgcolor="#f6f6f6" height="25" style="width: 697px">
                      <asp:TextBox ID="et2" runat="server" Width="216px"></asp:TextBox></td>
                  <td bgcolor="#f6f6f6">
                  </td>
              </tr>
                
                           <tr>
              <td align="center" bgcolor="#F6F6F6" style="height: 40px">方案说明：</td>
              <td align="left" bgcolor="#F6F6F6" style="width: 697px; height: 40px;">
              <asp:TextBox ID="et3" runat="server" Width="348px" Height="120px" TextMode="MultiLine"></asp:TextBox></td>
              <td bgcolor="#F6F6F6" style="height: 40px">&nbsp;</td>
            </tr>
           
         
            <tr>
              <td align="center" bgcolor="#F6F6F6"></td>
              <td height="25" bgcolor="#F6F6F6" align="center" style="width: 697px">&nbsp;<asp:Button ID="Button1" runat="server" Text="修　　改"  OnClick="Button1_Click" onmousemove=showBtnOver(this) onmouseout=showBtnOut(this)  CssClass="submitMiniGreen" /></td>
              <td bgcolor="#F6F6F6">&nbsp;</td>
            </tr>
          </table>
        
        </asp:panel>
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
