<%@ page language="C#" autoeventwireup="true" inherits="Admin_YX_SitModel_YX_channel_SitModel, App_Web_zrzibc8x" %>
<%@ Register  Src="../Admin_Btm.ascx" TagName="ChangHope_btm" TagPrefix="Chp" %>
<%@ Register TagPrefix="ChangeHope" TagName="Chklogin" Src="~/Admin/YX_CheckLogin.ascx" %>
  <ChangeHope:Chklogin _Column="1" ID="chk1" runat="server" />
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
          <td height="25" class="category t2" width=100>模版管理</td>
         <td class="category">
             <asp:HyperLink ID="HyperLink1" runat="server">[模版管理]</asp:HyperLink>
             <asp:HyperLink ID="HyperLink2" runat="server">[添加模版]</asp:HyperLink>
           </td>
        </tr>
 </table>
 
          
          <asp:Panel ID="Panel1" runat="server" Width="100%">

		 
<table width="100%" border="0" cellspacing="0" cellpadding="0" align="center">
  <tr>
    <td width="100%">
	<asp:DataGrid ID="dg1" AutoGenerateColumns="False" PageSize="100" CellPadding="0" CellSpacing="1" border=0     runat="server"  Width="100%" AllowPaging="True"  >
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
				　<a href="?YX_FS=Edit&YX_ID=<%# Eval("YX_ID") %>&ChannelID=<%#Eval("ChannelID") %>"><%# Eval("YX_ID") %></a>
                </ItemTemplate>
                      <HeaderStyle CssClass="B" />
             </asp:TemplateColumn>
			      <asp:TemplateColumn HeaderText="模版类型">
                <ItemTemplate >
				<%# Eval("YX_CMSType")%>
                </ItemTemplate>
                      <HeaderStyle CssClass="B" />
             </asp:TemplateColumn>
            
			  <asp:TemplateColumn HeaderText="模版名称">
                <ItemTemplate >	
	　　　　　<a href="?YX_FS=Edit&YX_ID=<%# Eval("YX_ID") %>&ChannelID=<%#Eval("ChannelID") %>"><%# Eval("YX_CMSModelName")%></a>
		       </ItemTemplate>
                  <HeaderStyle CssClass="B" />
             </asp:TemplateColumn>	 
              <asp:TemplateColumn HeaderText="模版说明">
                <ItemTemplate >	
	　　　　　　<%# Eval("YX_CMSSM")%>
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
                
                  
              <td align="left" >&nbsp;
  </td><td align="left" bgcolor="#ffffff" style="width: 100px">
                    <asp:DropDownList ID="DropDownList1" runat="server">                                   
                       <asp:ListItem Value="2">---批量删除---</asp:ListItem>                  
                    </asp:DropDownList>
                  </td>
                <td align="center" style="width: 50px"><asp:Button ID="Button2" runat="server" onmousemove=showBtnOver(this) onmouseout=showBtnOut(this)  Class="submitMiniGreen"   Text="执行操作" OnClientClick="return isExc()" OnClick="Button2_Click" />
                </td>
            </tr>
        </table></td>
  </tr>

