<%@ page language="C#" autoeventwireup="true" enableeventvalidation="false" inherits="VipUser_yx_buyer, App_Web_xyjt5bop" %> 
<%@ Register Assembly="Standny.WebControls" Namespace="Standny.WebControls" TagPrefix="Standny" %>
<%@ Register Src="Top_vip.ascx" TagName="Top_vip" TagPrefix="uc" %>
<%@ Register Src="Foot_vip.ascx" TagName="Foot_vip" TagPrefix="uc" %>
<%@ Register Src="Left_vip.ascx" TagName="Left_vip" TagPrefix="uc" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
   <title>求购商品-会员管理中心-<%=SetUrl() %></title>
    <style type="text/css">
    #sellLink3 {
	background-color: #FEFAD8;
	color:#ffffff;
}
</style>
<script language="javascript" type="text/javascript" src="../include/JScript.js"></script>
<script language="javascript" type="text/javascript">
function iorderid(){
var itype=document.getElementById("itype");
document.getElementById("formsp").action="?type="+itype.value+"&sTitle="+<%=Server.UrlDecode("document.getElementById('sTitle').value")%> ;
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
 <table width="49%" border="0" cellpadding="0" cellspacing="0" id="menu">
  <tr>
    <td id=top1><a ID="LinkButton3" class="toptitle"   href="yx_buyer.aspx?type=1">求购中的商品信息</a></td>
    <td id=top2><a ID="LinkButton4" class="toptitle"  href="yx_buyer.aspx?type=2">已结束的求购信息</a></td> 
<%--    <td width="3"></td>
    <td width="140" id=top3><a ID="LinkButton5" class="toptitle"  href="depot_commodity.aspx?iDepotType=3">全部卖完的商品</a></td>
    <td width="3"></td>
    <td  id=top4 class="menuWill"><a  ID="LinkButton6" class="toptitle" href="violation_commodity.aspx">待您处理的问题商品</a></td>
--%>  </tr>
</table> 
      <DIV class="tdSide tdMain lineRight desc" style="text-align:right">
        <INPUT id=sTitle type=text name=sTitle>
        <input type=hidden name="itype" value='<%=Request["type"]%>'>
        <input type="button"  value=" 查 询 " onclick="iorderid()">
        <a href="yx_buygoods.aspx">发布商品求购信息，让卖家主动找上门</a>
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
                       <asp:TemplateColumn HeaderText="商品名称">
                           <ItemTemplate>
                               <a href="../../ShowbuyProduct.aspx?YX_MID=<%#Eval("YX_ID")%>">
                                   <%#Eval("YX_ProductName")%>
                               </a>
                           </ItemTemplate>
                           <HeaderStyle CssClass="F" />
                       </asp:TemplateColumn>
              <asp:TemplateColumn HeaderText="求购时间">
                <ItemTemplate >
                    <%#Eval("YX_addtime")%>
                </ItemTemplate>
                <HeaderStyle CssClass="F" />
             </asp:TemplateColumn>
             <asp:TemplateColumn HeaderText="结束时间">
                <ItemTemplate >
                    <%# sytime(Eval("yx_proyxq"),Eval("yx_addtime"))%>
                </ItemTemplate>
                <HeaderStyle CssClass="F" />
             </asp:TemplateColumn>
              <%--<asp:TemplateColumn HeaderText="求购价格">
                <ItemTemplate >
                   <%#Convert.ToInt32(Eval("YX_ProPrice")).ToString("0.00")%>元
                </ItemTemplate>
                <HeaderStyle CssClass="F" />
             </asp:TemplateColumn>--%>
           
             <asp:TemplateColumn HeaderText="求购数量">
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
                  <input type="button" id="xq" onclick='window.open("yx_editbuy_type.aspx?YX_id=<%#Eval("YX_ID") %>");'  value="编辑详情">
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
<%-- <asp:Button ID="Button2" runat="server" Text="上架" OnClick="Button2_Click" />
--%></DIV> 
<DIV   class="note">
提示：商品求购规则： （请务必仔细浏览以下规则，因为对您很重要！）1.商品的求购请务必选择正确类目，这样会有助您的成交！2.对发错类目的宝贝，店小二会进行转移或者删除。</DIV>
      </TD>
  </tr>
</table>
<%=skin()%>
    
   
    </form>
        <uc:Foot_vip ID="foot_vip3" runat="server" />
</body>
</html>

