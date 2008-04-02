<%@ page language="C#" autoeventwireup="true" inherits="Admin_YX_SitModel_YX_RankStore, App_Web_c8yzgfca" %>
<%@ Register TagPrefix="ChangHope" TagName="Admin_Btm" Src="../Admin_Btm.ascx" %>
<%@ Register TagPrefix="ChangeHope" TagName="Chklogin" Src="~/Admin/YX_CheckLogin.ascx" %>
  <ChangeHope:Chklogin _Column="4" ID="chk1" runat="server" />
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>无标题页</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" href="../style/style.css" type="text/css" />
 <script language="javascript" type="text/javascript" src="../style/JScript.js"></script>
 <script language="jscript" type="text/javascript">
 function del()
 {
   if(!confirm( "你确实要删除吗? ")) 
   return false; 
 }
 </script>
</head>

<body>
<table width="100%" border="0" cellpadding="0" cellspacing="0" bgcolor="#C4D8ED">
<tr>
<td><img src="../images/r_1.gif" alt="" /></td>
<td width="100%" background="images/r_0.gif"></td>
<td><img src="../images/r_2.gif" alt="" /></td>
</tr>
<tr><td></td><td>
    <form id="form1" runat="server">
    <div>  
    <asp:Panel ID="P2" HorizontalAlign="Center" runat="server"  Width="100%">
        
  <table  cellpadding="4" cellspacing="1" border="0" width=100%  class="toptable grid">
         <tr>
          <td height="25"class="category t2" width=100>
              易家等级分类</td>
          <td class="category" align=left><a href="?falg=mager">[易家等级管理]</a> <a href="?falg=add">[添加易家等级]</a> <a href="?falg=check">[易家等级审核]</a>
           </td>
        </tr>
 </table>

	   <table  cellpadding="4" cellspacing="1" border="0" width=100%  class="toptable grid">
  <tr>
    <td align="center" bgcolor="#F6F6F6" style="text-align: left; width: 85px;">
        易家等级名称：</td>
    <td height="22" bgcolor="#F6F6F6"  align="left">
        <asp:TextBox ID="YX_Dl" runat="server" Width=200></asp:TextBox><span style="color:Red"">*</span>
     <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="必填项" ControlToValidate="YX_Dl"></asp:RequiredFieldValidator></td>
  </tr>
  <tr>
    <td align="center" bgcolor="#E7E7E7" style="text-align: right; width: 85px;">
        易家等级金额：</td>
    <td height="22" align="left" bgcolor="#E7E7E7" >
        <asp:TextBox ID="YX_Je" runat="server"   Width="180px"></asp:TextBox>
        /月<span style="color:Red"">*</span>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="YX_Je"
            ErrorMessage="必填项" Display="Dynamic"></asp:RequiredFieldValidator></td>
  </tr>
  <tr>
    <td align="center" bgcolor="#F6F6F6" style="text-align: right; width: 85px;">&nbsp;易家优先级：</td>
    <td height="22" align="left" bgcolor="#F6F6F6" style="width: 400px">
        <asp:TextBox ID="Text_sx" runat="server" Width="180px"></asp:TextBox><span style="color: #ff0000">*</span>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="Text_sx"
            Display="Dynamic" ErrorMessage="必填项"></asp:RequiredFieldValidator>易家优先级为整数（1，2，3....）</td>
  </tr>
    <tr>
    <td align="center" bgcolor="#E7E7E7" style="text-align: left; width: 85px;">
        发布物品数量：</td>
    <td height="22" align="left" bgcolor="#E7E7E7" >
        <asp:TextBox ID="Text_num" runat="server"   Width="180px"></asp:TextBox>
        个<span style="color:Red"">*</span>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="Text_num"
            ErrorMessage="必填项" Display="Dynamic"></asp:RequiredFieldValidator></td>
  </tr>
  <tr>
    <td align="center" bgcolor="#F6F6F6" style="width: 85px">&nbsp;</td>
    <td height="22" bgcolor="#F6F6F6" style="width: 268px; text-align: left;">
        <asp:Button ID="But_add" runat="server" Text="添　　加" onmousemove=showBtnOver(this) onmouseout=showBtnOut(this)  CssClass="submitMiniGreen" OnClick="But_add_Click"/>&nbsp;</td>
  </tr>
