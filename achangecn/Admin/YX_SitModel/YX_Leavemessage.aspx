<%@ page language="C#" autoeventwireup="true" inherits="Admin_YX_SitModel_YX_Leavemessage, App_Web_c8yzgfca" %>
<%@ Register  Src="../Admin_Btm.ascx" TagName="ChangHope_btm" TagPrefix="Chp" %>
<%@ Register TagPrefix="ChangeHope" TagName="Chklogin" Src="~/Admin/YX_CheckLogin.ascx" %>
  <ChangeHope:Chklogin _Column="1" ID="chk1" runat="server" />
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >

<head id="Head1" runat="server">
<title>无标题页</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" href="../style/style.css" type="text/css" />
<script language="jscript" src="../style/JScript.js"></script>
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
         <table align="center" cellpadding="4" cellspacing="1" border="1" width=100%  class="toptable grid ">
            <tr>
              <td class="category t2" width=100>
                  留言管理</td><td class="category">
                  <a href="YX_Leavemessage.aspx?Falg=edit">[发送消息]</a> <a href="YX_Leavemessage.aspx?Falg=views">[查看消息]</a></td>
            </tr>
           
          </table>
		  <table width="100%" height="5" border="0" cellspacing="0" cellpadding="0">
</table>
		 <asp:Panel ID="Panel1" runat="server" width="100%">
<table width="100%" border="0" cellspacing="0" cellpadding="0" align="center">
  <tr>
    <td width="100%">
	<asp:DataGrid ID="dg1" AutoGenerateColumns="False"  CellSpacing="0" border="1" CellPadding="0" class="toptable grid " PageSize="20"  runat="server"  Width="100%" AllowPaging="True" OnItemDataBound="dg1_ItemDataBound" >
                   <HeaderStyle Height="25px" BackColor="#3890b5" HorizontalAlign="Center" />
                 <ItemStyle BackColor="#F6F6F6" Height="25px" HorizontalAlign="Center" />
                   <Columns>
               <asp:TemplateColumn HeaderText="选   择">
                <ItemTemplate >
				
				 <input id="YX_CH" name="YX_CH" type="checkbox" style="border:0 " value="<%# Eval("yx_id") %>"  />
				
                </ItemTemplate>
                      <HeaderStyle CssClass="B" />
             </asp:TemplateColumn>
            
			      <asp:TemplateColumn HeaderText="管理员">
                <ItemTemplate >
                <%#Eval("yx_adminuser")%>
                </ItemTemplate>
                      <HeaderStyle CssClass="B" />
             </asp:TemplateColumn>
             <asp:TemplateColumn HeaderText="状态">
                <ItemTemplate >
                <%#setSatets(Convert.ToInt32(Eval("yx_stat"))) %>	
             </ItemTemplate>
                 <HeaderStyle CssClass="B" />
             </asp:TemplateColumn>

             <asp:TemplateColumn HeaderText="留言">
                <ItemTemplate >
                 <%#setSatet(Convert.ToInt32(Eval("yx_start"))) %>
                </ItemTemplate>
                  <HeaderStyle CssClass="B" />
             </asp:TemplateColumn>
               <asp:TemplateColumn HeaderText="操作">
                <ItemTemplate >
<a href="YX_Leavemessage.aspx?Falg=view&YX_Id=<%#Eval("yx_id")%>"style="color:red"><img  style="border:0" src="../../Skin/skin5/IMAGES/icon_view.gif"alt="查看并回复"/></a>
<a href="YX_Leavemessage.aspx?Falg=del&YX_Id=<%#Eval("yx_id")%>" onclick="return isdel()" style="color:red"><img  style="border:0" src="../../Skin/skin5/IMAGES/no.gif" alt="删除"/></a>
                </ItemTemplate>
                  <HeaderStyle CssClass="B" />
             </asp:TemplateColumn>
            </Columns>
    <PagerStyle Visible="False" />

            
      </asp:DataGrid>
      
      </td>
  </tr>
  <tr>
    <td> <table border="0" cellpadding="0" cellspacing="0" style="width: 100%" class="toptable grid " >
            <tr bgcolor="#ffffff">
                <td align="left" colspan="3" style="text-align: right">
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
              </asp:DropDownList> <input id="chkall" type="checkbox" onclick="CheckAll(this.form)" style="border:0 " />全选&nbsp;</td>
                
            </tr>
        </table></td>
  </tr>

