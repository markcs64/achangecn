<%@ page language="C#" autoeventwireup="true" inherits="VipUser_yx_cerdpj, App_Web_xyjt5bop" %>

<%@ Register Assembly="Standny.WebControls" Namespace="Standny.WebControls" TagPrefix="Standny" %>
<%@ Register Src="Top_vip.ascx" TagName="Top_vip" TagPrefix="uc" %>
<%@ Register Src="Foot_vip.ascx" TagName="Foot_vip" TagPrefix="uc" %>
<%@ Register Src="Left_vip.ascx" TagName="Left_vip" TagPrefix="uc" %>
  

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
 <title>评价管理-会员管理中心-<%=SetUrl() %></title>
    <style type="text/css">
    .s {
	background-color: #FEFAD8;
	color:#ffffff;
}
</style>

<link rel="stylesheet" type="text/css" href="ajaxtabs.css"/>

<script type="text/javascript" src="ajaxtabs.js"></script>
</head>


<body>
<uc:Top_vip ID="top_vip1" runat=server />
    <form id="formsp" name="formsp" method="post" runat="server">    
<table class=user_table align=center>
  <tr>
    <td id=myLeft valign=top>
	<uc:Left_vip ID="left_vip2" runat=server />
	</td>
	 <TD style="width: 6px"></TD>
<TD vAlign=top style="width: 653px">  <DIV class=divMenu>
      <DIV class=DivMain>交易评价</DIV></DIV>
   <DIV class="tdSide tdMain desc" style="BACKGROUND: #f7f7f7">
    <table style="width: 100%">
     <tr><td>
         <asp:Panel ID="Panel1" Visible="false" runat="server">
 
     <asp:DataGrid ID="dg1"  BorderStyle="Dashed"  runat="server" CellPadding="0"  Width="100%"  AutoGenerateColumns="False">
                   <HeaderStyle Height="25px" BackColor="#F4F4F4"    HorizontalAlign="Center"  CssClass="F"  />
                  
                 <ItemStyle BackColor="White" Height="25px" HorizontalAlign="Center" />
                   <Columns>
                       <asp:TemplateColumn HeaderText="ID">
                <ItemTemplate >
			    <%#Eval("yx_id")%>
			   
                </ItemTemplate>
             <HeaderStyle CssClass="F" />
             </asp:TemplateColumn>
                   
             <asp:TemplateColumn HeaderText="物品名称">
                <ItemTemplate >
			    <a href="../../ShowProduct.aspx?YX_MID=<%#Eval("yx_proid")%>" target=_blank><%#Eval("yx_proname")%></a>
			   
                </ItemTemplate>
             <HeaderStyle CssClass="F" />
             </asp:TemplateColumn>
			  <asp:TemplateColumn HeaderText="卖家ID">
                <ItemTemplate >
                 <%#ChangeHope.ChangHope_ExcUser.User_column("YX_userinfo",Convert.ToInt32(Eval("yx_userid")),"yx_user","yx_userid")%>
                    
                </ItemTemplate>
                <HeaderStyle CssClass="F" />
              </asp:TemplateColumn>
              <asp:TemplateColumn HeaderText="评价他">
                <ItemTemplate >
 <a href="?action=pj&orderid=<%#Eval("yx_id")%>">评价他</a>
                </ItemTemplate>
               
                       </asp:TemplateColumn>
		              
            </Columns>
    <PagerStyle Visible="False" />

            
      </asp:DataGrid>
      <table border="0" cellpadding="0" cellspacing="0" style="width: 100%">
            <tr bgcolor="#E7E7E7">
                <td align="center" bgcolor="#E7E7E7" style="width: 900px;color:000000">
                    <Standny:WebPager id="WebPager1" runat="server" OnPageChanged="WebPager1_PageChanged" PageSize="10">
                    </Standny:WebPager>          
               </td>          
              <td align="left" style="width: 50px"></td>
            </tr>
        </table>
   </asp:Panel>
   </td></tr>
        <tr><td>
         <asp:Panel ID="Panel3" Visible="false" runat="server">
 
     <asp:DataGrid ID="DataGrid1"  BorderStyle="Dashed"  runat="server" CellPadding="0"  Width="100%"  AutoGenerateColumns="False">
                   <HeaderStyle Height="25px" BackColor="#F4F4F4"    HorizontalAlign="Center"  CssClass="F"  />
                  
                 <ItemStyle BackColor="White" Height="25px" HorizontalAlign="Center" />
                   <Columns>
                      <asp:TemplateColumn HeaderText="ID">
                <ItemTemplate >
			    <%#Eval("yx_id")%>
			   
                </ItemTemplate>
             <HeaderStyle CssClass="F" />
             </asp:TemplateColumn>
             
             <asp:TemplateColumn HeaderText="物品名称">
                <ItemTemplate >
			    <a href="../../ShowProduct.aspx?YX_MID=<%#Eval("yx_proid")%>" target=_blank><%#Eval("yx_proname")%></a>
			   
                </ItemTemplate>
             <HeaderStyle CssClass="F" />
             </asp:TemplateColumn>
			  <asp:TemplateColumn HeaderText="买家ID">
                <ItemTemplate >
                  <%#ChangeHope.ChangHope_ExcUser.User_column("YX_userinfo",Convert.ToInt32(Eval("yx_reuserid")),"yx_user","yx_userid")%>
                    
                </ItemTemplate>
                <HeaderStyle CssClass="F" />
              </asp:TemplateColumn>
              <asp:TemplateColumn HeaderText="评价他">
                <ItemTemplate >
 <a href="?action=pj2&orderid=<%#Eval("yx_id")%>">评价他</a>
                </ItemTemplate>
               
                       </asp:TemplateColumn>
		              
            </Columns>
    <PagerStyle Visible="False" />

            
      </asp:DataGrid>
      <table border="0" cellpadding="0" cellspacing="0" style="width: 100%">
            <tr bgcolor="#E7E7E7">
                <td align="center" bgcolor="#E7E7E7" style="width: 900px;color:000000">
                    <Standny:WebPager id="WebPager2" runat="server" OnPageChanged="WebPager2_PageChanged" PageSize="10">
                    </Standny:WebPager>          
               </td>          
              <td align="left" style="width: 50px"></td>
            </tr>
        </table>
   </asp:Panel>
   </td></tr>
   <tr><td>