</table>
        </asp:Panel>
    <asp:Panel ID="P1" HorizontalAlign="Center" runat="server" Width="100%">
        
  <table  cellpadding="4" cellspacing="1" border="0" width=100%  class="toptable grid">
         <tr>
          <td height="25"class="category t2" width=100>
              易家等级分类</td>
          <td class="category" align=left><a href="?falg=mager">[易家等级管理]</a> <a href="?falg=add">[添加易家等级]</a> <a href="?falg=check">[易家等级审核]</a>
           </td>
        </tr>
 </table>
            <table  cellpadding="4" cellspacing="1" border="0" width=100%  class="toptable grid">
                <tr>
                    <td align="center" bgcolor="#F6F6F6" style="text-align: right; width: 87px;">
                        易家等级名称：</td>
                    <td height="25" bgcolor="#F6F6F6"  align="left">
                        <asp:TextBox ID="Text_dls" runat="server" Width="196px"></asp:TextBox><span style="color:Red"">*</span>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3"  runat="server" ControlToValidate="Text_dls"
                            ErrorMessage="必填项"></asp:RequiredFieldValidator></td>
                </tr>
                <tr style="color: #000000">
                    <td align="center" bgcolor="#E7E7E7" style="text-align: right; width: 87px;">
                        <span style="background-color: #e7e7e7">易家等级金额：</span></td>
                    <td height="25" bgcolor="#E7E7E7"  align="left">
                        <asp:TextBox ID="Text_Jes" runat="server"  Width="194px"></asp:TextBox>/月<span style="color:Red"">*</span>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="Text_Jes"
                            Display="Dynamic" ErrorMessage="必填项"></asp:RequiredFieldValidator></td>
                </tr>
                <tr>
                    <td align="center" bgcolor="#F6F6F6" style="height: 27px; width: 87px; text-align: right;">&nbsp;易家优先级：</td>
                    <td bgcolor="#F6F6F6" style="width: 400px; height: 27px;" align="left">
                        <asp:TextBox ID="Text_sxs" runat="server" Width="180px"></asp:TextBox><span style="color: #ff0000">*</span>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="Text_sxs"
                            Display="Dynamic" ErrorMessage="必填项"></asp:RequiredFieldValidator>易家优先级为整数（1，2，3....）</td>
                </tr>
                    <tr>
    <td align="center" bgcolor="#E7E7E7" style="text-align: left; width: 85px;">
        发布物品数量：</td>
    <td height="22" align="left" bgcolor="#E7E7E7" >
        <asp:TextBox ID="Text_nums" runat="server"   Width="180px"></asp:TextBox>
        个<span style="color:Red"">*</span>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="Text_nums"
            ErrorMessage="必填项" Display="Dynamic"></asp:RequiredFieldValidator></td>
  </tr>
                <tr>
                    <td align="center" bgcolor="#F6F6F6" style="width: 87px">&nbsp;
                        </td>
                    <td height="25" bgcolor="#F6F6F6" style="width: 268px; text-align: left;">
                        <asp:Button ID="But_edit" runat="server" Text="修　　改" onmousemove=showBtnOver(this) onmouseout=showBtnOut(this)  CssClass="submitMiniGreen" OnClick="But_edit_Click" />&nbsp;
                        <asp:Button ID="Button3" runat="server" Text="返　　回" onmousemove=showBtnOver(this) onmouseout=showBtnOut(this)  CssClass="submitMiniGreen" OnClientClick="history.back()" /></td>
                </tr>
            </table>
          
        </asp:Panel>
	<asp:Panel ID="P3" runat="server" width="100%">
	  <table  cellpadding="4" cellspacing="1" border="0" width=100%  class="toptable grid">
         <tr>
          <td height="25"class="category t2" width=100>
              易家等级分类</td>
          <td class="category" align=left><a href="?falg=mager">[易家等级管理]</a> <a href="?falg=add">[添加易家等级]</a> <a href="?falg=check">[易家等级审核]</a>
           </td>
        </tr>
 </table>
          <table width="100%" border="0" cellpadding="2" cellspacing="2">
    <tr>
        <td align="left" colspan="2" style="height: 20px; text-align: right">
        <asp:DataGrid ID="dg1" AutoGenerateColumns="False" PageSize="20"  runat="server" CellPadding="0" CellSpacing="0"  Width="100%" AllowPaging="True" > <HeaderStyle  CssClass="topbg" Height="25px"  HorizontalAlign="Center" />
                 <ItemStyle BackColor="#F6F6F6" Height="25px" HorizontalAlign="Center" />
                   <Columns>
               <asp:TemplateColumn HeaderText="选择">
                <ItemTemplate >
				
				 <input id="yx_id" name="yx_id" type="checkbox" style="border:0 " value="<%#Eval("yx_id") %>" />
				
                </ItemTemplate>
                      <HeaderStyle CssClass="B" />
             </asp:TemplateColumn>
              <asp:TemplateColumn HeaderText="I  D">
                <ItemTemplate >
				<%#Eval("yx_id")%>
                </ItemTemplate>
                      <HeaderStyle CssClass="B" />
             </asp:TemplateColumn>
			      <asp:TemplateColumn HeaderText="易家等级名称">
                <ItemTemplate >
				<%#Eval("yx_name")%>			
                </ItemTemplate>
                      <HeaderStyle CssClass="B" />
             </asp:TemplateColumn>	 
             	<asp:TemplateColumn HeaderText="金额">
                <ItemTemplate >
				<%#Eval("yx_money")%>			
                </ItemTemplate>
                      <HeaderStyle CssClass="B" />
             </asp:TemplateColumn>	
             <asp:TemplateColumn HeaderText="优先级">
                <ItemTemplate >
				<%#Eval("YX_Ordinal")%>			
                </ItemTemplate>
                      <HeaderStyle CssClass="B" />
             </asp:TemplateColumn>	
              <asp:TemplateColumn HeaderText="数量">
                <ItemTemplate >
				<%#Eval("YX_Num")%>			
                </ItemTemplate>
                      <HeaderStyle CssClass="B" />
             </asp:TemplateColumn>
             	 <asp:TemplateColumn HeaderText="操作">
                <ItemTemplate >
				<a href="?falg=edit&YX_MID=<%#Eval("yx_id")%>&names=<%#Eval("yx_name") %>&moneys=<%#Eval("yx_money") %>&xuehao=<%#Eval("YX_Ordinal") %>&num=<%#Eval("yx_num")%>"><img src="../../Skin/skin5/IMAGES/icon_edit.gif" alt="编辑" style="border:0" /></a>		
		<a href="?falg=del&YX_MID=<%#Eval("yx_id")%>"><img src="../../Skin/skin5/IMAGES/no.gif" alt="删除" style="border:0"  onclick="return del();"/></a>		
                </ItemTemplate>
                      <HeaderStyle CssClass="B" />
             </asp:TemplateColumn>	            
            </Columns>
    <PagerStyle Visible="False" />        
      </asp:DataGrid> 
                    <table border="0" cellpadding="0" cellspacing="0" style="width: 100%; height: 1px;">
            <tr>
                <td align="center" bgcolor="#e7e7e7" style=" width:auto; color: #000000; height: 22px; text-align: right;">
                    <asp:Label ID="Label1" runat="server" Height="22px" Width="17px"></asp:Label>
                    <asp:Label ID="Label2" runat="server" Height="20px" Width="32px"></asp:Label>
                   <asp:HyperLink ID="start" runat="server" ForeColor="Black">首页</asp:HyperLink>
                    <asp:HyperLink ID="prev" runat="server" ForeColor="Black">上一条</asp:HyperLink>
                      <asp:HyperLink ID="next" runat="server" ForeColor="Black">下一条</asp:HyperLink>
                      <asp:HyperLink ID="max" runat="server" ForeColor="Black">尾页</asp:HyperLink>
                    <asp:HyperLink ID="HyperLink1" runat="server" ForeColor="Black">跳转 </asp:HyperLink>
                    <asp:DropDownList ID="iPage" runat="server" AutoPostBack="True" OnSelectedIndexChanged="sic">
              </asp:DropDownList>
             
                    <input id="chkall" type="checkbox" onClick="CheckAll(this.form)" style="border:0 " />全选
               
                    <asp:Button ID="But_del" runat="server" Text="批量删除"  onmousemove=showBtnOver(this) onmouseout=showBtnOut(this)  CssClass="submitMiniGreen" OnClick="But_del_Click"/></td>
            </tr>
        </table>
        </td>
    </tr>
          </table>
	        </asp:Panel>
        <asp:Panel ID="P4" runat="server" width="100%">
	  <table  cellpadding="4" cellspacing="1" border="0" width=100%  class="toptable grid">
         <tr>
          <td height="25"class="category t2" width=100>
              易家等级分类</td>
          <td class="category" align=left><a href="?falg=mager">[易家等级管理]</a> <a href="?falg=add">[添加易家等级]</a> <a href="?falg=check">[易家等级审核]</a>
           </td>
        </tr>
          <tr>
              <td align="left" colspan="2" style="text-align: right">
                 <a href="?falg=check&Stat=ato">[自助]</a> <a href="?falg=check&Stat=cal">[申请]</a>  <a href="?falg=check&Stat=load">[已审核]</a> <a href="?falg=check&Stat=unload">[未审核]</a> <a href="?falg=check&Stat=old">[过期处理]</a>
              </td>
        </tr>
 </table>
          <table width="100%" border="0" cellpadding="2" cellspacing="2">
    <tr>
        <td align="left" colspan="2" style="height: 20px; text-align: right">
        <asp:DataGrid ID="dg2" AutoGenerateColumns="False" PageSize="20"  runat="server" CellPadding="0" CellSpacing="0"  Width="100%" AllowPaging="True" > <HeaderStyle  CssClass="topbg" Height="25px"  HorizontalAlign="Center" />
                 <ItemStyle BackColor="#F6F6F6" Height="25px" HorizontalAlign="Center" />
                   <Columns>
               <asp:TemplateColumn HeaderText="选   择">
                <ItemTemplate >
				
				 <input id="YX_CH" name="YX_CH" type="checkbox" style="border:0 " value="<%# DataBinder.Eval(Container.DataItem,"YX_ShopID") %>"  />
				
                </ItemTemplate>
                      <HeaderStyle CssClass="B" />
             </asp:TemplateColumn>
              <asp:TemplateColumn HeaderText="I  D">
                <ItemTemplate >
			<%# DataBinder.Eval(Container.DataItem,"YX_ShopID") %>
				
                </ItemTemplate>
                      <HeaderStyle CssClass="B" />
             </asp:TemplateColumn>
			      <asp:TemplateColumn HeaderText="帐号">
                <ItemTemplate >
		    <%# DataBinder.Eval(Container.DataItem, "yx_shopuser")%>
				
                </ItemTemplate>
                      <HeaderStyle CssClass="B" />
             </asp:TemplateColumn>
             <asp:TemplateColumn HeaderText="易家名称">
                <ItemTemplate >	
			<%# DataBinder.Eval(Container.DataItem,"YX_ShopName") %>
				                </ItemTemplate>
                  <HeaderStyle CssClass="B" />
             </asp:TemplateColumn>
			 <asp:TemplateColumn HeaderText="易家等级">
                <ItemTemplate >
			<%#Set_DJ(Convert.ToInt32( DataBinder.Eval(Container.DataItem, "yx_shopdj")))%>
                </ItemTemplate>
                  <HeaderStyle CssClass="B" />
             </asp:TemplateColumn>
             <asp:TemplateColumn HeaderText="发布数量">
                <ItemTemplate >
			<%#Set_SL(Convert.ToInt32( DataBinder.Eval(Container.DataItem, "yx_shopdj")))%>
                </ItemTemplate>
                  <HeaderStyle CssClass="B" />
             </asp:TemplateColumn>
          <asp:TemplateColumn HeaderText="状态">
                <ItemTemplate >
			<%#Set_ZT(Convert.ToInt32(DataBinder.Eval(Container.DataItem, "yx_shopdjstart")))%>
                </ItemTemplate>
                  <HeaderStyle CssClass="B" />
             </asp:TemplateColumn>
              <asp:TemplateColumn HeaderText="易家期限">
                <ItemTemplate >
			<%# DataBinder.Eval(Container.DataItem, "yx_endtime")%>
                </ItemTemplate>
                  <HeaderStyle CssClass="B" />
             </asp:TemplateColumn>
             <asp:TemplateColumn HeaderText="付费模式">
                <ItemTemplate >
			<%#Set_MS(Convert.ToInt32( DataBinder.Eval(Container.DataItem, "yx_shopms")))%>
                </ItemTemplate>
                  <HeaderStyle CssClass="B" />
             </asp:TemplateColumn>
             <asp:TemplateColumn HeaderText="操　　作">
                <ItemTemplate >					
				<a href="?falg=start&YX_MID=<%#Eval("YX_shopuserID") %>&djstart=<%#Eval("yx_shopdjstart") %>&dj=<%#Eval("yx_shopdj") %>"><img src="../../Skin/skin5/IMAGES/icon_edit.gif" alt="审核" style="border:0" /></a>
                </ItemTemplate>
                  <HeaderStyle CssClass="B" />
             </asp:TemplateColumn>			 
            </Columns>
    <PagerStyle Visible="False" />        
      </asp:DataGrid> 
                    <table border="0" cellpadding="0" cellspacing="0" style="width: 100%; height: 1px;">
            <tr>
                <td align="center" bgcolor="#e7e7e7" style=" width:auto; color: #000000; height: 22px; text-align: right;">
                    <asp:Label ID="Label3" runat="server" Height="22px" Width="17px"></asp:Label>
                    <asp:Label ID="Label4" runat="server" Height="20px" Width="32px"></asp:Label>
                   <asp:HyperLink ID="starts" runat="server" ForeColor="Black">首页</asp:HyperLink>
                    <asp:HyperLink ID="prevs" runat="server" ForeColor="Black">上一条</asp:HyperLink>
                      <asp:HyperLink ID="nexts" runat="server" ForeColor="Black">下一条</asp:HyperLink>
                      <asp:HyperLink ID="maxs" runat="server" ForeColor="Black">尾页</asp:HyperLink>
                    <asp:HyperLink ID="HyperLink2" runat="server" ForeColor="Black">跳转 </asp:HyperLink>
                    <asp:DropDownList ID="iPages" runat="server" AutoPostBack="True" OnSelectedIndexChanged="sics">
              </asp:DropDownList>
             
                    <input id="chkall" type="checkbox" onClick="CheckAll(this.form)" style="border:0 " />全选<asp:DropDownList ID="DropD_type" runat="server" OnSelectedIndexChanged="sics">
                        <asp:ListItem Selected="True" Value="0">批量审核</asp:ListItem>
                        <asp:ListItem Value="1">批量续费</asp:ListItem>
                        <asp:ListItem Value="2">过期处理</asp:ListItem>
                    </asp:DropDownList>
               
                    <asp:Button ID="But_check" runat="server" Text="批量处理"  onmousemove=showBtnOver(this) onmouseout=showBtnOut(this)  CssClass="submitMiniGreen" OnClick="But_check_Click"/></td>
            </tr>
        </table>
        </td>
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
</table>
        <ChangHope:Admin_Btm ID="cha" runat="server" />
</body>
</html>