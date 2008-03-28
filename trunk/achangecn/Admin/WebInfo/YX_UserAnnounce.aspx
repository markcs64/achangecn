<%@ page language="C#" autoeventwireup="true" inherits="Admin_WebInfo_YX_UserContent, App_Web_pxeqsmsm" %>
<%@ Register  Src="../Admin_Btm.ascx" TagName="ChangHope_btm" TagPrefix="Chp" %>
<%@ Register TagPrefix="ChangeHope" TagName="Chklogin" Src="~/Admin/YX_CheckLogin.ascx" %>
  <ChangeHope:Chklogin _Column="15" ID="chk1" runat="server" />
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
              <td align="center" background="../images/YX_Bg.jpg" class="style3">客户留言管理</td>
            </tr>
          </table> <table width="100%" height="20" border="0" cellspacing="0" cellpadding="0" style="background-color:#E7E7E7">
  <tr>
    <td align="right">
   <a href="?YX_FS=0"> ［全部留言］</a><a href="?YX_FS=1"> ［未回复留言］</a><a href="?YX_FS=2"> ［已回复留言］</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       </td>
  </tr>
</table>
          <asp:Panel ID="Panel1" runat="server" Width="100%">
		 

		 
<table width="100%" border="0" cellspacing="0" cellpadding="0" align="center">
  <tr>
    <td width="100%">
	<asp:DataGrid ID="dg1" AutoGenerateColumns="False" PageSize="20"  runat="server"  Width="100%" AllowPaging="True" >
                  
                 <ItemStyle BackColor="#F6F6F6" Height="25px" HorizontalAlign="Center" />
                   <Columns>
               <asp:TemplateColumn>
                <ItemTemplate >
				<table width="100%" border="0" cellpadding="1" cellspacing="1" bgcolor="#F6F6F6">
  <tr>
    <td width="15%" height="28" bgcolor="#BEC0D3" style="color:#ffffff" align="left">留言人：<%# Eval("YX_LyUser")%></td>
    <td width="31%" bgcolor="#BEC0D3" style="color:#ffffff" align="left">留言时间：<%# Eval("YX_LyTime")%></td>
    <td width="28%" bgcolor="#BEC0D3" style="color:#ffffff"></td>
    <td width="16%" bgcolor="#BEC0D3" style="color:#ffffff"><%#Stat(Convert.ToInt16(Eval("YX_ID")), Convert.ToInt16(Eval("YX_LyHF")))%>
      <input id="YX_CH" name="YX_CH" type="checkbox" style="border:0 " value="<%# Eval("YX_ID") %>"  />
    </td>
 
  </tr>
    <tr>
	 <td height="51">留言内容：</td>
    <td colspan="3" align="left" style="word-break:break-all"><%#Eval("YX_LyContent")%></td>

  </tr> 
  <tr>
	 <td height="1" bgcolor=Silver colspan=4> </td>
    

  </tr>
  <tr>
	 <td height="51">回复内容：</td>
    <td colspan="3" align="left" style="word-break:break-all"><%#Eval("YX_HFContent")%></td>

  </tr>
      <tr>
	 <td height="10"></td>
    <td colspan="3" align="left">&nbsp;</td>

  </tr>