</form>
<form action="yx_cerdpj.aspx" name="insertk" method="post">
         <asp:Panel ID="Panel2" Visible="false" runat="server" HorizontalAlign=Left>
         <input type="hidden" value="insert" name=action />
<%=addssband()%>

<table width="100%" height="61" border="0" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF">
  <tr>
    <td><strong>被评价人: <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></strong></td>
  </tr>
    <tr>
    <td><strong>相关物品: <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label></strong></td>
  </tr>
  <tr>
    <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="16%" rowspan="3"><strong>评价:</strong></td>
        <td width="84%">
          <label>
            <input type="radio" checked name="YX_pjtype" value="好评" />
            好评(加1分)</label></td>
      </tr>
      <tr>
        <td><label>
          <input type="radio" name="YX_pjtype" value="中评" />
          中评(不加份)</label></td>
      </tr>
      <tr>
        <td><label>
          <input type="radio" name="YX_pjtype" value="差评" />
          差评(扣一分)</label></td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td><table width="100%" height="116" border="0" cellpadding="0" cellspacing="0">
      <tr>
        <td width="16%"><strong>卖家问卷:</strong></td>
        <td width="84%"><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td><strong>联系方式:<br />
              你是通过卖家的什么联系方式交易的?</strong></td>
          </tr>
          <tr>
            <td><input type="radio" name="yx_lxfs" id="yx_lxfs"  value="腾讯QQ/TM" />
              腾讯QQ/TM</td>
          </tr>
          <tr>
            <td><input type="radio" name="yx_lxfs" value="固定电话或手机" />
              固定电话或手机</td>
          </tr>
          <tr>
            <td><input type="radio" name="yx_lxfs" value="Email" /> 
              Email
