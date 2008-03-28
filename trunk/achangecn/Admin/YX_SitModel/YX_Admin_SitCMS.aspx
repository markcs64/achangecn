<%@ page language="C#" autoeventwireup="true" inherits="Admin_YX_SitModel_YX_Admin_SitCMS, App_Web_c8yzgfca" %>
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
          <td height="25" class="category t2" width=100>自定义标签管理</td>
         <td class="category">
             <a href="YX_Amin_CMS.aspx?YX_FS=Admin&ChannelID=<%=Request["ChannelID"] %>"> [自定义标签管理]</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   <a href="YX_Admin_SitCMS.aspx?YX_FS=CurCMS&ChannelID=<%=Request["ChannelID"] %>"> [自定义标签添加]</a>
           </td>
        </tr>
 </table>
          <asp:Panel ID="Panel1" runat="server" Width="100%">


		 
<table width="100%" border="0" cellspacing="0" cellpadding="0" align="center">
  <tr>
    <td width="100%">
	<asp:DataGrid ID="dg1" AutoGenerateColumns="False" CellPadding="1" CellSpacing="1" PageSize="20"  runat="server"  Width="100%" AllowPaging="True" border=0 OnItemDataBound="dg1_ItemDataBound" > <HeaderStyle Height="30px" CssClass="topbg" HorizontalAlign="Center" />
                 <ItemStyle BackColor="#F6F6F6" Height="25px" HorizontalAlign="Center" />
                   <Columns>
            
              <asp:TemplateColumn HeaderText="I  D">
                <ItemTemplate >
			
				<%# Eval("YX_ID") %>
                </ItemTemplate>
                      <HeaderStyle CssClass="B" />
             </asp:TemplateColumn>
              <asp:TemplateColumn HeaderText="标签类型">
                <ItemTemplate>	
	　　　　　全局标签
		       </ItemTemplate>
                  <HeaderStyle CssClass="B" />
             </asp:TemplateColumn>	 
			      <asp:TemplateColumn HeaderText="调用名称">
                <ItemTemplate >
		
			<%# Eval("YX_CMS_Name")%>
                </ItemTemplate>
                      <HeaderStyle CssClass="B" />
             </asp:TemplateColumn>
            
			  <asp:TemplateColumn HeaderText="标签说明">
                <ItemTemplate >	
	　　　　　<%# Eval("YX_CMS_SM")%>
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
                
                  
              <td align="left" style="width: 50px">
  </td><td align="left" bgcolor="#E7E7E7" style="width: 180px">
                
                  </td>
                <td align="center" style="width: 50px">        </td>
            </tr>
        </table></td>
  </tr>
  <tr>
    <td>
      <Chp:ChangHope_btm ID="chp1" runat="server" /></td>
  </tr>