</table>


				
				
                </ItemTemplate>
                      <HeaderStyle CssClass="style3" />
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
      
        
    </div>
        <asp:Panel ID="Panel3" runat="server" width="100%">
                  <table width="100%" border="0" align="center" cellpadding="1" cellspacing="1" id="TABLE2">
            <tr>
              <td width="18%" align="center" bgcolor="#1E515C" class="style3">设置名称</td>
              <td width="61%" height="25" align="left" bgcolor="#1E515C" class="style3">基本参数设置</td>
              <td width="21%" align="center" bgcolor="#1E515C" class="style3">设置说明</td>
            </tr>
            <tr>
              <td align="center" bgcolor="#F6F6F6">
                  回复人：</td>
              <td height="25" align="left" bgcolor="#F6F6F6">
                  <asp:TextBox ID="TextBox1" runat="server" Width="237px"></asp:TextBox>
                 </td>
              <td bgcolor="#F6F6F6">&nbsp;</td>
            </tr>
            <tr>
              <td align="center" bgcolor="#F6F6F6">回复内容：</td>
              <td height="25" align="left" bgcolor="#F6F6F6">
                  <asp:TextBox ID="TextBox2" runat="server" Height="105px" Width="390px" TextMode="MultiLine"></asp:TextBox></td>
              <td bgcolor="#F6F6F6">&nbsp;</td>
            </tr>
                <%-- <tr>
                          <td align="center" bgcolor="#f6f6f6">
                          前台是否显示：
                          </td>
                          <td align="left" bgcolor="#f6f6f6" height="25">
                              &nbsp;<asp:CheckBox ID="CheckBox1" runat="server" Text="" /></td>
                          <td bgcolor="#f6f6f6">
                          </td>
                      </tr>--%>
            <tr>
              <td align="center" bgcolor="#F6F6F6"></td>
              <td height="25" bgcolor="#F6F6F6" align="center">&nbsp;<asp:Button ID="Button3" runat="server" Text="回  复" Width="104px" OnClick="Button3_Click1" />
                 &nbsp;&nbsp; <input id="Button4" style="width: 105px" type="button" onclick="history.back()" value="返回上一级" /></td>
              <td bgcolor="#F6F6F6">&nbsp;</td>
            </tr>
              
              <tr>
                  <td align="center" colspan="3">
                    <Chp:ChangHope_btm ID="ChangHope_btm1" runat="server" />                  </td>
              </tr>
          </table>
        </asp:Panel>
         <asp:Panel ID="Panel2" runat="server" width="100%">
                  <table width="100%" border="0" align="center" cellpadding="1" cellspacing="1" id="TABLE1">
            <tr>
              <td width="18%" align="center" bgcolor="#1E515C" class="style3">设置名称</td>
              <td width="61%" height="25" align="left" bgcolor="#1E515C" class="style3">基本参数设置</td>
              <td width="21%" align="center" bgcolor="#1E515C" class="style3">设置说明</td>
            </tr>
            <tr>
              <td align="center" bgcolor="#F6F6F6">
                  回复人：</td>
              <td height="25" align="left" bgcolor="#F6F6F6">
                  <asp:TextBox ID="TextBox3" runat="server" Width="237px"></asp:TextBox>
                 </td>
              <td bgcolor="#F6F6F6">&nbsp;</td>
            </tr>
            <tr>
              <td align="center" bgcolor="#F6F6F6">回复内容：</td>
              <td height="25" align="left" bgcolor="#F6F6F6">
                  <asp:TextBox ID="TextBox4" runat="server" Height="105px" Width="390px" TextMode="MultiLine"></asp:TextBox></td>
              <td bgcolor="#F6F6F6">&nbsp;</td>
            </tr>
                 <tr>
                          <td align="center" bgcolor="#f6f6f6">
                          前台是否显示：
                          </td>
                          <td align="left" bgcolor="#f6f6f6" height="25">
                              &nbsp;<asp:CheckBox ID="CheckBox2" runat="server" Text="" /></td>
                          <td bgcolor="#f6f6f6">
                          </td>
                      </tr>
            <tr>
              <td align="center" bgcolor="#F6F6F6"></td>
              <td height="25" bgcolor="#F6F6F6" align="center">&nbsp;<asp:Button ID="Button1" runat="server" Text="修   改" Width="104px" OnClick="Button1_Click" />
                 &nbsp;&nbsp; <input id="Button5" style="width: 105px" type="button" onclick="history.back()" value="返回上一级" /></td>
              <td bgcolor="#F6F6F6">&nbsp;</td>
            </tr>
              
              <tr>
                  <td align="center" colspan="3">
                    <Chp:ChangHope_btm ID="ChangHope_btm2" runat="server" />                  </td>
              </tr>
          </table>
        </asp:Panel>
    </form>
</body>
</html>