</td>
          </tr>
          <tr>
            <td><input type="radio" name="yx_lxfs" value="其它聊天工具" />
其它聊天工具 </td>
          </tr>
          <tr>
            <td><input type="radio" name="yx_lxfs" value="什么也联系不上" />
什么也联系不上 </td>
          </tr>
        </table><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td><strong>发货时间:<br />
              该交易从购买交易速度如何?</strong></td>
          </tr>
          <tr>
            <td><input type="radio" name="yx_fhsj" value="三天内发货" /> 
              三天内发货
</td>
          </tr>
          <tr>
            <td><input type="radio" name="yx_fhsj" value="一周内发货" />
一周内发货 </td>
          </tr>
          <tr>
            <td><input type="radio" name="yx_fhsj" value="二周内发货" />
二周内发货 </td>
          </tr>
          <tr>
            <td><input type="radio" name="yx_fhsj" value="二周以上才发货" />
二周以上才发货 </td>
          </tr>
          <tr>
            <td><input type="radio" name="yx_fhsj" value="根本就没有发货" /> 
              根本就没有发货
</td>
          </tr>
          <tr>
            <td>&nbsp;</td>
          </tr>
        </table><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td><strong>相符程度:<br />
              物品和你购买前和购买后得知的相符度?</strong></td>
          </tr>
          <tr>
            <td><input type="radio" name="yx_xfcd" value="相符" /> 
              相符
</td>
          </tr>
          <tr>
            <td><input type="radio" name="yx_xfcd" value="基本相符" />
基本相符 </td>
          </tr>
          <tr>
            <td><input type="radio" name="yx_xfcd" value="少部分相符" />
少部分相符 </td>
          </tr>
          <tr>
            <td><input type="radio" name="yx_xfcd" value="完全不相符" />
完全不相符 </td>
          </tr>
          <tr>
            <td>&nbsp;</td>
          </tr>
          <tr>
            <td>&nbsp;</td>
          </tr>
        </table><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td><strong>到达状态:<br />
              物品到达后是完好?</strong></td>
          </tr>
          <tr>
            <td><input type="radio" name="yx_ddzt" value="完好" /> 
              完好</td>
          </tr>
          <tr>
            <td><input type="radio" name="yx_ddzt" value="基本完好" />
基本完好 </td>
          </tr>
          <tr>
            <td><input type="radio" name="yx_ddzt" value="不完好，有损伤" />
不完好，有损伤 </td>
          </tr>

        </table><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td><strong>退货服务:<br />
              不用退货?</strong></td>
          </tr>
          <tr>
            <td><input type="radio" name="yx_thfw" value="不用退货" /> 
             不用退货</td>
          </tr>
          <tr>
            <td><input type="radio" name="yx_thfw" value="满意" />
  满意</td>
          </tr>
          <tr>
            <td><input type="radio" name="yx_thfw" value="不满意" />
不满意</td>
          </tr>

        </table></td>
        </tr>
    </table></td>
  </tr>
  <tr>
    <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="16%" rowspan="2"><strong>评论:</strong></td>
        <td width="84%"><strong>对于您的卖家,您还有什么要补充的吗?请注意不要超过50个汉字哦</strong></td>
      </tr>
      <tr>
        <td><textarea name="YX_sellcontent" cols="50" rows="4"></textarea></td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="16%">&nbsp;</td>
        <td width="84%">
            <input type="submit" value="提交" />&nbsp;<input type=reset value=重写></td>
      </tr>
    </table></td>
  </tr>
