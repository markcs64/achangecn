<%@ page language="C#" autoeventwireup="true" inherits="Admin_YX_shop_YX_Consume, App_Web_hzrmr9fw" %>
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
   if(!confirm( "你确实要清除保障金吗? ")) 
   return false; 
 }
 
 function selectshop(){
    var keyword=<%=urltran("document.getElementById('keyword').value")%>;
    var searchtype=document.getElementById('searchtype').value;
    var flag=document.getElementById('flag').value;
    document.getElementById("form1").action="?falg="+flag+"&keyword="+keyword+"&searchtype="+searchtype;
    document.form1.submit();
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
    <asp:Panel ID="P1" HorizontalAlign="Center" runat="server" Width="100%">
        
  <table  cellpadding="4" cellspacing="1" border="0" width=100%  class="toptable grid">
         <tr>
          <td height="25"class="category t2" width=100>
              消费者保障计划</td>
          <td class="category" align=left><a href="?falg=mager">[类别保证管理]</a> <a href="?falg=shop">[参与保障计划店铺]</a>
           </td>
        </tr>
 </table>
 <table width="100%" height="25" border="0" cellpadding="2" cellspacing="2">
            <tr>
            <td height="25" class="category t2" width=100>搜索</td>
              <td class="category" > 
                关键字:<input type=text name=keyword id=keyword/>
                查询类别<select name=searchtype><option value=1 selected>ID号</option><option value=2>类别名称</option></select>
                <input type=button value=查询 onclick='selectshop()' onmousemove=showBtnOver(this) onmouseout=showBtnOut(this) Class="submitMiniGreen" >               </td>  
            </tr>
          </table>
            <table  cellpadding="4" cellspacing="1" border="0" width=100%  class="toptable grid">
                <tr>
                    <td align="center" bgcolor="#F6F6F6" style="text-align: right; width: 87px;">
                        类别名称：</td>
                    <td height="25" bgcolor="#F6F6F6"  align="left">
                        <asp:TextBox ID="Text_name" runat="server" Width="332px" ReadOnly="True"></asp:TextBox><span style="color:Red"">*</span>
                        <asp:Label ID="Label5" runat="server" Visible="False"></asp:Label></td>
                </tr>
                <tr style="color: #000000">
                    <td align="center" bgcolor="#E7E7E7" style="text-align: right; width: 87px;">
                        <span style="background-color: #e7e7e7">保证金额：</span></td>
                    <td height="25" bgcolor="#E7E7E7"  align="left">
                        <asp:TextBox ID="Text_moeny" runat="server"  Width="194px"></asp:TextBox><span style="color:Red"">*</span>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="Text_moeny"
                            Display="Dynamic" ErrorMessage="必填项"></asp:RequiredFieldValidator></td>
                </tr>
                <tr>
                    <td align="center" bgcolor="#F6F6F6" style="width: 87px">&nbsp;
                        </td>
                    <td height="25" bgcolor="#F6F6F6" style="width: 268px; text-align: left;">
                        <asp:Button ID="But_edit" runat="server" Text="修　　改" onmousemove=showBtnOver(this) onmouseout=showBtnOut(this)  CssClass="submitMiniGreen" OnClick="But_edit_Click"/>&nbsp;
                        <asp:Button ID="Button3" runat="server" Text="返　　回" onmousemove=showBtnOver(this) onmouseout=showBtnOut(this)  CssClass="submitMiniGreen" OnClientClick="history.back()" /></td>
                </tr>
            </table>
          
        </asp:Panel>
	<asp:Panel ID="P2" runat="server" width="100%">
	  <table  cellpadding="4" cellspacing="1" border="0" width=100%  class="toptable grid">
         <tr>
          <td height="25"class="category t2" width=100>
              消费者保障计划</td>
          <td class="category" align=left><a href="?falg=mager">[类别保证管理]</a> <a href="?falg=shop">[参与保障计划店铺]</a>
           </td>
        </tr>
 </table>
 <table width="100%" height="25" border="0" cellpadding="2" cellspacing="2">
            <tr>
            <td height="25" class="category t2" width=100>搜索</td>
              <td class="category" > 
                关键字:<input type=text name=keyword id=Text1/>
                查询类别<select name=searchtype><option value=1 selected>ID号</option><option value=2>类别名称</option></select>
                <input type="hidden" name="flag" value="mager" />
                <input type=button value=查询 onclick='selectshop()' onmousemove=showBtnOver(this) onmouseout=showBtnOut(this) Class="submitMiniGreen" >               </td>  
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
				<%# DataBinder.Eval(Container.DataItem, "yx_id")%>
                </ItemTemplate>
                      <HeaderStyle CssClass="B" />
             </asp:TemplateColumn>
			      <asp:TemplateColumn HeaderText="类别名称">
                <ItemTemplate >
				<%# DataBinder.Eval(Container.DataItem, "yx_classname")%>			
                </ItemTemplate>
                      <HeaderStyle CssClass="B" />
             </asp:TemplateColumn>	 
             	<asp:TemplateColumn HeaderText="保障金额">
                <ItemTemplate >
			<%# DataBinder.Eval(Container.DataItem, "yx_money")%>			
                </ItemTemplate>
                      <HeaderStyle CssClass="B" />
             </asp:TemplateColumn>	
             	 <asp:TemplateColumn HeaderText="操作">
                <ItemTemplate >
				<a href="?falg=edit&YX_MID=<%# DataBinder.Eval(Container.DataItem,"yx_id") %>&names=<%#Eval("yx_classname") %>&moneys=<%#Convert.ToDouble( Eval("yx_money")).ToString("0.00") %>"><img src="../../Skin/skin5/IMAGES/icon_edit.gif" alt="编辑保障金" style="border:0" /></a>		
		<a href="?falg=cle&YX_MID=<%# DataBinder.Eval(Container.DataItem,"yx_id") %>"><img src="../../Skin/skin5/IMAGES/no.gif" alt="清除保障金" style="border:0"  onclick="return del();"/></a>		
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
               
                    <asp:Button ID="But_del" runat="server" Text="批量清除保证金"  onmousemove=showBtnOver(this) onmouseout=showBtnOut(this)  CssClass="submitMiniGreen" OnClick="But_del_Click"/></td>
            </tr>
        </table>
        </td>
    </tr>
          </table>
	        </asp:Panel>
	    <asp:Panel ID="P3" runat="server" width="100%">
	  <table  cellpadding="4" cellspacing="1" border="0" width=100%  class="toptable grid">
         <tr>
          <td height="25"class="category t2" width=100>
              消费者保障计划</td>
          <td class="category" align=left><a href="?falg=mager">[类别保证管理]</a> <a href="?falg=shop">[参与保障计划店铺]</a>
           </td>
        </tr>
          <tr>
              <td align="left" colspan="2" style="text-align: right">
                  <a href="?falg=shop&Stat=stop">[已终止]</a> <a href="?falg=shop&Stat=check">[已审核]</a> <a href="?falg=shop&Stat=uncheck">[未审核]</a>
              </td>
        </tr>
 </table>
 <table width="100%" height="25" border="0" cellpadding="2" cellspacing="2">
            <tr>
            <td height="25" class="category t2" width=100>搜索</td>
              <td class="category" > 
                关键字:<input type=text name="keyword" id=Text2/>
                查询类别<select name="searchtype">
                <option value="1" selected>ID号</option>
                <option value="2">账号</option>
                <option value="3">店铺名称</option>
                <option value="4">店铺状态</option>
                <option value="5">保障类别</option>
                </select>
                <input type="hidden" name="flag" value="shop" />
                <input type=button value=查询 onclick='selectshop()' onmousemove=showBtnOver(this) onmouseout=showBtnOut(this) Class="submitMiniGreen" >               </td>  
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
				
				 <input id="YX_CH" name="YX_CH" type="checkbox" style="border:0 " value="<%#Eval("YX_ShopID") %>"  />
				
                </ItemTemplate>
                      <HeaderStyle CssClass="B" />
             </asp:TemplateColumn>
              <asp:TemplateColumn HeaderText="I  D">
                <ItemTemplate >
			<%#Eval("YX_ShopID") %>
				
                </ItemTemplate>
                      <HeaderStyle CssClass="B" />
             </asp:TemplateColumn>
			      <asp:TemplateColumn HeaderText="帐号">
                <ItemTemplate >
		    <%#Eval("yx_shopuser")%>
                </ItemTemplate>
                      <HeaderStyle CssClass="B" />
             </asp:TemplateColumn>
             <asp:TemplateColumn HeaderText="店铺名称">
                <ItemTemplate >	
			<%# Eval("YX_SHOPName")%>
				                </ItemTemplate>
                  <HeaderStyle CssClass="B" />
             </asp:TemplateColumn>
             <asp:TemplateColumn HeaderText="店铺状态">
                <ItemTemplate >
		<a href="?falg=Tag&YX_MID=<%#Eval("YX_ShopID") %>&ShopFlag=<%#Eval("YX_ShopFlag")%>"><%# Ret_stat(Convert.ToInt16(Eval("YX_ShopFlag")), "开启")%></a>
                </ItemTemplate>
                  <HeaderStyle CssClass="B" />
             </asp:TemplateColumn>
			 <asp:TemplateColumn HeaderText="保障类别">
                <ItemTemplate >
			<%#Set_ClassName(Convert.ToInt32(DataBinder.Eval(Container.DataItem, "YX_SHOPClass")))%>
                </ItemTemplate>
                  <HeaderStyle CssClass="B" />
             </asp:TemplateColumn>
          <asp:TemplateColumn HeaderText="保障金">
                <ItemTemplate >
			<%#Set_Money(Convert.ToInt32(DataBinder.Eval(Container.DataItem, "YX_SHOPClass")))%>
                </ItemTemplate>
                  <HeaderStyle CssClass="B" />
             </asp:TemplateColumn>
          <asp:TemplateColumn HeaderText="保障状态">
                <ItemTemplate >
			<%# Set_ZT(Convert.ToInt32(DataBinder.Eval(Container.DataItem, "yx_GuaStart")))%>
                </ItemTemplate>
                  <HeaderStyle CssClass="B" />
             </asp:TemplateColumn>
              <asp:TemplateColumn HeaderText="终止时间">
                <ItemTemplate >
			<%#Eval("yx_GuaTime")%>
                </ItemTemplate>
                  <HeaderStyle CssClass="B" />
             </asp:TemplateColumn>
             <asp:TemplateColumn HeaderText="操　　作">
                <ItemTemplate >					
				<a href="?falg=start&YX_MID=<%#Eval("yx_shopid") %>"><img src="../../Skin/skin5/IMAGES/icon_edit.gif" alt="审核" style="border:0" /></a>
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
             
                    <input id="Checkbox1" type="checkbox" onClick="CheckAll(this.form)" style="border:0 " />全选
               
                    <asp:Button ID="But_check" runat="server" Text="批量审核"  onmousemove=showBtnOver(this) onmouseout=showBtnOut(this)  CssClass="submitMiniGreen" OnClick="But_check_Click" /></td>
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