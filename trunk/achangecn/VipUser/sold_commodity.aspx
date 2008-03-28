<%@ page language="C#" autoeventwireup="true" inherits="VipUser_sold_commodity, App_Web_3qmm6zcm" %>

<%@ Register Assembly="Standny.WebControls" Namespace="Standny.WebControls" TagPrefix="Standny" %>
<%@ Register Src="Top_vip.ascx" TagName="Top_vip" TagPrefix="uc" %>
<%@ Register Src="Foot_vip.ascx" TagName="Foot_vip" TagPrefix="uc" %>
<%@ Register Src="Left_vip.ascx" TagName="Left_vip" TagPrefix="uc" %>
  

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>已产生的交易-会员管理中心-<%=SetUrl() %></title>
    <style type="text/css">
    .s {
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
      <DIV class=DivMain>已产生的交易</DIV></DIV>
      <table width="100%" border="0" align="center" cellpadding="0" cellspacing="0" class="tdMain">
          <tr>
            <td class="tdLeft" >成交时间：</td>
            <td colspan="3" class="tdSide" >
            <%=fr_year()%>
              年
              <select name="fr_month">
                <option value="0" selected="selected">不限</option>
                <option value="1">1</option>
                <option value="2">2</option>
                <option value="3">3</option>
                <option value="4">4</option>
                <option value="5">5</option>
                <option value="6">6</option>
                <option value="7">7</option>
                <option value="8">8</option>
                <option value="9">9</option>
                <option value="10">10</option>
                <option value="11">11</option>
                <option value="12">12</option>
              </select>
              月
              <select name="fr_day">
                <option value="0" selected="selected">不限</option>
                <option value="1">1</option>
                <option value="2">2</option>
                <option value="3">3</option>
                <option value="4">4</option>
                <option value="5">5</option>
                <option value="6">6</option>
                <option value="7">7</option>
                <option value="8">8</option>
                <option value="9">9</option>
                <option value="10">10</option>
                <option value="11">11</option>
                <option value="12">12</option>
                <option value="13">13</option>
                <option value="14">14</option>
                <option value="15">15</option>
                <option value="16">16</option>
                <option value="17">17</option>
                <option value="18">18</option>
                <option value="19">19</option>
                <option value="20">20</option>
                <option value="21">21</option>
                <option value="22">22</option>
                <option value="23">23</option>
                <option value="24">24</option>
                <option value="25">25</option>
                <option value="26">26</option>
                <option value="27">27</option>
                <option value="28">28</option>
                <option value="29">29</option>
                <option value="30">30</option>
                <option value="31">31</option>
              </select>
              日 到
            <%=fr_year2()%>
              年
              <select name="to_month">
                <option value="0" selected="selected">不限</option>
                <option value="1">1</option>
                <option value="2">2</option>
                <option value="3">3</option>
                <option value="4">4</option>
                <option value="5">5</option>
                <option value="6">6</option>
                <option value="7">7</option>
                <option value="8">8</option>
                <option value="9">9</option>
                <option value="10">10</option>
                <option value="11">11</option>
                <option value="12">12</option>
              </select>
              月
              <select name="to_day">
                <option value="0" selected="selected">不限</option>
                <option value="1">1</option>
                <option value="2">2</option>
                <option value="3">3</option>
                <option value="4">4</option>
                <option value="5">5</option>
                <option value="6">6</option>
                <option value="7">7</option>
                <option value="8">8</option>
                <option value="9">9</option>
                <option value="10">10</option>
                <option value="11">11</option>
                <option value="12">12</option>
                <option value="13">13</option>
                <option value="14">14</option>
                <option value="15">15</option>
                <option value="16">16</option>
                <option value="17">17</option>
                <option value="18">18</option>
                <option value="19">19</option>
                <option value="20">20</option>
                <option value="21">21</option>
                <option value="22">22</option>
                <option value="23">23</option>
                <option value="24">24</option>
                <option value="25">25</option>
                <option value="26">26</option>
                <option value="27">27</option>
                <option value="28">28</option>
                <option value="29">29</option>
                <option value="30">30</option>
                <option value="31">31</option>
              </select>
              日 </td>
          </tr>
          <tr>
            <td class="tdLeft"> 商品名称： </td>
            <td class="tdSide">
			<input name="sTitle" type="text" size="18" value="" onkeydown="if(event.keyCode==13) return doSearch();" />
		    </td>
            <td class="tdLeft bdLeft">交易状态： </td>
            <td class="tdSide">
            <select name="start">
                <option value="0" selected="selected">全部</option>
                <option value="1">等待买家付款的订单</option>
                <option value="2">等待卖家发货的订单</option>
                <option value="3">等待买家确认收货的订单</option>
				<option value="4">买家有退款或退货的订单</option>
				<option value="5">交易完成的订单</option>
				<option value="6">交易关闭的订单</option>
              </select>
                <asp:Button ID="Button2" runat="server" Text=" 查询 " OnClick="Button2_Click1" />
              
          </tr>
        </table>

      <br>
      
      <asp:DataGrid ID="dg1"  BorderStyle="dashed"  runat="server" CellPadding="0" CellSpacing="0"  Width="100%"  AutoGenerateColumns="false" OnEditCommand="dg1_EditCommand" OnCancelCommand="dg1_CancelCommand" OnUpdateCommand="dg1_UpdateCommand">
               
                   <HeaderStyle Height="25px" BackColor="#F4F4F4"  HorizontalAlign="Center"  CssClass="F"  />
                  
                 <ItemStyle BackColor="White" Height="25px" HorizontalAlign="Center" />
                   <Columns>
               <asp:TemplateColumn HeaderText="选   择">
                <ItemTemplate>
				 <input id="YX_CH" name="YX_CH" type="checkbox" style="border:0 " value=<%#Eval("YX_ID") %> />
                </ItemTemplate>
             </asp:TemplateColumn>
             <asp:TemplateColumn HeaderText="ID" Visible="false">
                <ItemTemplate >
			    <%#Eval("YX_ID")%>
                </ItemTemplate>
             <HeaderStyle CssClass="F" />
             </asp:TemplateColumn>
                       <asp:TemplateColumn HeaderText="商品名称">
                        <ItemTemplate >
                               <a href="../../ShowProduct.aspx?YX_MID=<%#Eval("YX_Proid")%>">
                                   <%#Eval("YX_ProName")%>
                               </a>
                              
                           </ItemTemplate>
                           <HeaderStyle CssClass="F" />
                       </asp:TemplateColumn>
              <asp:TemplateColumn HeaderText="买家">
                <ItemTemplate >
                   <%#ChangeHope.ChangHope_ExcUser.User_column("YX_userinfo",Convert.ToInt32(Eval("YX_reuserid")),"yx_user","yx_userid")%>
                   
                   <br>
                   <a target=blank href=tencent://message/?uin=<%#ChangeHope.ChangHope_ExcUser.User_column("YX_userinfo", Convert.ToInt32(Eval("YX_reuserid")), "yx_userqq", "yx_userid")%>&Site=国内最大的商城&Menu=yes><img border=0 SRC='http://wpa.qq.com/pa?p=1:<%#ChangeHope.ChangHope_ExcUser.User_column("YX_userinfo", Convert.ToInt32(Eval("YX_reuserid")), "yx_userqq", "yx_userid")%>:8' alt=点击这里给我发消息>
                  </a>
                </ItemTemplate>
                <HeaderStyle CssClass="F" />
             </asp:TemplateColumn>
                <asp:TemplateColumn HeaderText="总金额">
                <ItemTemplate >
                <%#Eval("YX_SumPrice")%>元
               
                </ItemTemplate>
                 <EditItemTemplate>
             <asp:TextBox Width="40"  ID="TextBox1"　Text='<%#Eval("YX_SumPrice")%>' runat="server"></asp:TextBox>
            
             </EditItemTemplate>
                <HeaderStyle CssClass="F" />
             </asp:TemplateColumn>
              <asp:EditCommandColumn EditText="编辑价格"  CancelText="取消" UpdateText="保存">
                 <ItemStyle Wrap="False" />
             </asp:EditCommandColumn> 
             
             <asp:TemplateColumn HeaderText="成交时间">
             <ItemTemplate>
            <%#Eval("YX_OrderDate")%>
             </ItemTemplate>
              <HeaderStyle CssClass="F"  />
              </asp:TemplateColumn>
              <asp:TemplateColumn HeaderText="当前状态">
             <ItemTemplate>
            <%#YX_OrderStart(Convert.ToInt32(Eval("YX_OrderStart")))%>
             </ItemTemplate>
                 <HeaderStyle CssClass="F"  />
              </asp:TemplateColumn> 
                <asp:TemplateColumn HeaderText="操作">
                <ItemTemplate >
                             <a href=Pay_state_info.aspx?YX_ID=<%#Eval("YX_ID")%>&usertype=1>交易管理>></a>
                </ItemTemplate>
                <HeaderStyle CssClass="F" />
             </asp:TemplateColumn>
            </Columns>
    <PagerStyle Visible="False" />

            
      </asp:DataGrid>
      <table border="0" cellpadding="0" cellspacing="0" style="width: 100%">
            <tr bgcolor="#E7E7E7">
                <td align="center" bgcolor="#E7E7E7" style="width: 900px;color:000000; height: 19px;">
                    <standny:webpager id="WebPager1" runat="server" onpagechanged="WebPager1_PageChanged" pagesize="10"></standny:webpager>
                    
          
              <td align="left" style="width: 50px; height: 19px;">
  </td>
               
            </tr>
        </table>
      <DIV class="tdFull lineRight desc" 
      style="MARGIN-TOP: 10px; HEIGHT: 100%; TEXT-ALIGN: left">   
      <input type="checkbox" name="selectAll" value="checkbox" onClick="selectIt('document.formsp','YX_CH')"> 全选&nbsp;
      <input type="checkbox" name="invest" value="checkbox" onClick="selectIt('document.formsp','YX_CH')"> 反选
</DIV>

      <DIV   class=note>提示：等待上架的商品：发布商品时保存在仓库里、已卖出商品做复制到仓库里和卖家手动下架的商品都将被存放在这里。
      </DIV></TD>
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
 <% startztdd(); %>
     <script language="javascript">document.getElementById('soldCommodityItem').style.display="";</script> 
    </form>
    <uc:Foot_vip ID="foot_vip3" runat=server />
</body>
</html>
