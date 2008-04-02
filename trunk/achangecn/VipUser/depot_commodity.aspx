<%@ page language="C#" autoeventwireup="true" enableeventvalidation="false" inherits="VipUser_depot_commodity, App_Web_3qmm6zcm" %>

<%@ Register Assembly="Standny.WebControls" Namespace="Standny.WebControls" TagPrefix="Standny" %>
<%@ Register Src="Top_vip.ascx" TagName="Top_vip" TagPrefix="uc" %>
<%@ Register Src="Foot_vip.ascx" TagName="Foot_vip" TagPrefix="uc" %>
<%@ Register Src="Left_vip.ascx" TagName="Left_vip" TagPrefix="uc" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
   <title>仓库里的物品-会员管理中心-<%=SetUrl() %></title>
    <style type="text/css">
    #sellLink3 {
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
function DoUpdateCommodityEntry(Flag ,yx_productid)
{
	if(Flag == 1)
		window.open("yx_editsell_type.aspx?YX_id="+yx_productid);
	else if(Flag == 2)
		alert("已经有人出价，不能再修改，谢谢合作！");
	return false;
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
    <td width="140"  id=top1><a ID="LinkButton3" class="toptitlehover"   href="depot_commodity.aspx?iDepotType=1">没卖出的物品</a></td>
    <td width="3"></td>
    <td width="140"  id=top2><a ID="LinkButton4" class="toptitle"  href="depot_commodity.aspx?iDepotType=2">等待上架的物品</a></td>
    <td width="3"></td>
    <td width="140" id=top3><a ID="LinkButton5" class="toptitle"  href="depot_commodity.aspx?iDepotType=3">全部卖完的物品</a></td>
    <td width="3"></td>
    <td  id=top4 class="menuWill"><a  ID="LinkButton6" class="toptitle" href="violation_commodity.aspx">待您处理的问题物品</a></td>
  </tr>
</table> 
      <DIV class="tdSide tdMain lineRight desc" style="text-align:right">
        <INPUT id=sTitle type=text name=sTitle>
        <input type=hidden name="iDepotType" value='<%=Request["iDepotType"]%>'>
        <input type="button"  value=" 查 询 " onclick="iorderid()">
      </DIV>
      <br>
      <asp:DataGrid ID="dg1"  BorderStyle="dashed"  runat="server" CellPadding="0" CellSpacing="0"  Width="100%"  AutoGenerateColumns="false" OnEditCommand="dg1_EditCommand" OnCancelCommand="dg1_CancelCommand" OnUpdateCommand="dg1_UpdateCommand" OnSelectedIndexChanged="dg1_SelectedIndexChanged" >
                   <HeaderStyle Height="25px" BackColor="#F4F4F4"  HorizontalAlign="Center"  CssClass="F"  />
                  
                 <ItemStyle BackColor="White" Height="25px" HorizontalAlign="Center" />
                   <Columns>
               <asp:TemplateColumn HeaderText="选   择" >
                <ItemTemplate>
				 <input id="YX_CH" name="YX_CH" type="checkbox" style="border:0 " value='<%#Eval("YX_ID") %>' />
				<%#dispic(Eval("YX_Spic").ToString())%>		
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
                               <a href="../../ShowProduct.aspx?YX_MID=<%#Eval("YX_ID")%>">
                                   <%#Eval("YX_ProductName")%>
                               </a>
                                <%#gmfs(Convert.ToInt32(Eval("YX_progmfs")))%>
                           </ItemTemplate>
                           <HeaderStyle CssClass="F" />
                       </asp:TemplateColumn>
              <asp:TemplateColumn HeaderText="创建时间">
                <ItemTemplate >
                    <%#Eval("YX_addtime")%>
                </ItemTemplate>
                <HeaderStyle CssClass="F" />
             </asp:TemplateColumn>
              <asp:TemplateColumn HeaderText="价格">
                <ItemTemplate >
                   <%#Convert.ToInt32(Eval("YX_ProPrice")).ToString("0.00")%>元
                </ItemTemplate>
                <HeaderStyle CssClass="F" />
             </asp:TemplateColumn>
           
             <asp:TemplateColumn HeaderText="数量">
             <ItemTemplate>
            <%#Eval("YX_KcNum")%>件
             </ItemTemplate>
             <EditItemTemplate>
             <asp:TextBox Width="20"  ID="TextBox1"　Text='<%#Eval("YX_KcNum")%>' runat="server"></asp:TextBox>
            
             </EditItemTemplate>
                 <HeaderStyle CssClass="F"  />
                 </asp:TemplateColumn>
			 <asp:EditCommandColumn EditText="编辑数量"  CancelText="取消" UpdateText="保存">
                 <ItemStyle Wrap="False" />
             </asp:EditCommandColumn> 
                           <asp:TemplateColumn HeaderText="操作">
                <ItemTemplate >
                  <input type="button" id="xq" onclick="DoUpdateCommodityEntry('1',<%#Eval("YX_ID") %>);"  value="编辑详情">
                </ItemTemplate>
                <HeaderStyle CssClass="F" />
             </asp:TemplateColumn>
            </Columns>
    <PagerStyle Visible="False" />

            
      </asp:DataGrid>
      <table border="0" cellpadding="0" cellspacing="0" style="width: 100%">
            <tr bgcolor="#E7E7E7">
                <td align="center" bgcolor="#E7E7E7" style="width: 900px;color:000000; height: 19px;">
                    <Standny:WebPager id="WebPager1" runat="server"  OnPageChanged="WebPager1_PageChanged" PageSize="2">
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
          <asp:Button ID="Button1" runat="server" Text="删除" OnClick="Button1_Click"/>
<%--<INPUT onClick="document.getElementById('del').value='del';isdel()" type='submit' value='删除' name='submitdel' id="Submit1" onload="document.getEelementById('del').value=''";> --%>
    <input type="hidden" name="del">
 <asp:Button ID="Button2" runat="server" Text="上架" OnClick="Button2_Click" />
</DIV>

      <DIV   class="note">提示：等待上架的物品：发布物品时保存在仓库里、已卖出物品做复制到仓库里和卖家手动下架的物品都将被存放在这里。</DIV></TD>
  </tr>
</table>
<%=skin()%>
    
   
    </form>
        <uc:Foot_vip ID="foot_vip3" runat="server" />
</body>
</html>
