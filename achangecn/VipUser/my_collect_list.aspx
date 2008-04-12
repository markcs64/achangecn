﻿<%@ page language="C#" autoeventwireup="true" inherits="VipUser_my_collect_list, App_Web_xyjt5bop" %>

<%@ Register Assembly="Standny.WebControls" Namespace="Standny.WebControls" TagPrefix="Standny" %>
<%@ Register Src="Top_vip.ascx" TagName="Top_vip" TagPrefix="uc" %>
<%@ Register Src="Foot_vip.ascx" TagName="Foot_vip" TagPrefix="uc" %>
<%@ Register Src="Left_vip.ascx" TagName="Left_vip" TagPrefix="uc" %>
  

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
      <title>我的收藏-会员管理中心-<%=SetUrl() %></title>
    <style type="text/css">
    #buyLink20 {
	background-color: #FEFAD8;
	color:#ffffff;
}
</style>
<script language="javascript" type="text/javascript" src="../include/JScript.js"></script>
<script language="javascript" type="text/javascript">
function iorderid(){
var tit=document.getElementById("sTitle");
var iDepotType=document.getElementById("iDepotType");
document.getElementById("formsp").action="?iDepotType="+iDepotType.value+"&sTitle="+escape(tit.value);
document.formsp.submit();
}
</script>
</head>

<body> 
<uc:Top_vip ID="top_vip1" runat="server" />
    <form id="formsp" name="formsp" runat="server">
   
    
<table class=user_table align=center>
  <tr>
    <td id=myLeft valign=top>
	<uc:Left_vip ID="left_vip2" runat=server />
	</td>
	 <TD width=5>&nbsp;</TD>
<TD vAlign=top>
	   <table width="100%" border="0" cellpadding="0" cellspacing="0" id="menu">
  <tr>
    <td width="140"  id=top1><a ID="LinkButton3" class="toptitlehover" href="my_collect_list.aspx?iDepotType=1">我收藏的物品</a></td>
    <td width="3"></td>
    <td width="140"  id=top2><a ID="LinkButton4" class="toptitle" href="my_collect_list.aspx?iDepotType=2">我收藏的店铺</a></td>
    <td >&nbsp;</td>
  </tr>
</table> 
      <DIV class="tdSide tdMain lineRight desc" style="text-align:right">
        <INPUT id=sTitle type=text name=sTitle>
        <input type=hidden name="iDepotType" value=<%=Request["iDepotType"]%>>
        <input type="button"  value=" 查 询 " onclick="iorderid()">
      </DIV>
      <br>
     <asp:Panel ID="p1" Visible="false" runat="server"> 
      <asp:DataGrid ID="dg1"  BorderStyle="dashed"  runat="server" CellPadding="0" CellSpacing="0"  Width="100%"  AutoGenerateColumns="false"  >
                   <HeaderStyle Height="25px" BackColor="#F4F4F4"  HorizontalAlign="Center"  CssClass="F"  />
                  
                 <ItemStyle BackColor="White" Height="25px" HorizontalAlign="Center" />
                   <Columns>
               <asp:TemplateColumn HeaderText="选   择" >
                <ItemTemplate>
				 <input id="YX_CH" name="YX_CH" type="checkbox" style="border:0 " value="<%#Eval("YX_ID")%>" />
                </ItemTemplate>
             </asp:TemplateColumn>
             <asp:TemplateColumn HeaderText="ID" Visible="false">
                <ItemTemplate >
			    <%#Eval("YX_ID")%>
                </ItemTemplate>
             <HeaderStyle CssClass="F" />
             </asp:TemplateColumn>
                       <asp:TemplateColumn HeaderText="物品名称">
                           <ItemTemplate>
                               <a href="../../ShowProduct.aspx?YX_MID=<%#Eval("YX_CollID")%>">
                                   <%#Eval("YX_CollName")%>
                               </a>
                           </ItemTemplate>
                           <HeaderStyle CssClass="F" />
                       </asp:TemplateColumn>
              <asp:TemplateColumn HeaderText="收藏时间">
                <ItemTemplate >
                    <%#Eval("YX_Colltime")%>
                </ItemTemplate>
                <HeaderStyle CssClass="F" />
             </asp:TemplateColumn>
             <asp:TemplateColumn HeaderText="操作">
                <ItemTemplate >
                  <a href=my_collect_list.aspx?action=del&iDepotType=1&yx_id=<%#Eval("yx_id")%>>删除</a>
                </ItemTemplate>
                <HeaderStyle CssClass="F" />
             </asp:TemplateColumn>
            </Columns>
    <PagerStyle Visible="False" />

            
      </asp:DataGrid>
      <table border="0" cellpadding="0" cellspacing="0" style="width: 100%">
            <tr bgcolor="#E7E7E7">
                <td align="center" bgcolor="#E7E7E7" style="width: 900px;color:000000; height: 19px;">
                    <Standny:WebPager id="WebPager1" runat="server"  OnPageChanged="WebPager1_PageChanged" PageSize="10">
                    </Standny:WebPager>
               </td>
          
              <td align="left" style="width: 50px; height: 19px;">
  </td>
               
            </tr>
        </table>
      <DIV class="tdFull lineRight desc" 
      style="MARGIN-TOP: 10px; HEIGHT: 100%; TEXT-ALIGN: left">   
      <input type="checkbox" name="selectAll" value="checkbox" onClick="selectIt('document.formsp','YX_CH')"> 全选&nbsp;
      <input type="checkbox" name="invest" value="checkbox" onClick="selectIt('document.formsp','YX_CH')"> 反选
