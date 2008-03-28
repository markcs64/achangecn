<%@ page language="C#" autoeventwireup="true" inherits="Admin_WebInfo_Announce, App_Web_pxeqsmsm" %>
<%@ Register  Src="../Admin_Btm.ascx" TagName="ChangHope_btm" TagPrefix="Chp" %>
<%@ Register TagPrefix="ChangeHope" TagName="Chklogin" Src="~/Admin/YX_CheckLogin.ascx" %>
  <ChangeHope:Chklogin _Column="34" ID="chk1" runat="server" />
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
              <td align="center" background="../images/YX_Bg.jpg" class="style3">公告管理</td>
            </tr>
          </table>
          <asp:Panel ID="Panel1" runat="server" Width="100%">
		  <table width="100%" height="20" border="0" cellspacing="0" cellpadding="0" style="background-color:#E7E7E7">
  <tr>
    <td align="right">
   <a href="?YX_FS=Add"> ［添加公告］</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       </td>
  </tr>
</table>

		 
<table width="100%" border="0" cellspacing="0" cellpadding="0" align="center">
  <tr>
    <td width="100%">
	<asp:DataGrid ID="dg1" AutoGenerateColumns="False" CellPadding="1" CellSpacing="1" PageSize="20"  runat="server"  Width="100%" AllowPaging="True" OnItemDataBound="dg1_ItemDataBound" >
                   <HeaderStyle Height="30px" BackColor="#FFFFFF" HorizontalAlign="Center" />
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
			
				<%# Eval("YX_ID") %>
                </ItemTemplate>
                      <HeaderStyle CssClass="F" />
             </asp:TemplateColumn>
			      <asp:TemplateColumn HeaderText="公告名称">
                <ItemTemplate >
		
				<%# Eval("YX_TitleHelp")%>
                </ItemTemplate>
                      <HeaderStyle CssClass="F" />
             </asp:TemplateColumn>
        
			  <asp:TemplateColumn HeaderText="添加时间">
                <ItemTemplate >	
	　　　　　　<%# Eval("YX_AddTime")%>
		       </ItemTemplate>
                  <HeaderStyle CssClass="F" />
             </asp:TemplateColumn>
             	  <asp:TemplateColumn HeaderText="添加人">
                <ItemTemplate >	
	　　　　　　<%# Eval("YX_Write_Prson")%>
		       </ItemTemplate>
                  <HeaderStyle CssClass="F" />
             </asp:TemplateColumn>
             <asp:TemplateColumn HeaderText="操　　作">
                <ItemTemplate >
	
				<a href="?YX_FS=Edit&YX_MID=<%#Eval("YX_ID")%>">修改</a>
				<a href="?YX_FS=Del&YX_MID=<%#Eval("YX_ID")%>">删除</a>
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
              </asp:DropDownList> <input id="chkall" type="checkbox" onclick="CheckAll(this.form)" style="border:0 " />全选</td>
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
              <td width="18%" align="center" bgcolor="#FFFFFF" class="F">设置名称</td>
              <td width="61%" height="25" align="left" bgcolor="#FFFFFF" class="F">基本参数设置</td>
              <td width="21%" align="center" bgcolor="#FFFFFF" class="F">设置说明</td>
            </tr>
            <tr>
              <td align="center" bgcolor="#F6F6F6">公告名称：</td>
              <td height="25" align="left" bgcolor="#F6F6F6">
                  <asp:TextBox ID="YX_fcname" runat="server"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="YX_fcname"
                      Display="Dynamic" ErrorMessage="＊不能为空"></asp:RequiredFieldValidator></td>
              <td bgcolor="#F6F6F6">&nbsp;</td>
            </tr>
 
            <tr>
              <td align="center" bgcolor="#F6F6F6">公告内容：</td>
              <td height="25" align="left" bgcolor="#F6F6F6">
              <textarea id="content1" name='content1' cols="20" rows="2" style="display:none" runat="server" ></textarea>
              <IFRAME ID='eWebEditor1' src='../edit/ewebeditor.htm?id=content1&savepathfilename=d_savepathfilename' frameborder='0' scrolling='no' width='550' height='300'></IFRAME> 
             </td>
              <td bgcolor="#F6F6F6">&nbsp;</td>
            </tr>
              <tr>
                  <td align="center" bgcolor="#f6f6f6">
                      添加人：</td>　
                  <td  bgcolor="#f6f6f6" height="25" align="left">
                      <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></td>
                  <td bgcolor="#f6f6f6">
                  </td>
              </tr>
         
            <tr>
              <td align="center" bgcolor="#F6F6F6"></td>
              <td height="25" bgcolor="#F6F6F6" align="center">&nbsp;<asp:Button ID="Button1" runat="server" Text="提　　交" Width="104px" OnClick="Button1_Click" /></td>
              <td bgcolor="#F6F6F6">&nbsp;</td>
            </tr>
              <tr>
                  <td align="center" colspan="3">
                    <Chp:ChangHope_btm ID="chp" runat="server" />                  </td>
              </tr>
          </table>
        </asp:Panel>
        
    </div>
        <asp:Panel ID="Panel3" runat="server" >
                  <table width="100%" border="0" align="center" cellpadding="1" cellspacing="1" id="TABLE2">
            <tr>
              <td width="18%" align="center" bgcolor="#FFFFFF" class="F">设置名称</td>
              <td width="61%" height="25" align="left" bgcolor="#FFFFFF" class="F">基本参数设置</td>
              <td width="21%" align="center" bgcolor="#FFFFFF" class="F">设置说明</td>
            </tr>
            <tr>
              <td align="center" bgcolor="#F6F6F6">公告标题：</td>
              <td height="25" align="left" bgcolor="#F6F6F6">
                  <asp:TextBox ID="TextBox1" runat="server" Width="237px"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox1"
                      Display="Dynamic" ErrorMessage="＊不能为空"></asp:RequiredFieldValidator></td>
              <td bgcolor="#F6F6F6">&nbsp;</td>
            </tr>
            <tr>
              <td align="center" bgcolor="#F6F6F6">公告内容：</td>
              <td height="25" align="left" bgcolor="#F6F6F6">
              <textarea id="content2" name='content2' cols="20" rows="2" style="display:none" runat="server" ></textarea>
              <IFRAME ID='IFRAME1' src='../edit/ewebeditor.htm?id=content2&savepathfilename=d_savepathfilename' frameborder='0' scrolling='no' width='550' height='300'></IFRAME> 
             </td>
              <td bgcolor="#F6F6F6">&nbsp;</td>
            </tr>
                 <tr>
                          <td align="center" bgcolor="#f6f6f6">
                          添加人：
                          </td>
                          <td align="left" bgcolor="#f6f6f6" height="25">
                              <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                          </td>
                          <td bgcolor="#f6f6f6">
                          </td>
                      </tr>
            <tr>
              <td align="center" bgcolor="#F6F6F6"></td>
              <td height="25" bgcolor="#F6F6F6" align="center">&nbsp;<asp:Button ID="Button3" runat="server" Text="提　　交" Width="104px" OnClick="Button3_Click1" />
                 &nbsp;&nbsp; <input id="Button4" style="width: 105px" type="button" onclick="history.back()" value="返回上一级" /></td>
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