</table>
         </asp:Panel>
 
    </form>   
    <form action="yx_cerdpj.aspx" name="insertk" method="post">
         <asp:Panel ID="Panel4" Visible="false" runat="server" HorizontalAlign=Left>
         <input type="hidden" value="insert2" name=action />
<%=addssband2()%>

<table width="100%" height="61" border="0" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF">
  <tr>
    <td><strong>被评价人: <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label></strong></td>
  </tr>
    <tr>
    <td><strong>相关物品: <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
    </strong></td>
  </tr>
  <tr>
    <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="16%" rowspan="3"><strong>评价:</strong></td>
        <td width="84%">
          <label>
            <input type="radio" checked name="YX_pjtype" value="好评" />
            好评(加1分)</label></td>
      </tr>
      <tr>
        <td><label>
          <input type="radio" name="YX_pjtype" value="中评" />
          中评(不加份)</label></td>
      </tr>
      <tr>
        <td><label>
          <input type="radio" name="YX_pjtype" value="差评" />
          差评(扣一分)</label></td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td><table width="100%" height="116" border="0" cellpadding="0" cellspacing="0">
      <tr>
        <td width="16%"><strong>买家问卷:</strong></td>
        <td width="84%"><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td><strong>联系方式:<br />
              你是通过买家的什么联系方式交易的?</strong></td>
          </tr>
          <tr>
            <td><input type="radio" name="yx_lxfs" id="Radio1"  value="腾讯QQ/TM" />
              腾讯QQ/TM</td>
          </tr>
          <tr>
            <td><input type="radio" name="yx_lxfs" value="固定电话或手机" />
              固定电话或手机</td>
          </tr>
          <tr>
            <td><input type="radio" name="yx_lxfs" value="Email" /> 
              Email
</td>
          </tr>
          <tr>
            <td><input type="radio" name="yx_lxfs" value="其它聊天工具" />
其它聊天工具 </td>
          </tr>
          <tr>
            <td><input type="radio" name="yx_lxfs" value="什么也联系不上" />
什么也联系不上 </td>
          </tr>
        </table><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td><strong>付款时间:<br />
              该交易从购买交易速度如何?</strong></td>
          </tr>
          <tr>
            <td><input type="radio" name="yx_fhsj" value="三天内发货" /> 
              三天内付款
</td>
          </tr>
          <tr>
            <td><input type="radio" name="yx_fhsj" value="一周内发货" />
一周内付款 </td>
          </tr>
          <tr>
            <td><input type="radio" name="yx_fhsj" value="二周内发货" />
二周内付款 </td>
          </tr>
          <tr>
            <td><input type="radio" name="yx_fhsj" value="二周以上才发货" />
二周以上才付款 </td>
          </tr>
          <tr>
            <td><input type="radio" name="yx_fhsj" value="根本就没有发货" /> 
              根本就没有付款
</td>
          </tr>
          <tr>
            <td>&nbsp;</td>
          </tr>
        </table></td>
        </tr>
    </table></td>
  </tr>
  <tr>
    <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="16%" rowspan="2"><strong>评论:</strong></td>
        <td width="84%"><strong>对于您的买家,您还有什么要补充的吗?请注意不要超过50个汉字哦</strong></td>
      </tr>
      <tr>
        <td><textarea name="YX_sellcontent" cols="50" rows="4"></textarea></td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="16%">&nbsp;</td>
        <td width="84%">
            <input type="submit" value="提交" />&nbsp;<input type=reset value=重写></td>
      </tr>
    </table></td>
  </tr>
</table>
         </asp:Panel>
 
    </form>  
         
     </td></tr>
    </table></DIV>
    <div style="width: 100%; height: 100px">
    </div>
</TD>
  </tr>
    <tr>
        <td valign="top">
        </td>
        <td style="width: 6px">
        </td>
        <td valign="top" style="width: 100%">
        </td>
    </tr>
</table>

    <uc:Foot_vip ID="foot_vip3" runat="server"/>
</body>
</html>