<INPUT onClick="isdel()" type=button value=删除 name=button2> 
</DIV>
</asp:Panel>


     <asp:Panel ID="p2" Visible="false" runat="server"> 
      <asp:DataGrid ID="dg2"  BorderStyle="dashed"  runat="server" CellPadding="0" CellSpacing="0"  Width="100%"  AutoGenerateColumns="false"  >
                   <HeaderStyle Height="25px" BackColor="#F4F4F4"  HorizontalAlign="Center"  CssClass="F"  />
                  
                 <ItemStyle BackColor="White" Height="25px" HorizontalAlign="Center" />
                   <Columns>
               <asp:TemplateColumn HeaderText="选   择" >
                <ItemTemplate>
				 <input id="YX_CH" name="YX_CH" type="checkbox" style="border:0 " value="<%#Eval("YX_ID")%>" />
                </ItemTemplate>
             </asp:TemplateColumn>
             <asp:TemplateColumn HeaderText="ID" Visible="false">
                <ItemTemplate >
			    <%#Eval("YX_ID")%>
                </ItemTemplate>
             <HeaderStyle CssClass="F" />
             </asp:TemplateColumn>
                       <asp:TemplateColumn HeaderText="易家名称">
                           <ItemTemplate>
                               <a href="../showshop.aspx?uin=<%#GetUserId(Convert.ToInt32(Eval("YX_CollID")))%>">
                                   <%#Eval("YX_CollName")%>
                               </a>
                           </ItemTemplate>
                           <HeaderStyle CssClass="F" />
                       </asp:TemplateColumn>
              <asp:TemplateColumn HeaderText="收藏时间">
                <ItemTemplate >
                    <%#Eval("YX_Colltime")%>
                </ItemTemplate>
                <HeaderStyle CssClass="F" />
             </asp:TemplateColumn>
             <asp:TemplateColumn HeaderText="操作">
                <ItemTemplate >
                  <a href="my_collect_list.aspx?action=del&iDepotType=1&yx_id=<%#Eval("yx_id")%>">删除</a>
                </ItemTemplate>
                <HeaderStyle CssClass="F" />
             </asp:TemplateColumn>
            </Columns>
    <PagerStyle Visible="False" />

            
      </asp:DataGrid>
      <table border="0" cellpadding="0" cellspacing="0" style="width: 100%">
            <tr bgcolor="#E7E7E7">
                <td align="center" bgcolor="#E7E7E7" style="width: 900px;color:000000; height: 19px;">
                    <Standny:WebPager id="WebPager2" runat="server"  OnPageChanged="WebPager1_PageChanged" PageSize="10">
                    </Standny:WebPager>
               </td>
          
              <td align="left" style="width: 50px; height: 19px;">
  </td>
               
            </tr>
        </table>
      <DIV class="tdFull lineRight desc" 
      style="MARGIN-TOP: 10px; HEIGHT: 100%; TEXT-ALIGN: left">   
      <input type="checkbox" name="selectAll" value="checkbox" onClick="selectIt('document.formsp','YX_CH')"> 全选&nbsp;
      <input type="checkbox" name="invest" value="checkbox" onClick="selectIt('document.formsp','YX_CH')"> 反选
<INPUT onClick="isdel()" type=button value=删除 name=button2> 
</DIV>
</asp:Panel>
</TD>
  </tr>
</table>
<%=skin()%>
   <uc:Foot_vip ID="foot_vip3" runat=server />
</form>
</body>
</html>