</table>
 </asp:Panel>
        <asp:Panel ID="Panel2" runat="server"  Width="100%">
          <table width="100%" border="0" align="center" cellpadding="1" cellspacing="1" id="TABLE1">
            <tr>
              <td width="18%"   class="topbg B" >设置名称</td>
              <td height="25"   class="topbg B"   style="width: 651px">基本参数设置</td>
              <td width="21%"   class="topbg B"  >设置说明</td>
            </tr>
            <tr>
              <td align="center" bgcolor="#F6F6F6">模版名称：</td>
              <td height="25" align="left" bgcolor="#F6F6F6" style="width: 700px">
                  <asp:TextBox ID="YX_fcname" runat="server" Width="348px"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="YX_fcname"
                      Display="Dynamic" ErrorMessage="＊不能为空"></asp:RequiredFieldValidator></td>
              <td bgcolor="#F6F6F6">&nbsp;</td>
            </tr>
                   <tr>
              <td align="center" bgcolor="#F6F6F6">页类型：</td>
              <td height="25" align="left" bgcolor="#F6F6F6" style="width:700px">

                 </td>
              <td bgcolor="#F6F6F6">&nbsp;</td>
            </tr>
                           <tr>
              <td align="center" bgcolor="#F6F6F6">模版说明：</td>
              <td height="25" align="left" bgcolor="#F6F6F6" style="width: 651px">
              <asp:TextBox ID="TextBox2" runat="server" Width="348px"></asp:TextBox></td>
              <td bgcolor="#F6F6F6">&nbsp;</td>
            </tr>
             <tr>
                  <td align="center" bgcolor="#f6f6f6">
                      所属频道：</td>
                  <td align="left" bgcolor="#f6f6f6" height="25" style="width: 697px">
                      <asp:DropDownList ID="DropDownList1" runat="server">
                    
                      </asp:DropDownList>
                     </td>
                  <td bgcolor="#f6f6f6">
                  </td>
              </tr>
            <tr>
              <td align="center" bgcolor="#F6F6F6">模　　版：</td>
              <td height="25" align="left" bgcolor="#F6F6F6" style="width: 651px">
              <textarea id="content1" name='content1' cols="20" rows="2" style="display:none" runat="server" ></textarea>
              <IFRAME ID='eWebEditor1' src='../edit/ewebeditor.htm?id=content1&savepathfilename=d_savepathfilename' frameborder='0' scrolling='no' width='600' height='300'></IFRAME> 
             </td>
              <td bgcolor="#F6F6F6">&nbsp;</td>
            </tr>
         
            <tr>
              <td align="center" bgcolor="#F6F6F6"></td>
              <td height="25" bgcolor="#F6F6F6" align="center" style="width: 651px">&nbsp;<asp:Button ID="Button1" runat="server" Text="提　　交" Width="104px" OnClick="Button1_Click"  /></td>
              <td bgcolor="#F6F6F6">&nbsp;</td>
            </tr>
            
          </table>
        </asp:Panel>
        
    </div>
        <asp:Panel ID="Panel3" runat="server" width="100%">
                        <table width="100%" border="0" align="center" cellpadding="1" cellspacing="1" id="TABLE2">
            <tr>
              <td width="18%"   class="topbg B"  >设置名称</td>
              <td height="25"   class="topbg B"   style="width: 713px">基本参数设置</td>
              <td width="21%"   class="topbg B"  >设置说明</td>
            </tr>
            <tr>
              <td align="center" bgcolor="#F6F6F6">标签名称：</td>
              <td height="25" align="left" bgcolor="#F6F6F6" style="width: 713px">
                  <asp:TextBox ID="TextBox1" runat="server" Width="208px"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox1"
                      Display="Dynamic" ErrorMessage="＊不能为空"></asp:RequiredFieldValidator><span style="color: #ff0000">注意：请以{$Hope_User_$}开头，例{$Hope_User_News}1</span></td>
              <td bgcolor="#F6F6F6">&nbsp;</td>
            </tr>

                           <tr>
              <td align="center" bgcolor="#F6F6F6">模版说明：</td>
              <td height="25" align="left" bgcolor="#F6F6F6" style="width: 713px">
              <asp:TextBox ID="TextBox5" runat="server" Width="348px"></asp:TextBox></td>
              <td bgcolor="#F6F6F6">&nbsp;</td>
            </tr>
             <tr>
                  <td align="center" bgcolor="#f6f6f6">
                      所属频道：</td>
                  <td align="left" bgcolor="#f6f6f6" height="25" style="width: 697px">
                      <asp:DropDownList ID="DropDownList2" runat="server">
                    
                      </asp:DropDownList>
                     </td>
                  <td bgcolor="#f6f6f6">
                  </td>
              </tr>
            <tr>
              <td align="center" bgcolor="#F6F6F6">
                  标签内容：</td>
              <td height="25" align="left" bgcolor="#F6F6F6" style="width: 713px">
            
                  <asp:TextBox ID="TextBox4" runat="server" BackColor="Window" BorderColor="Green" Height="547px" TextMode="MultiLine" Width="550px" Font-Size="14px" Font-Names="宋体"></asp:TextBox>
             </td>
              <td bgcolor="#F6F6F6">&nbsp;</td>
            </tr>
         
            <tr>
              <td align="center" bgcolor="#F6F6F6"></td>
              <td height="25" bgcolor="#F6F6F6" align="center" style="width: 713px">&nbsp;<asp:Button ID="Button3" runat="server" onmousemove=showBtnOver(this) onmouseout=showBtnOut(this)  Class="submitMiniGreen" Text="提　　交" Width="104px" OnClick="Button3_Click"  /></td>
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
