<%@ page language="C#" autoeventwireup="true" inherits="VipUser_YX_edittype, App_Web_xyjt5bop" %>

<%@ Register Src="YX_proskin.ascx" TagName="YX_proskin" TagPrefix="uc2" %>

<%@ Register Src="shopclass.ascx" TagName="shopclass" TagPrefix="uc1" %>
<%@ Register Src="Top_vip.ascx" TagName="Top_vip" TagPrefix="uc" %>
<%@ Register Src="Foot_vip.ascx" TagName="Foot_vip" TagPrefix="uc" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
  <title>出售中的商品-会员管理中心-<%=SetUrl() %></title>
<script language="javascript">

//function fish(id)
//{
//if(id==1)
//{
//docoment.
//this.RadioButton2.Checked=false;
//this.RadioButton3.Checked=false;
//}
//if(id==2)
//{
//this.RadioButton1.Checked=false;
//this.RadioButton3.Checked=false;
//}
//if(id==3)
//{
//this.RadioButton1.Checked=false;
//this.RadioButton2.Checked=false;
//}
//}
</script>
</head>
<body>
   <uc:Top_vip ID="top_vip1" runat=server /> &nbsp;
   <form id="form1" action="YX_sell_type.aspx" runat="server" onsubmit="return Validator.Validate(document.getElementById('form1'),3)">
    <div>
        &nbsp;<asp:Panel ID="insertpro" runat="server" Width="944px">
            &nbsp;
<script language=javascript src="../include/yz.js"></script>
<table class=main border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
      <td class="td_01" colspan="3" style="text-align: center">
          商品推荐编辑
      </td>
  </tr>
    <tr>
        <td class="td_02" style="width: 140px">
            * 商品名称：</td>
        <td class="td_03" colspan="2" style="width: 551px">
            <asp:Label ID="Label1" runat="server" Width="547px"></asp:Label></td>
    </tr>
    <tr>
        <td class="td_02" style="width: 140px">
            * 商品原始类别：</td>
        <td class="td_03" colspan="2" style="width: 551px">
            <asp:Label ID="Label2" runat="server" Width="548px"></asp:Label></td>
    </tr>
  <tr>
    <td class="td_02" style="width: 140px"><span class="fontOrange font14">*</span> 商品分级类目：</td>
    <td class="td_03" colspan="2" style="width: 551px" >
     <%=disclass()%></td>
  </tr>
    <tr>
        <td class="td_02" style="width: 140px; height: 19px">
            * 商品推荐期限：<asp:HiddenField ID="HiddenField1" runat="server" />
        </td>
        <td class="td_03" colspan="2" style="width: 551px; height: 19px">
        	  <select name="dwValidDuration" class="select_span">
			  <option value="7" checked>7</option>
			  <option value="14">14</option>
			  <option value="21" >21</option>
			  <option value="30">30</option>
			  <option value="60" >60</option>
			  <option value="120">120</option>
			  <option value="360" >360</option>
		    </select>天
        </td>
    </tr>
    <tr>
        <td class="td_02" style="width: 140px; height: 19px">
            * 商品名称短语：</td>
        <td class="td_03" colspan="2" style="width: 551px; height: 19px">
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></td>
    </tr>
    <tr>
        <td class="td_02" style="width: 140px; height: 19px">
            * 商品“原价”：
        </td>
        <td class="td_03" colspan="2" style="width: 551px; height: 19px">
            <asp:TextBox ID="TextBox1" runat="server" ReadOnly="True" Width="128px"></asp:TextBox>元</td>
    </tr>
    <tr>
        <td class="td_02" style="width: 140px; height: 19px">
            * 商品优惠特价：
        </td>
        <td class="td_03" colspan="2" style="width: 551px; height: 19px">
            <asp:TextBox ID="TextBox3" runat="server" ></asp:TextBox>元</td>
    </tr>
    <tr>
        <td class="td_03" colspan="3" style="height: 19px">
            * 效果预览</td>
    </tr>
    <tr>
        <td class="td_03" colspan="3" style="height: 15px">
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            <asp:Image ID="Image1" runat="server" Height="103px" Width="131px" />
            <asp:Label ID="Label3" runat="server" Height="106px" Width="99px"></asp:Label>
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp;
            <asp:Label ID="Label4" runat="server" Height="107px" Width="236px">注意：推荐位的价格要便宜些！</asp:Label></td>
    </tr>
</table>
	<div class=main style="text-align:center">
        <asp:Button ID="Button1" runat="server"  Text="确认无误，提交" OnClick="Button1_Click" />
	</div>

   
       </asp:Panel>
<asp:panel runat="server" height="50px" ID="panel3" Visible="false" width="100%" HorizontalAlign="Center"> 
<table width="60%" border="0" >
  <tr>
    <td align="center"><img src="../images/success.gif" width="41" align=center height="39" />&nbsp;&nbsp;<div class=divfont14>恭喜您，商品推荐成功！</div></td>
  </tr>
  <tr>
    <td align="center" style="line-height:20px">
    <b>你可以进行的操作</b><br>    
        <asp:HyperLink ID="HyperLink2" runat="server">查看商品详情>></asp:HyperLink><br>
     
         <a href=selling_commodity.aspx> 出售中的商品列表 >></a></td>
  </tr>
  <tr>
    <td><table width="100%" height="62" border="0" align="center">
      <tr>
        <td>&nbsp;</td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
  </tr>
</table>

</asp:panel>
    </div>
    </form>
      <uc:Foot_vip ID="foot_vip3" runat=server />
</body>
</html>
