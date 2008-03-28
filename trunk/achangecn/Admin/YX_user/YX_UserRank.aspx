<%@ page language="C#" autoeventwireup="true" inherits="Admin_YX_user_YX_UserRank, App_Web_ezi-zx_s" %>
<%@ Register  Src="../Admin_Btm.ascx" TagName="ChangHope_btm" TagPrefix="Chp" %>
<%@ Register TagPrefix="ChangeHope" TagName="Chklogin" Src="~/Admin/YX_CheckLogin.ascx" %>
  <ChangeHope:Chklogin _Column="25" ID="chk1" runat="server" />
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title></title>
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
              <td align="center" background="../images/YX_Bg.jpg" class="style3" style="height: 25px">会员等级管理</td>
            </tr>
          </table>
          <asp:Panel ID="Panel1" runat="server" Width="100%">
		  <table width="100%" height="20" border="0" cellspacing="0" cellpadding="0" style="background-color:#E7E7E7">
  <tr>
    <td align="right">
   <a href="YX_UserRank.aspx?YX_FS=Add"> 添加会员等级</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       </td>
  </tr>
</table>

		 
<table width="100%" border="0" cellspacing="0" cellpadding="0" align="center">
  <tr>
    <td width="100%">
	<asp:DataGrid ID="dg1" AutoGenerateColumns="False" CellPadding="1" CellSpacing="1" PageSize="20"  runat="server"  Width="100%" AllowPaging="True" border=0 OnItemDataBound="dg1_ItemDataBound" > <HeaderStyle Height="30px" BackColor="#3270C5" HorizontalAlign="Center" />
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
			      <asp:TemplateColumn HeaderText="等级名称">
                <ItemTemplate >
		
				<%# Eval("YX_Rankname") %>
                </ItemTemplate>
                      <HeaderStyle CssClass="F" />
             </asp:TemplateColumn>
            
			  <asp:TemplateColumn HeaderText="图片">
                <ItemTemplate >	
		<!--<a href="?YX_FS=<%# Eval("YX_RankPic") %>">图片</a>-->
		         图片
		       </ItemTemplate>
                  <HeaderStyle CssClass="F" />
             </asp:TemplateColumn>
              <asp:TemplateColumn HeaderText="折扣">
                <ItemTemplate >
			<%# Eval("YX_Zk") %>
                </ItemTemplate>
                  <HeaderStyle CssClass="F" />
             </asp:TemplateColumn>
             <asp:TemplateColumn HeaderText="是否升级">
                <ItemTemplate >
		<%#Ret_stat(Convert.ToInt16(Eval("YX_SFSJ")))%>
                </ItemTemplate>
                  <HeaderStyle CssClass="F" />
             </asp:TemplateColumn>
              <asp:TemplateColumn HeaderText="升级金额">
                <ItemTemplate >
		<%#Eval("YX_SJMoney")%>
                </ItemTemplate>
                  <HeaderStyle CssClass="F" />
             </asp:TemplateColumn>
             <asp:TemplateColumn HeaderText="操　　作">
                <ItemTemplate >
				<a href="?YX_FS=SJ&YX_MID=<%#Eval("YX_ID")%>">开通升级</a>
				<a href="?YX_FS=JJ&YX_MID=<%#Eval("YX_ID")%>">取消升级</a>
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
                       <asp:ListItem Value="2">---全部删除---</asp:ListItem>                  
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
              <td width="18%" align="center" bgcolor="#3270C5" class="F">设置名称</td>
              <td width="61%" height="25" align="left" bgcolor="#3270C5" class="F">基本参数设置</td>
              <td width="21%" align="center" bgcolor="#3270C5" class="F">设置说明</td>
            </tr>
            <tr>
              <td align="center" bgcolor="#F6F6F6">级别名称：</td>
              <td height="25" align="left" bgcolor="#F6F6F6">
                  <asp:TextBox ID="YX_fcname" runat="server"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="YX_fcname"
                      Display="Dynamic" ErrorMessage="＊不能为空"></asp:RequiredFieldValidator></td>
              <td bgcolor="#F6F6F6">&nbsp;会员级别名称</td>
            </tr>
            <tr>
              <td align="center" bgcolor="#F6F6F6">打折：</td>
              <td height="25" align="left" bgcolor="#F6F6F6">
              <asp:TextBox ID="YX_fcurl" runat="server"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="该项不能为空" ControlToValidate="YX_fcurl" Display="Dynamic"></asp:RequiredFieldValidator>
                  <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="YX_fcurl"
                        ErrorMessage="该项必须是数字" ValidationExpression="[-]?\d+[.]?\d*$"></asp:RegularExpressionValidator>
                  </td>
              <td bgcolor="#F6F6F6">&nbsp;会员打折</td>
            </tr>
            <tr>
              <td align="center" bgcolor="#F6F6F6" style="height: 27px">升级金额：</td>
              <td align="left" bgcolor="#F6F6F6" style="height: 27px"><asp:TextBox ID="YX_fclxs" runat="server"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="该项不能为空" ControlToValidate="YX_fclxs"></asp:RequiredFieldValidator>
                  <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="YX_fclxs"
                        ErrorMessage="该项必须是数字" ValidationExpression="[-]?\d+[.]?\d*$"></asp:RegularExpressionValidator>
                  </td>
              <td bgcolor="#F6F6F6" style="height: 27px">&nbsp;升级金额</td>
            </tr>
            <tr>
              <td align="center" bgcolor="#F6F6F6" style="height: 27px">每次购物最大金额：</td>
              <td align="left" bgcolor="#F6F6F6" style="height: 27px"><asp:TextBox ID="YX_fctel" runat="server"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="该项不能为空" ControlToValidate="YX_fctel" Display="Dynamic"></asp:RequiredFieldValidator>
                  <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="YX_fctel"
                        ErrorMessage="该项必须是数字" ValidationExpression="[-]?\d+[.]?\d*$"></asp:RegularExpressionValidator>
                  </td>
              <td bgcolor="#F6F6F6" style="height: 27px">&nbsp;为０不限制</td>
            </tr>         
              <tr>
                  <td align="center" bgcolor="#f6f6f6">是否升级：</td>
                  <td height="25" align="left" bgcolor="#f6f6f6">
                      <asp:CheckBox id="tj" runat="server" CssClass="table3"  />
                   </td>
                  <td bgcolor="#f6f6f6">                  是否允许升级</td>
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
                <asp:Panel ID="Panel3" runat="server" Height="50px" Width="100%">
          <table width="100%" border="0" align="center" cellpadding="1" cellspacing="1" id="TABLE2">
            <tr>
              <td width="18%" align="center" bgcolor="#FFFFFF" class="F">设置名称</td>
              <td width="61%" height="25" align="left" bgcolor="#FFFFFF" class="F">基本参数设置</td>
              <td width="21%" align="center" bgcolor="#FFFFFF" class="F">设置说明</td>
            </tr>
            <tr>
              <td align="center" bgcolor="#F6F6F6">级别名称：</td>
              <td height="25" align="left" bgcolor="#F6F6F6">
                  <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox1"
                      Display="Dynamic" ErrorMessage="＊不能为空"></asp:RequiredFieldValidator></td>
              <td bgcolor="#F6F6F6">&nbsp;会员级别名称</td>
            </tr>
           
            <tr>
              <td align="center" bgcolor="#F6F6F6">打折：</td>
              <td height="25" align="left" bgcolor="#F6F6F6">
              <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="该项不能为空" ControlToValidate="TextBox2" Display="Dynamic"></asp:RequiredFieldValidator>
                  <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TextBox2"
                        ErrorMessage="该项必须是数字" ValidationExpression="[-]?\d+[.]?\d*$"></asp:RegularExpressionValidator>
                  </td>
              <td bgcolor="#F6F6F6">&nbsp;会员打折</td>
            </tr>
            <tr>
              <td align="center" bgcolor="#F6F6F6" style="height: 27px">升级金额：</td>
              <td align="left" bgcolor="#F6F6F6" style="height: 27px"><asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="该项不能为空" ControlToValidate="TextBox3"></asp:RequiredFieldValidator>
                  <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="TextBox3"
                        ErrorMessage="该项必须是数字" ValidationExpression="[-]?\d+[.]?\d*$"></asp:RegularExpressionValidator>
                  </td>
              <td bgcolor="#F6F6F6" style="height: 27px">&nbsp;升级金额</td>
            </tr>
            <tr>
              <td align="center" bgcolor="#F6F6F6" style="height: 27px">每次购物最大金额：</td>
              <td align="left" bgcolor="#F6F6F6" style="height: 27px"><asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="该项不能为空" ControlToValidate="TextBox4" Display="Dynamic"></asp:RequiredFieldValidator>
                  <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ControlToValidate="TextBox4"
                        ErrorMessage="该项必须是数字" ValidationExpression="[-]?\d+[.]?\d*$"></asp:RegularExpressionValidator>
                  </td>
              <td bgcolor="#F6F6F6" style="height: 27px">&nbsp;为０不限制</td>
            </tr>         
              <tr>
                  <td align="center" bgcolor="#f6f6f6">是否升级：</td>
                  <td height="25" align="left" bgcolor="#f6f6f6">
                      <asp:CheckBox id="CheckBox1" runat="server" CssClass="table3"  />
                   </td>
                  <td bgcolor="#f6f6f6">                  是否允许升级</td>
              </tr>
            <tr>
              <td align="center" bgcolor="#F6F6F6"></td>
              <td height="25" bgcolor="#F6F6F6" align="center">&nbsp;<asp:Button ID="Button3" runat="server" Text="修　　改" Width="104px" OnClick="Button3_Click" /></td>
              <td bgcolor="#F6F6F6">&nbsp;</td>
            </tr>
              <tr>
                  <td align="center" colspan="3">
                    <Chp:ChangHope_btm ID="ChangHope_btm1" runat="server" />                  </td>
              </tr>
          </table>
        </asp:Panel>
    </div>
    </form>
</body>
</html>
