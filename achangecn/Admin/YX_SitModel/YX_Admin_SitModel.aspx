<%@ page language="C#" autoeventwireup="true" inherits="Admin_YX_SitModel_YX_Admin_SitModel, App_Web_c8yzgfca" %>
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
          <td height="25" class="category t2" width=100>模板管理</td>
         <td class="category">
             <asp:HyperLink ID="HyperLink1" NavigateUrl="YX_Admin_SitModel.aspx" runat="server">[模板管理]</asp:HyperLink>
             <asp:HyperLink ID="HyperLink2" NavigateUrl="YX_Admin_SitModel.aspx?YX_FS=Add" runat="server">[添加模版]</asp:HyperLink>
           </td>
        </tr>
 </table>   
    <asp:Panel ID="Panel1" runat="server" Width="100%">
    <table width="100%" height="25" border="0" cellpadding="2" cellspacing="2" >
            <tr>
            <td height="25" class="category" width=100>搜索</td>
            <td align="right" class="style3" style="width:100px">&nbsp;&nbsp;&nbsp;关键字：</td>
                <td align="left" class="style3" style="width:100px"><asp:TextBox ID="sj" runat="server" /></td>
              <td align="right" class="style3" style="width:100px">&nbsp;&nbsp;&nbsp;查询类别：</td>
                <td align="left" class="style3" style="width:100px">
                <select name="sclass" id="sclass" runat="server">
                <option value="1">模板ID</option>
                <option value="2">模板名称</option>
                <option value="3">模板说明</option>
                </select>
                </td>                 
                 <td align="left" class="style3">
                    <asp:Button ID="Button4" runat="server" Text="查　询" onmousemove=showBtnOver(this) onmouseout=showBtnOut(this)  CssClass="submitMiniGreen" OnClick="Button4_Click" />         
                      </td>        
                
                
            </tr>
          </table>
		  <table width="100%" border="0" cellspacing="0" cellpadding="0" align="center">
  <tr>
    <td width="100%">
	<asp:DataGrid ID="dg1" AutoGenerateColumns="False" PageSize="100" CellPadding="1" CellSpacing="1" border=0  runat="server"  Width="100%" AllowPaging="True" OnItemDataBound="dg1_ItemDataBound" >
                   <HeaderStyle Height="25px"  CssClass="topbg" HorizontalAlign="Center" />
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
				<%# Eval("YX_ID") %>
                </ItemTemplate>
                      <HeaderStyle CssClass="B" />
             </asp:TemplateColumn>
			      <asp:TemplateColumn HeaderText="模版类型">
                <ItemTemplate>
				<%# Eval("YX_CMSType")%>
                </ItemTemplate>
                      <HeaderStyle CssClass="B" />
             </asp:TemplateColumn>
            
			  <asp:TemplateColumn HeaderText="模版名称">
                <ItemTemplate >	
	　　　　　<a href="?YX_FS=Edit&YX_ID=<%# Eval("YX_ID") %>"><%# Eval("YX_CMSModelName")%></a>
		       </ItemTemplate>
                  <HeaderStyle CssClass="B" />
             </asp:TemplateColumn>	 
              <asp:TemplateColumn HeaderText="模版说明">
                <ItemTemplate >	
	　　　　　　<%# Eval("YX_CMSSM")%>
		       </ItemTemplate>
                  <HeaderStyle CssClass="B" />
                  <ItemStyle Width="200px" />
             </asp:TemplateColumn>	 
             
              <asp:TemplateColumn HeaderText="操作">
                <ItemTemplate ><a href="?YX_FS=Edit&YX_ID=<%# Eval("YX_ID") %>"><img src="../../Skin/skin5/IMAGES/icon_edit.gif" style="border:0" alt="编辑" /></a>
				 <a href="?YX_FS=Del&YX_CH=<%# Eval("YX_ID") %>"><img src="../../Skin/skin5/IMAGES/no.gif" style="border:0" alt="删除" /></a>
		       </ItemTemplate>
                  <HeaderStyle CssClass="B" />
                  <ItemStyle Width="80px" />
             </asp:TemplateColumn>	 
            </Columns>
    <PagerStyle Visible="False" />          
      </asp:DataGrid>
      
      </td>
  </tr>
  <tr>
    <td> <table border="0" cellpadding="0" cellspacing="0" style="width: 100%">
            <tr bgcolor="#E7E7E7">
                
                  
              
  <td align="right" bgcolor="#E7E7E7" >
                    <asp:DropDownList ID="DropDownList1" runat="server">                                   
                       <asp:ListItem Value="2">---批量删除---</asp:ListItem>                  
                    </asp:DropDownList>
                  
               <asp:Button ID="Button2" runat="server" Text="执行操作" OnClientClick="return isExc()" OnClick="Button2_Click"  onmousemove=showBtnOver(this) onmouseout=showBtnOut(this)  CssClass="submitMiniGreen" />
                </td>
            </tr>
        </table></td>
  </tr>
