<%@ page language="C#" autoeventwireup="true" inherits="VipUser_buyover_commodity, App_Web_xyjt5bop" %>

<%@ Register Assembly="Standny.WebControls" Namespace="Standny.WebControls" TagPrefix="Standny" %>
<%@ Register Src="Top_vip.ascx" TagName="Top_vip" TagPrefix="uc" %>
<%@ Register Src="Foot_vip.ascx" TagName="Foot_vip" TagPrefix="uc" %>
<%@ Register Src="Left_vip.ascx" TagName="Left_vip" TagPrefix="uc" %>
  

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
<title>竞拍结束的商品-会员管理中心-<%=SetUrl() %></title>
    <style type="text/css">
    #buyLink18 {
	background-color: #FEFAD8;
	color:#ffffff;
}
</style>
<script language="javascript" type="text/javascript" src="../include/JScript.js"></script>
</head>

<body>
 <uc:Top_vip ID="top_vip1" runat=server />
    <form id="formsp" name="formsp" method="post" runat="server">
   
    
<table class=user_table align=center>
  <tr>
    <td id=myLeft valign=top>
	<uc:Left_vip ID="left_vip2" runat=server />
	</td>
	 <TD width=5>&nbsp;</TD>
<TD vAlign=top>
      <DIV class=divMenu>
      <DIV class=DivMain>未中标的商品</DIV></DIV>
      <table width="100%" border="0" align="center" cellpadding="0" cellspacing="0" class="tdMain">
          <tr>
         
            <td class="tdSide" align="right" >
            您一共有 <%=tj() %> 次未中的标 
            </td>
          </tr>
        </table>

      <br>
      
      <asp:DataGrid ID="dg1"  BorderStyle="dashed"  runat="server" CellPadding="0" CellSpacing="0"  Width="100%"  AutoGenerateColumns="false">
               
                   <HeaderStyle Height="25px" BackColor="#F4F4F4"  HorizontalAlign="Center"  CssClass="F"  />
                  
                 <ItemStyle BackColor="White" Height="25px" HorizontalAlign="Center" />
                   <Columns>
              <asp:TemplateColumn HeaderText="选   择">
                <ItemTemplate>
				 <input id="YX_CH" name="YX_CH" type="checkbox" style="border:0 " value=<%#Eval("YX_ID") %> />
                </ItemTemplate>
             </asp:TemplateColumn>
                       <asp:TemplateColumn HeaderText="商品名称">
                           <ItemTemplate>
                               <a href="../../ShowProduct.aspx?YX_MID=<%#Eval("YX_proid")%>">
                                   <%#Eval("YX_ProductName")%>
                               </a>
                              
                           </ItemTemplate>
                           <HeaderStyle CssClass="F" />
                       </asp:TemplateColumn>
              <asp:TemplateColumn HeaderText="卖家">
                <ItemTemplate >
                 <%#ChangeHope.ChangHope_ExcUser.User_column("YX_userinfo",Convert.ToInt32(Eval("YX_userid")),"yx_user","yx_userid")%>
                </ItemTemplate>
                <HeaderStyle CssClass="F" />
             </asp:TemplateColumn>
                <asp:TemplateColumn HeaderText="我的出价">
                <ItemTemplate >
                <%#Convert.ToDouble(Eval("YX_reusercj")).ToString("0.00")%>元
                </ItemTemplate>
                <HeaderStyle CssClass="F" />
             </asp:TemplateColumn>
               <asp:TemplateColumn HeaderText="最终价格">
                <ItemTemplate >
                <%#YX_OrderStart(Convert.ToInt32(Eval("YX_proid")),Convert.ToDouble(Eval("YX_reusercj")),0)%>元
                </ItemTemplate>
                <HeaderStyle CssClass="F" />
             </asp:TemplateColumn>
             <asp:TemplateColumn HeaderText="结束时间">
             <ItemTemplate>
              <%#Eval("yx_jsdate")%>
             </ItemTemplate>
              <HeaderStyle CssClass="F"  />
              </asp:TemplateColumn>
              </Columns>
    <PagerStyle Visible="False" />

            
      </asp:DataGrid>
      <table border="0" cellpadding="0" cellspacing="0" style="width: 100%">
            <tr bgcolor="#E7E7E7">
                <td align="center" bgcolor="#E7E7E7" style="width: 900px;color:#000000; height: 19px;">
                    <standny:webpager id="WebPager1" runat="server" onpagechanged="WebPager1_PageChanged" pagesize="10"></standny:webpager>
                    
          
              <td align="left" style="width: 50px; height: 19px;">
  </td>
               
            </tr>
        </table>
      </TD>
  </tr>
    <tr>
        <td valign="top">
        </td>
        <td width="5">
        </td>
        <td valign="top">
        </td>
    </tr>
</table>
    </form>

</body>
</html>