</table>
        </asp:Panel>
        <asp:Panel ID="Panel2" runat="server" Width="100%">
                   <table width="100%" border="0" align="center" cellpadding="1" cellspacing="1" id="TABLE2">
                       <tr>
                           <td align="center" bgcolor="#f6f6f6" style="width: 144px">
                           </td>
                           <td align="left" bgcolor="#f6f6f6" height="25" style="width: 482px; text-align: center;">
                               消息回复</td>
                           <td bgcolor="#f6f6f6">
                           </td>
                       </tr>
                       
            <tr>
              <td align="center" bgcolor="#F6F6F6" style="width: 144px">
                  消息来自：</td>
              <td height="25" align="left" bgcolor="#F6F6F6" style="width: 482px">
                  &nbsp;<asp:Label ID="Label3" runat="server"></asp:Label></td>
              <td bgcolor="#F6F6F6">&nbsp;</td>
            </tr>
            <tr>
              <td align="center" bgcolor="#F6F6F6" style="height: 27px; width: 144px;">
                             消息内容：</td>
              <td align="left" bgcolor="#F6F6F6" style="height: 27px; width: 482px;">
                  <asp:TextBox ID="TextBox1" runat="server" Height="113px" TextMode="MultiLine" Width="473px" ReadOnly="True"></asp:TextBox></td>
            
              <td bgcolor="#F6F6F6" style="height: 27px">&nbsp;</td>
            </tr>
                      <tr>
                          <td align="center" bgcolor="#f6f6f6" style="width:144px; height: 25px;">
                              回复内容：</td>
                          <td align="left" bgcolor="#f6f6f6" style="height: 25px; width: 482px;">
                              <asp:TextBox ID="TextBox14" runat="server" Width="472px" Height="113px" TextMode="MultiLine"></asp:TextBox></td>
                          <td bgcolor="#f6f6f6" style="height: 25px">
                          </td>
                      </tr>
            
           
                       <tr>
                           <td align="center" bgcolor="#f6f6f6" style="width: 144px">
                           </td>
                           <td align="left" bgcolor="#f6f6f6" height="25" style="width: 482px">
                               &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                               &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                               <asp:Button ID="Button1" runat="server"  Text="确　　定" onmousemove=showBtnOver(this) onmouseout=showBtnOut(this)  CssClass="submitMiniGreen" OnClick="Button1_Click" /></td>
                           <td bgcolor="#f6f6f6">
                           </td>
                       </tr>


          </table>
        </asp:Panel>
  <asp:Panel ID="Panel4" runat="server" Width="100%">
                   <table width="100%" border="0" align="center" cellpadding="1" cellspacing="1" id="TABLE1">
                       <tr>
                           <td align="center" bgcolor="#f6f6f6" style="width: 144px">
                           </td>
                           <td align="left" bgcolor="#f6f6f6" height="25" style="width: 482px; text-align: center;">
                               消息发送</td>
                           <td bgcolor="#f6f6f6">
                           </td>
                       </tr>
                       
            <tr>
              <td align="center" bgcolor="#F6F6F6" style="width: 144px">
                  发送到管理员：</td>
              <td height="25" align="left" bgcolor="#F6F6F6" style="width: 482px">
                  &nbsp;
                  <asp:DropDownList ID="DropDownList1" runat="server">
                  </asp:DropDownList></td>
              <td bgcolor="#F6F6F6">&nbsp;</td>
            </tr>
            <tr>
              <td align="center" bgcolor="#F6F6F6" style="height: 27px; width: 144px;">
                             消息内容：</td>
              <td align="left" bgcolor="#F6F6F6" style="height: 27px; width: 482px;">
                  <asp:TextBox ID="TextBox2" runat="server" Height="113px" TextMode="MultiLine" Width="473px"></asp:TextBox></td>
            
              <td bgcolor="#F6F6F6" style="height: 27px">&nbsp;</td>
            </tr>
            
           
                       <tr>
                           <td align="center" bgcolor="#f6f6f6" style="width: 144px">
                           </td>
                           <td align="left" bgcolor="#f6f6f6" height="25" style="width: 482px">
                               &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                               &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                               <asp:Button ID="Button4" runat="server"  Text="确　　定" onmousemove=showBtnOver(this) onmouseout=showBtnOut(this)  CssClass="submitMiniGreen" OnClick="Button4_Click" />&nbsp;</td>
                           <td bgcolor="#f6f6f6">
                           </td>
                       </tr>


          </table>
        </asp:Panel>
        <asp:Panel ID="Panel3" runat="server" Height="50px" Width="100%">
        <table width="100%" border="0" cellspacing="0" cellpadding="0" align="center">
  <tr>
    <td width="100%">
        &nbsp;</td>
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
</table><Chp:ChangHope_btm ID="ChangHope_btm2" runat="server" /> 
</body>
</html>