</table>
 </asp:Panel>
        <asp:Panel ID="Panel2" runat="server"  Width="100%">
          <table width="100%" border="0" align="center" cellpadding="1" cellspacing="1" id="TABLE1">
            <tr>
              <td width="20%" align="center" class="topbg B">设置名称</td>
              <td height="25" align="left"  class="topbg B"style="width: 651px">模版设置</td>
              <td width="10%" align="center" class="topbg B">设置说明</td>
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
                    <asp:ListItem Value="Default">首页</asp:ListItem>
                             <asp:ListItem Value="Productlist_1">物品列表，带分页</asp:ListItem> 
                             <asp:ListItem Value="ShowProduct">物品详细显示页</asp:ListItem>
                             <asp:ListItem Value="Pinglun">物品评论</asp:ListItem>
                             <asp:ListItem Value="HighlevelSearch">物品高级搜索</asp:ListItem>
                             <asp:ListItem Value="Worth">帐户充值</asp:ListItem>
                             <asp:ListItem Value="show_buyproduct">易入物品</asp:ListItem>
                             <asp:ListItem Value="browse_offer">易入专区</asp:ListItem>
                             <asp:ListItem Value="buyproduct_comp">求购物品对比页面</asp:ListItem>
                           <%--  <asp:ListItem Value="HSearchResult">物品高级搜索结果</asp:ListItem>--%>
                             <%--<asp:ListItem Value="ProClass">二级分类显示页面</asp:ListItem>--%>
                            <%-- <asp:ListItem Value="ProClass2">三级分类显示页面</asp:ListItem>--%>
                            <%-- <asp:ListItem Value="LiPin">礼品中心页面</asp:ListItem>--%>
                             <asp:ListItem Value="History_Pro">浏览过物品的列表（分页）</asp:ListItem>
                             <asp:ListItem Value="Product_Comp">物品对比页面</asp:ListItem>
                             <asp:ListItem Value="Show_Help">帮助中心页</asp:ListItem>
                            <%-- <asp:ListItem Value="Yx_Vote">留言页</asp:ListItem>--%>
                             <asp:ListItem Value="VipLogin">会员登陆</asp:ListItem>
                             <asp:ListItem Value="ProClass_list">物品所有分类列表页</asp:ListItem>
                             <asp:ListItem Value="History_Pro">最近物品浏览列表页</asp:ListItem> 
                             <asp:ListItem Value="Basket">物品订购页面</asp:ListItem>
                             <asp:ListItem Value="BasketNext">物品订购下一步页面</asp:ListItem>
                             <asp:ListItem Value="Basket_cj">物品出价页面</asp:ListItem>
                             <asp:ListItem Value="Basket_cjNext">物品出价下一步页面</asp:ListItem>
                             <asp:ListItem Value="Pay_state_info">物品付款页面</asp:ListItem>
                             <asp:ListItem Value="Pay_state_info_next">物品付款下一步页面</asp:ListItem>
                            <%-- <asp:ListItem Value="OrderOk">订单预览</asp:ListItem>--%>
                            <%-- <asp:ListItem Value="OkOrderSave">订单成功页面</asp:ListItem>
                             <asp:ListItem Value="OrderSearch">订单查询页面</asp:ListItem>--%>
                           <%--   <asp:ListItem Value="QueHuo">缺货登记页面</asp:ListItem>--%>
                                <asp:ListItem Value="Map">网站地图页面</asp:ListItem> 
                             <asp:ListItem Value="VipReg">会员注册页面</asp:ListItem>
                              <asp:ListItem Value="VipRegOk">注册成功页面</asp:ListItem>
                                <asp:ListItem Value="Yx_FindPass">会员找回密码第一步</asp:ListItem>  
                                   <asp:ListItem Value="Yx_FindPass2">会员找回密码第二步</asp:ListItem>  
                              <asp:ListItem Value="Managevip_index">会员中心页面</asp:ListItem>
                               <%-- <asp:ListItem Value="Yx_Messages">会员消息中心</asp:ListItem>--%>
                                    <%--<asp:ListItem Value="Yx_VipSend">会员发送消息页面</asp:ListItem>
                                     <asp:ListItem Value="Yx_VipNews">查看会员消息内容页面</asp:ListItem>--%>
                                 <%-- <asp:ListItem Value="Yx_VipOder">会员订单页面</asp:ListItem>--%>
                                 <%--   <asp:ListItem Value="Yx_OderSearch">会员中心订单详细页面</asp:ListItem>--%>
                              <%-- <asp:ListItem Value="Yx_VipCollection">会员物品收藏页面</asp:ListItem>--%>
                              <%--  <asp:ListItem Value="Yx_VipInfo">会员信息页面</asp:ListItem>--%>
                                <%-- <asp:ListItem Value="Yx_ProVipInfo">会员中心收货人信息页面</asp:ListItem>--%>
                              <%--   <asp:ListItem Value="YX_VipJF">会员中心积分页面</asp:ListItem>--%>
                               <%-- <asp:ListItem Value="Yx_ModiPass">会员中心修改密码页面</asp:ListItem>--%>
                                <asp:ListItem Value="Yx_ShopIndex">易家首页</asp:ListItem>
                                 <asp:ListItem Value="showshop">浏览易家</asp:ListItem>
                                  <asp:ListItem Value="infouser">个人资料页面</asp:ListItem>
                                   <asp:ListItem Value="Erro">错误页面</asp:ListItem>
                                    <asp:ListItem Value="YX_ProVotere">物品留言回复页面</asp:ListItem>
                                    <asp:ListItem Value="YX_ShopVotere">易家留言回复页面</asp:ListItem>
