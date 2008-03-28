<%@ page language="C#" autoeventwireup="true" inherits="Admin_YX_SitModel_YX_channel_SitModel, App_Web_tpcas5-9" %>
<%@ Register  Src="../Admin_Btm.ascx" TagName="ChangHope_btm" TagPrefix="Chp" %>
<%@ Register TagPrefix="ChangeHope" TagName="Chklogin" Src="~/Admin/YX_CheckLogin.ascx" %>
  <ChangeHope:Chklogin _Column="37" ID="chk1" runat="server" />
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>无标题页</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" /><style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
}
-->

</style>
<link rel="stylesheet" href="../CSS.css" type="text/css" />
<script language="jscript" src="../../Include/JScript.js" type="text/Jscript"></script>
</head>
<body>
    
    <form id="form1" runat="server">
    <div>
   
    <table width="100%" height="25" border="0" cellpadding="0" cellspacing="0">
            <tr>
              <td align="center" background="../images/YX_Bg.jpg" class="style3">模版管理</td>
            </tr>
          </table>
          <asp:Panel ID="Panel1" runat="server" Width="100%">
		  <table width="100%" height="20" border="0" cellspacing="0" cellpadding="0" style="background-color:#E7E7E7">
  <tr>
    <td align="right" style="height: 20px">
   <a href="?YX_FS=Add&ChannelID=<%=Request["ChannelID"] %>"> 添加模版</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       </td>
  </tr>
</table>

		 
<table width="100%" border="0" cellspacing="0" cellpadding="0" align="center">
  <tr>
    <td width="100%">
	<asp:DataGrid ID="dg1" AutoGenerateColumns="False" PageSize="100" CellPadding="0" CellSpacing="0"   runat="server"  Width="100%" AllowPaging="True"  >
                   <HeaderStyle Height="30px" BackColor="#3270C5" HorizontalAlign="Center" />
                 <ItemStyle BackColor="#F6F6F6" Height="25px" HorizontalAlign="Center" />
                   <Columns>
               <asp:TemplateColumn HeaderText="选   择">
                <ItemTemplate >
				
				 <input id="YX_CH" name="YX_CH" type="checkbox" style="border:0 " value="<%# Eval("YX_ID") %>"  />
				
                </ItemTemplate>
                      <HeaderStyle CssClass="F" />
             </asp:TemplateColumn>
              <asp:TemplateColumn HeaderText="I  D">
                <ItemTemplate >	
				　<a href="?YX_FS=Edit&YX_ID=<%# Eval("YX_ID") %>&ChannelID=<%#Eval("ChannelID") %>"><%# Eval("YX_ID") %></a>
                </ItemTemplate>
                      <HeaderStyle CssClass="F" />
             </asp:TemplateColumn>
			      <asp:TemplateColumn HeaderText="模版类型">
                <ItemTemplate >
				<%# Eval("YX_CMSType")%>
                </ItemTemplate>
                      <HeaderStyle CssClass="F" />
             </asp:TemplateColumn>
            
			  <asp:TemplateColumn HeaderText="模版名称">
                <ItemTemplate >	
	　　　　　<a href="?YX_FS=Edit&YX_ID=<%# Eval("YX_ID") %>&ChannelID=<%#Eval("ChannelID") %>"><%# Eval("YX_CMSModelName")%></a>
		       </ItemTemplate>
                  <HeaderStyle CssClass="F" />
             </asp:TemplateColumn>	 
              <asp:TemplateColumn HeaderText="模版说明">
                <ItemTemplate >	
	　　　　　　<%# Eval("YX_CMSSM")%>
		       </ItemTemplate>
                  <HeaderStyle CssClass="F" />
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
                    <asp:DropDownList ID="DropDownList1" runat="server">                                   
                       <asp:ListItem Value="2">---批量删除---</asp:ListItem>                  
                    </asp:DropDownList>
                  </td>
                <td align="center" style="width: 50px"><asp:Button ID="Button2" runat="server" Text="执行操作" OnClientClick="return isExc()" onmousemove=showBtnOver(this) onmouseout=showBtnOut(this)  CssClass="submitMiniGreen"  OnClick="Button2_Click" />
                </td>
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
                                  <asp:ListItem Value="YX_ProIndex">商品首页页面</asp:ListItem>
                                  <asp:ListItem Value="YX_ProList">商品列表页面模板</asp:ListItem>
                                  <asp:ListItem Value="YX_ProContext">商品内容页面模板</asp:ListItem>
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
              <textarea id="content1" name='content1' cols="80" rows="20" runat="server" ></textarea>
             
             </td>
              <td bgcolor="#F6F6F6">&nbsp;</td>
            </tr>
         
            <tr>
              <td align="center" bgcolor="#F6F6F6"></td>
              <td height="25" bgcolor="#F6F6F6" align="center" style="width: 651px">&nbsp;<asp:Button ID="Button1" runat="server" Text="提　　交" Width="104px" OnClick="Button1_Click" /></td>
              <td bgcolor="#F6F6F6">&nbsp;</td>
            </tr>
              <tr>
                  <td align="center" colspan="3">
                    <Chp:ChangHope_btm ID="chp" runat="server" />                  </td>
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
                                  <asp:ListItem Value="YX_ProIndex">商品首页页面</asp:ListItem>
                                  <asp:ListItem Value="YX_ProList">商品列表页面模板</asp:ListItem>
                                  <asp:ListItem Value="YX_ProContext">商品内容页面模板</asp:ListItem>
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
            
                  <asp:TextBox ID="TextBox4" runat="server" BackColor="Window" BorderColor="Green" Height="547px" TextMode="MultiLine" Width="679px" Font-Size="14px" Font-Names="宋体"></asp:TextBox>
             </td>
              <td bgcolor="#F6F6F6">&nbsp;</td>
            </tr>
         
            <tr>
              <td align="center" bgcolor="#F6F6F6"></td>
              <td height="25" bgcolor="#F6F6F6" align="center" style="width: 697px">&nbsp;<asp:Button ID="Button3" runat="server" Text="提　　交" Width="104px" OnClick="Button3_Click"  /></td>
              <td bgcolor="#F6F6F6">&nbsp;</td>
            </tr>
              <tr>
                  <td align="center" colspan="3">
                    <Chp:ChangHope_btm ID="ChangHope_btm1" runat="server" />                  </td>
              </tr>
          </table>
        </asp:Panel>
    </form>
</body>
</html>