</table>
 </asp:Panel>
        <asp:Panel ID="Panel2" runat="server"  Width="100%">
          <table width="100%" border="0" align="center" cellpadding="1" cellspacing="1" id="TABLE1">
            <tr>
              <td width="20%" align="center" bgcolor="#FFFFFF" class="F">设置名称</td>
              <td height="25" align="left" bgcolor="#FFFFFF" class="F" style="width: 651px">模版设置</td>
              <td width="10%" align="center" bgcolor="#FFFFFF" class="F">设置说明</td>
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
                             <asp:DropDownList ID="DropDownList2" runat="server">
                                  <asp:ListItem Value="YX_CmsIndex">文章首页页面</asp:ListItem>
                                  <asp:ListItem Value="YX_CmsList">文章列表页面模板</asp:ListItem>
                                  <asp:ListItem Value="YX_CmsContext">文章内容页面模板</asp:ListItem>
                                  <asp:ListItem Value="YX_CmsTjArticle">推荐文章页面模板</asp:ListItem>
                                  <asp:ListItem Value="YX_CmsSmArticle">热门文章页面模板</asp:ListItem>
                                  <asp:ListItem Value="YX_CmsSearchArticle">文章搜索页面模板</asp:ListItem>
                                  <asp:ListItem Value="YX_CmsPLArticle">文章评论界面风格</asp:ListItem>       
                             </asp:DropDownList>
                 </td>
              <td bgcolor="#F6F6F6">&nbsp;</td>
            </tr>
              <tr>
                  <td align="center" bgcolor="#f6f6f6">
                      所属频道名称：</td>
                  <td align="left" bgcolor="#f6f6f6" height="25" style="width: 700px">
                      <asp:DropDownList ID="DropDownList4" runat="server">
                          
                      </asp:DropDownList>
                      <asp:HiddenField ID="HiddenField1" runat="server" />
                  </td>
                  <td bgcolor="#f6f6f6">
                  </td>
              </tr>
                           <tr>
              <td align="center" bgcolor="#F6F6F6">模版说明：</td>
              <td height="25" align="left" bgcolor="#F6F6F6" style="width: 651px">
              <asp:TextBox ID="TextBox2" runat="server" Width="348px"></asp:TextBox></td>
              <td bgcolor="#F6F6F6">&nbsp;</td>
            </tr>
            <tr>
              <td align="center" bgcolor="#F6F6F6">模　　版：</td>
              <td height="25" align="left" bgcolor="#F6F6F6" style="width: 651px">
              <textarea id="content1" name='content1' cols="80" style="height:547px;width:550px" rows="20" runat="server" ></textarea>
             
             </td>
              <td bgcolor="#F6F6F6">&nbsp;</td>
            </tr>
         
            <tr>
              <td align="center" bgcolor="#F6F6F6"></td>
              <td height="25" bgcolor="#F6F6F6" align="center" style="width: 651px">&nbsp;<asp:Button ID="Button1" runat="server" Text="提　　交" Width="104px" OnClick="Button1_Click" /></td>
              <td bgcolor="#F6F6F6">&nbsp;</td>
            </tr>
    
          </table>
        </asp:Panel>
        
    </div>
        <asp:Panel ID="Panel3" runat="server" width="100%">
                        <table width="100%" border="0" align="center" cellpadding="1" cellspacing="1" id="TABLE2">
            <tr>
              <td width="20%" align="center" bgcolor="#FFFFFF" class="F">设置名称</td>
              <td height="25" align="left" bgcolor="#FFFFFF" class="F" style="width: 697px">模版设置</td>
              <td width="10%" align="center" bgcolor="#FFFFFF" class="F">设置说明</td>
            </tr>
            <tr>
              <td align="center" bgcolor="#F6F6F6">模版名称：</td>
              <td height="25" align="left" bgcolor="#F6F6F6" style="width: 697px">
                  <asp:TextBox ID="TextBox1" runat="server" Width="348px"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox1"
                      Display="Dynamic" ErrorMessage="＊不能为空"></asp:RequiredFieldValidator></td>
              <td bgcolor="#F6F6F6">&nbsp;</td>
            </tr>
                   <tr>
              <td align="center" bgcolor="#F6F6F6">页类型：</td>
              <td height="25" align="left" bgcolor="#F6F6F6" style="width:697px">
                  <asp:DropDownList ID="DropDownList3" runat="server">
          <asp:ListItem Value="YX_CmsIndex">文章首页页面</asp:ListItem>
                                  <asp:ListItem Value="YX_CmsList">文章列表页面模板</asp:ListItem>
                                  <asp:ListItem Value="YX_CmsContext">文章内容页面模板</asp:ListItem>
                                  <asp:ListItem Value="YX_CmsTjArticle">推荐文章页面模板</asp:ListItem>
                                  <asp:ListItem Value="YX_CmsSmArticle">热门文章页面模板</asp:ListItem>
                                  <asp:ListItem Value="YX_CmsSearchArticle">文章搜索页面模板</asp:ListItem>
                                  <asp:ListItem Value="YX_CmsPLArticle">文章评论界面风格</asp:ListItem>       
                             </asp:DropDownList>
                 </td>
              <td bgcolor="#F6F6F6">&nbsp;</td>
            </tr>
              <tr>
                  <td align="center" bgcolor="#f6f6f6">
                      频道内型：</td>
                  <td align="left" bgcolor="#f6f6f6" height="25" style="width: 700px">
                      <asp:DropDownList ID="DropDownList5" runat="server">                     
                      </asp:DropDownList>
                      <asp:HiddenField ID="HiddenField2" runat="server" />
                  </td>
                  <td bgcolor="#f6f6f6">
                  </td>
              </tr>
                           <tr>
              <td align="center" bgcolor="#F6F6F6">模版说明：</td>
              <td height="25" align="left" bgcolor="#F6F6F6" style="width: 697px">
              <asp:TextBox ID="TextBox5" runat="server" Width="348px"></asp:TextBox></td>
              <td bgcolor="#F6F6F6">&nbsp;</td>
            </tr>
            <tr>
              <td align="center" bgcolor="#F6F6F6">模　　版：</td>
              <td height="25" align="left" bgcolor="#F6F6F6" style="width: 697px">
            
                  <asp:TextBox ID="TextBox4" runat="server" BackColor="Window" BorderColor="Green"   TextMode="MultiLine" style="height:547px;width:550px"  Font-Size="14px" Font-Names="宋体"></asp:TextBox>
             </td>
              <td bgcolor="#F6F6F6">&nbsp;</td>
            </tr>
         
            <tr>
              <td align="center" bgcolor="#F6F6F6"></td>
              <td height="25" bgcolor="#F6F6F6" align="center" style="width: 697px">&nbsp;<asp:Button ID="Button3" runat="server" Text="提　　交" Width="104px" OnClick="Button3_Click"  /></td>
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