<asp:ListItem Value="YX_Hotsell">热点物品</asp:ListItem>
                             </asp:DropDownList>
                      <asp:HiddenField ID="HiddenField1" runat="server" />
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
              <td align="center" bgcolor="#F6F6F6">模　　版：</td>
              <td height="25" align="left" bgcolor="#F6F6F6" style="width: 651px">
              <textarea id="content1" name='content1' cols="80" rows="20" runat="server"   style="height:550px;width:600px;"></textarea>
             
             </td>
              <td bgcolor="#F6F6F6">&nbsp;</td>
            </tr>
         
            <tr>
              <td align="center" bgcolor="#F6F6F6"></td>
              <td height="25" bgcolor="#F6F6F6" align="center" style="width: 651px">&nbsp;<asp:Button ID="Button1" runat="server" Text="提　　交" Width="104px" OnClick="Button1_Click"  onmousemove=showBtnOver(this) onmouseout=showBtnOut(this)  CssClass="submitMiniGreen" /></td>
              <td bgcolor="#F6F6F6">&nbsp;</td>
            </tr>
          </table>
        </asp:Panel>
        
    </div>
        <asp:Panel ID="Panel3" runat="server" width="100%">
                        <table width="100%" border="0" align="center" cellpadding="1" cellspacing="1" id="TABLE2">
            <tr>
              <td width="20%" class="topbg B">设置名称</td>
              <td height="25" class="topbg B" style="width: 697px">模版设置</td>
              <td width="10%" class="topbg B">说明</td>
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
                    <asp:ListItem Value="Default">首页</asp:ListItem>
                             <asp:ListItem Value="Productlist_1">物品列表，带分页</asp:ListItem> 
                             <asp:ListItem Value="ShowProduct">物品详细显示页</asp:ListItem>
                             <asp:ListItem Value="Pinglun">物品评论</asp:ListItem>
                             <asp:ListItem Value="HighlevelSearch">物品高级搜索</asp:ListItem>
                             <asp:ListItem Value="Worth">帐户充值</asp:ListItem>
                                  <asp:ListItem Value="show_buyproduct">易入物品</asp:ListItem>
                                  <asp:ListItem Value="browse_offer">易入专区</asp:ListItem>
                                  <asp:ListItem Value="buyproduct_comp">求购物品对比页面</asp:ListItem>
                           <%--  <asp:ListItem Value="HSearchResult">物品高级搜索结果</asp:ListItem>--%>
                             <%--<asp:ListItem Value="ProClass">二级分类显示页面</asp:ListItem>--%>
                            <%-- <asp:ListItem Value="ProClass2">三级分类显示页面</asp:ListItem>--%>
                            <%-- <asp:ListItem Value="LiPin">礼品中心页面</asp:ListItem>--%>
                             <asp:ListItem Value="History_Pro">浏览过物品的列表（分页）</asp:ListItem>
                             <asp:ListItem Value="Product_Comp">物品对比页面</asp:ListItem>
                             <asp:ListItem Value="Show_Help">帮助中心页</asp:ListItem>
                            <%-- <asp:ListItem Value="Yx_Vote">留言页</asp:ListItem>--%>
                             <asp:ListItem Value="VipLogin">会员登陆</asp:ListItem>
                             <asp:ListItem Value="ProClass_list">物品所有分类列表页</asp:ListItem>
                             <asp:ListItem Value="History_Pro">最近物品浏览列表页</asp:ListItem> 
                             <asp:ListItem Value="Basket">物品订购页面</asp:ListItem>
                             <asp:ListItem Value="BasketNext">物品订购下一步页面</asp:ListItem>
                             <asp:ListItem Value="Basket_cj">物品出价页面</asp:ListItem>
                             <asp:ListItem Value="Basket_cjNext">物品出价下一步页面</asp:ListItem>
                             <asp:ListItem Value="Pay_state_info">物品付款页面</asp:ListItem>
                             <asp:ListItem Value="Pay_state_info_next">物品付款下一步页面</asp:ListItem>
                            <%-- <asp:ListItem Value="OrderOk">订单预览</asp:ListItem>--%>
                            <%-- <asp:ListItem Value="OkOrderSave">订单成功页面</asp:ListItem>
                             <asp:ListItem Value="OrderSearch">订单查询页面</asp:ListItem>--%>
                           <%--   <asp:ListItem Value="QueHuo">缺货登记页面</asp:ListItem>--%>
                                <asp:ListItem Value="Map">网站地图页面</asp:ListItem> 
                             <asp:ListItem Value="VipReg">会员注册页面</asp:ListItem>
                              <asp:ListItem Value="VipRegOk">注册成功页面</asp:ListItem>
                                <asp:ListItem Value="Yx_FindPass">会员找回密码第一步</asp:ListItem>  
                                   <asp:ListItem Value="Yx_FindPass2">会员找回密码第二步</asp:ListItem>  
                              <asp:ListItem Value="Managevip_index">会员中心页面</asp:ListItem>
                               <%-- <asp:ListItem Value="Yx_Messages">会员消息中心</asp:ListItem>--%>
                                    <%--<asp:ListItem Value="Yx_VipSend">会员发送消息页面</asp:ListItem>
                                     <asp:ListItem Value="Yx_VipNews">查看会员消息内容页面</asp:ListItem>--%>
                                 <%-- <asp:ListItem Value="Yx_VipOder">会员订单页面</asp:ListItem>--%>
                                 <%--   <asp:ListItem Value="Yx_OderSearch">会员中心订单详细页面</asp:ListItem>--%>
                              <%-- <asp:ListItem Value="Yx_VipCollection">会员物品收藏页面</asp:ListItem>--%>
                              <%--  <asp:ListItem Value="Yx_VipInfo">会员信息页面</asp:ListItem>--%>
                                <%-- <asp:ListItem Value="Yx_ProVipInfo">会员中心收货人信息页面</asp:ListItem>--%>
                              <%--   <asp:ListItem Value="YX_VipJF">会员中心积分页面</asp:ListItem>--%>
                               <%-- <asp:ListItem Value="Yx_ModiPass">会员中心修改密码页面</asp:ListItem>--%>
                                <asp:ListItem Value="Yx_ShopIndex">易家首页</asp:ListItem>
                                 <asp:ListItem Value="showshop">浏览易家</asp:ListItem>
                                  <asp:ListItem Value="infouser">个人资料页面</asp:ListItem>
                                   <asp:ListItem Value="Erro">错误页面</asp:ListItem>
                                    <asp:ListItem Value="YX_ProVotere">物品留言回复页面</asp:ListItem>
                                    <asp:ListItem Value="YX_ShopVotere">易家留言回复页面</asp:ListItem>
<asp:ListItem Value="YX_Hotsell">热点物品</asp:ListItem>
                             </asp:DropDownList>
                 </td>
              <td bgcolor="#F6F6F6">&nbsp;</td>
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
            
                  <asp:TextBox ID="TextBox4" runat="server" BackColor="Window" BorderColor="Green" Height="547px" TextMode="MultiLine" Width="600px" Font-Size="14px" Font-Names="宋体"></asp:TextBox>
             </td>
              <td bgcolor="#F6F6F6">&nbsp;</td>
            </tr>
         
            <tr>
              <td align="center" bgcolor="#F6F6F6"></td>
              <td height="25" bgcolor="#F6F6F6" align="center" style="width: 697px">&nbsp;<asp:Button ID="Button3" runat="server" Text="提　　交" Width="104px" OnClick="Button3_Click"   onmousemove=showBtnOver(this) onmouseout=showBtnOut(this)  CssClass="submitMiniGreen" /></td>
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
<Chp:ChangHope_btm ID="chp1" runat="server" />
</body>
</html>
