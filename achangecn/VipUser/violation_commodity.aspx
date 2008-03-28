<%@ page language="C#" autoeventwireup="true" inherits="VipUser_violation_commodity, App_Web_xyjt5bop" %>

<%@ Register Assembly="Standny.WebControls" Namespace="Standny.WebControls" TagPrefix="Standny" %>
<%@ Register Src="Top_vip.ascx" TagName="Top_vip" TagPrefix="uc" %>
<%@ Register Src="Foot_vip.ascx" TagName="Foot_vip" TagPrefix="uc" %>
<%@ Register Src="Left_vip.ascx" TagName="Left_vip" TagPrefix="uc" %>
  

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
 <title>出售中的商品-会员管理中心-<%=SetUrl() %></title>
    <style type="text/css">
    #sellLink2 {
	background-color: #FEFAD8;
	color:#ffffff;
}
</style>
<script language="javascript" type="text/javascript" src="../include/JScript.js"></script>
<script language="javascript" type="text/javascript">
function iorderid(){
var tit=document.getElementById("sTitle");
document.getElementById("formsp").action="?sTitle="+escape(tit.value);
document.formsp.submit();
}
</script>
</head>

<body><uc:Top_vip ID="top_vip1" runat=server />
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
    <td width="140" class="menuWill"><a  class="toptitle" href="depot_commodity.aspx?iDepotType=1">没卖出的商品</a></td>
    <td width="3"></td>
    <td width="140"  class="menuWill"><a class="toptitle" href="depot_commodity.aspx?iDepotType=2">等待上架的商品</a></td>
    <td width="3"></td>
    <td width="140" class="menuWill"><a class="toptitle" href="depot_commodity.aspx?iDepotType=3">全部卖完的商品</a></td>
    <td width="3"></td>
    <td  id=top4 class="menuHere"><a class="toptitlehover" href="violation_commodity.aspx">待您处理的问题商品</a></td>
  </tr>
</table> 
      <DIV class="tdSide tdMain lineRight desc" style="text-align:right">
        <INPUT id=sTitle type=text name=sTitle> 
          <input type="button"  value=" 查 询 " onclick="iorderid()">
      </DIV>
      <br>
      
      <asp:DataGrid ID="dg1" AutoGenerateColumns="False" BorderStyle=Dashed runat="server"  CellPadding="0" CellSpacing="0"  Width="100%" >
                   <HeaderStyle Height="25px" BackColor="#F4F4F4"  HorizontalAlign="Center"  CssClass="F"  />
                  
                 <ItemStyle BackColor="White" Height="25px" HorizontalAlign="Center" />
                   <Columns>
               <asp:TemplateColumn HeaderText="选   择">
                <ItemTemplate>
				 <input id="YX_CH" name="YX_CH" type="checkbox" style="border:0 " value=<%#Eval("YX_ID") %> />
				<%#dispic(Eval("YX_Spic"))%>		
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
                               <a href="../../ShowProduct.aspx?YX_MID=<%#Eval("YX_ID")%>">
                                   <%#Eval("YX_ProductName")%>
                               </a>
                                <%#gmfs(Convert.ToInt32(Eval("YX_progmfs")))%>
                           </ItemTemplate>
                           <HeaderStyle CssClass="F" />
                       </asp:TemplateColumn>
              <asp:TemplateColumn HeaderText="价格">
                <ItemTemplate >
                   <%#Convert.ToInt32(Eval("YX_ProPrice")).ToString("0.00")%>元
                </ItemTemplate>
                <HeaderStyle CssClass="F" />
             </asp:TemplateColumn>
                         <asp:TemplateColumn HeaderText="下架时间">
                <ItemTemplate >
                    <%#Eval("YX_xjsj")%>
                </ItemTemplate>
                <HeaderStyle CssClass="F" />
             </asp:TemplateColumn>
             <asp:TemplateColumn HeaderText="违规原因">
             <ItemTemplate>
            <%#Eval("YX_wgyy")%>
             </ItemTemplate>
                 <HeaderStyle CssClass="F"  />
              </asp:TemplateColumn>
                             <asp:TemplateColumn HeaderText="当前状态">
             <ItemTemplate>
            <%#Eval("yx_xjzt")%>
             </ItemTemplate>
                 <HeaderStyle CssClass="F"  />
              </asp:TemplateColumn> 
                <asp:TemplateColumn HeaderText="操作">
                <ItemTemplate >
                   <asp:Button ID="Button1" runat="server" Text="编辑商品" />
                </ItemTemplate>
                <HeaderStyle CssClass="F" />
             </asp:TemplateColumn>
            </Columns>
    <PagerStyle Visible="False" />

            
      </asp:DataGrid>
      <table border="0" cellpadding="0" cellspacing="0" style="width: 100%">
            <tr bgcolor="#E7E7E7">
                <td align="center" bgcolor="#E7E7E7" style="width: 900px;color:000000; height: 19px;">
                    <Standny:WebPager id="WebPager1" runat="server" OnPageChanged="WebPager1_PageChanged">
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
<INPUT onClick="document.getElementById('del').value='del';isdel()" type=submit value=删除 name=submitdel> 
<input type=hidden name=del>
 <asp:Button ID="Button2" runat="server" Text="上架" OnClick="Button2_Click" />
</DIV>

      <DIV   class=note>提示：等待上架的商品：发布商品时保存在仓库里、已卖出商品做复制到仓库里和卖家手动下架的商品都将被存放在这里。</DIV></TD>
  </tr>
</table>
 
    </form>
        <uc:Foot_vip ID="foot_vip3" runat=server />
</body>
</html>