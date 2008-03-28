<%@ page language="C#" autoeventwireup="true" inherits="VipUser_leavingms, App_Web_xyjt5bop" enableeventvalidation="false" %>
<%@ Import Namespace="System.Data"%>
<%@ Register Src="Top_vip.ascx" TagName="Top_vip" TagPrefix="uc" %>
<%@ Register Src="Foot_vip.ascx" TagName="Foot_vip" TagPrefix="uc" %>
<%@ Register Src="Left_vip.ascx" TagName="Left_vip" TagPrefix="uc" %>

<%@ Register Assembly="Standny.WebControls" Namespace="Standny.WebControls" TagPrefix="Standny" %>



<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <style>
  #buyLink19 {
	background-color: #FEFAD8;
	color:#ffffff;
    }
    </style>
      <title>卖家回复-会员管理中心-<%=SetUrl() %></title>
</head>
<body><uc:Top_vip ID="top_vip1" runat="server" />
    <form id="form1" runat="server">
     
 <table  class="user_table" align=center>            
  <tr>
    <td id=myLeft valign=top style="width: 41px">
	<uc:Left_vip ID="left_vip2" runat="server" />
	</td>
	 <TD style="width: 5px"></TD>
	 
	<td valign=top>
	
 <table width="100%" border="0" cellpadding="0" cellspacing="0"  id="menu">
  <tr>
    <td width="30%"  id=top1><asp:LinkButton ID="LinkButton3" runat="server" CssClass="toptitle" OnClick="LinkButton1_Click">商品留言</asp:LinkButton></td>
    <td width="30%" id=top3><asp:LinkButton ID="LinkButton5" runat="server" CssClass="toptitle" OnClick="LinkButton5_Click">求购留言</asp:LinkButton></td>
    <td width="30%"  id=top2><asp:LinkButton ID="LinkButton4" runat="server" CssClass="toptitle" OnClick="LinkButton2_Click" >店铺留言</asp:LinkButton></td>
    <td width="10%">&nbsp;</td>
  </tr>
</table> 


        <asp:Panel ID="Panel1" Width=100% runat="server">
          <div style="padding-top:10px;">
        <asp:DataGrid ID="DataGrid1" runat="server" BorderStyle="dashed"  DataKeyField="YX_ID"  CellPadding="0" CellSpacing="0"  AutoGenerateColumns="False" ShowFooter="True" Width="100%" OnDeleteCommand="DataGrid1_DeleteCommand" >
        <Columns>
        <asp:TemplateColumn HeaderText="序号" Visible="False">
        <ItemTemplate><%#  DataBinder.Eval(Container.DataItem,"YX_ID") %></ItemTemplate>
            <HeaderStyle Width="10px"  BackColor="#F4F4F4"/>
        </asp:TemplateColumn >
        <asp:TemplateColumn HeaderText="商品名称">
        <ItemTemplate><a target="_blank" href="../ShowProduct.aspx?YX_MID=<%# DataBinder.Eval(Container.DataItem, "YX_proid") %>"><%# DataBinder.Eval(Container.DataItem, "yx_productname")%></a></ItemTemplate>
            <HeaderStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False"
                Font-Underline="False" HorizontalAlign="Center" VerticalAlign="Middle" Width="260px" />
        </asp:TemplateColumn>
        <asp:TemplateColumn HeaderText="卖家">
        <ItemTemplate><a href="../infouser.aspx?uin=<%# DataBinder.Eval(Container.DataItem,"YX_User")%>" target=_blank><%# DataBinder.Eval(Container.DataItem,"YX_User")%></a></ItemTemplate>
            <HeaderStyle Width="100px" />
        </asp:TemplateColumn>
        <asp:TemplateColumn HeaderText="留言时间">
        <ItemTemplate><%# DataBinder.Eval(Container.DataItem,"YX_voteTiem") %></ItemTemplate>
         <HeaderStyle Width="100px" />
        </asp:TemplateColumn>
          
        <asp:TemplateColumn HeaderText="留言状态"><ItemTemplate>
        <%#diszt2(Eval("YX_hfcontent").ToString(), Eval("YX_user").ToString())%>
      
        </ItemTemplate>
            
        </asp:TemplateColumn>
            <asp:ButtonColumn CommandName="Delete" Text="删除">
                <HeaderStyle Width="50px" />
            </asp:ButtonColumn>
       </Columns>
            <ItemStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False"
                Font-Underline="False" HorizontalAlign="Center" VerticalAlign="Middle" Height="25px" />
            <HeaderStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False"
                Font-Underline="False" HorizontalAlign="Center" VerticalAlign="Middle" BackColor="#F4F4F4" Height="25px" />
            <PagerStyle CssClass="height:25px" />
            <FooterStyle BackColor="#F4F4F4" Font-Bold="False" Font-Italic="False" Font-Overline="False"
                Font-Strikeout="False" Font-Underline="False" />
        </asp:DataGrid>
        <table border="0" cellpadding="0" cellspacing="0" style="width: 100%">
            <tr bgcolor="#E7E7E7">
                <td align="center" bgcolor="#E7E7E7" style="width: 100%;color:#000000">
                    <Standny:WebPager id="WebPager1" runat="server" OnPageChanged="WebPager1_PageChanged" PageSize="10">
                    </Standny:WebPager>
              </td>
              
            </tr>
        </table>
  
           <div class="note" style="width:98%">注：这里显示的是您给卖家的留言提示。卖家回复后，您可以点击“卖家已回复”，在商品页面看到卖家给您的回复。 如果您不想看到某条提示，可以选中它，点击“不再提示”。</div>	
    </div>
       
        </asp:Panel>
        <asp:Panel ID="Panel2" Style="width: 100%" runat="server" Visible="false" >
     
          <div style="margin-left:0px;margin-top:10px;">
        <asp:DataGrid ID="DataGrid2" runat="server" AutoGenerateColumns="False" DataKeyField="YX_ID" CellPadding=0 CellSpacing=0 ShowFooter="True" Width="100%" OnDeleteCommand="DataGrid1_DeleteCommand" BorderStyle="dashed"  >
        <Columns>
        <asp:TemplateColumn HeaderText="序号" Visible="False">
        <ItemTemplate><%#  DataBinder.Eval(Container.DataItem,"YX_ID") %></ItemTemplate>
            <HeaderStyle Width="10px"  BackColor="#F4F4F4"/>
        </asp:TemplateColumn >
            <asp:TemplateColumn HeaderText="店铺名称">
        <ItemTemplate>
        <a href="../showshop.aspx?uin=<%# DataBinder.Eval(Container.DataItem, "YX_user") %>">
        <%# DataBinder.Eval(Container.DataItem, "YX_SHOPname") %></a>
        
        </ItemTemplate>
            <HeaderStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False"
                Font-Underline="False" HorizontalAlign="Center" VerticalAlign="Middle" Width="260" />
        </asp:TemplateColumn>
        <asp:TemplateColumn HeaderText="卖家">
        <ItemTemplate><a href="../infouser.aspx?uin=<%# DataBinder.Eval(Container.DataItem,"YX_user")%>"><%# DataBinder.Eval(Container.DataItem,"YX_user")%></a></ItemTemplate>
            <HeaderStyle Width="100px" />
        </asp:TemplateColumn>    

        <asp:TemplateColumn HeaderText="留言时间">
        <ItemTemplate><%# DataBinder.Eval(Container.DataItem, "YX_voteTiem")%></ItemTemplate>
         <HeaderStyle Width="100px" />
        </asp:TemplateColumn>
        <asp:TemplateColumn HeaderText="留言状态"><ItemTemplate>
         <%#diszt(Eval("YX_hfcontent").ToString(), Eval("YX_user").ToString())%>
        </ItemTemplate>
            <HeaderStyle />
        </asp:TemplateColumn>
            <asp:ButtonColumn CommandName="Delete" Text="删除">
                <HeaderStyle Width="20px" />
            </asp:ButtonColumn>
       </Columns>
            <ItemStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False"
                Font-Underline="False" HorizontalAlign="Center" VerticalAlign="Middle" Height="25px" />
            <HeaderStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False"
                Font-Underline="False" HorizontalAlign="Center" VerticalAlign="Middle" BackColor="#F4F4F4" Height="25px" />
            <PagerStyle CssClass="height:25px" />
            <FooterStyle BackColor="#F4F4F4" Font-Bold="False" Font-Italic="False" Font-Overline="False"
                Font-Strikeout="False" Font-Underline="False" />
        </asp:DataGrid>
        <table border="0" cellpadding="0" cellspacing="0" style="width: 100%">
            <tr bgcolor="#e7e7e7">
                <td align="center" bgcolor="#e7e7e7" style="width: 100%;color:#000000">
                    <Standny:WebPager id="WebPager2" runat="server" OnPageChanged="WebPager2_PageChanged" PageSize="10">
                    </Standny:WebPager>
                   
            
             
               </td>
          
               
            </tr>
        </table>
  
           <div class="note" style="width:98%">注：这里显示的是您给卖家的留言提示。卖家回复后，您可以点击“卖家已回复”，在商品页面看到卖家给您的回复。 如果您不想看到某条提示直接删除。</div>	
    </div>
       
        </asp:Panel>
        
        <asp:Panel ID="Panel3" Width=100% runat="server" Visible="false">
          <div style="padding-top:10px;">
        <asp:DataGrid ID="DataGrid3" runat="server" BorderStyle="dashed"  DataKeyField="YX_ID"  CellPadding="0" CellSpacing="0"  AutoGenerateColumns="False" ShowFooter="True" Width="100%" OnDeleteCommand="DataGrid1_DeleteCommand" >
        <Columns>
        <asp:TemplateColumn HeaderText="序号" Visible="False">
        <ItemTemplate><%#  DataBinder.Eval(Container.DataItem,"YX_ID") %></ItemTemplate>
            <HeaderStyle Width="10px"  BackColor="#F4F4F4"/>
        </asp:TemplateColumn >
        <asp:TemplateColumn HeaderText="商品名称">
        <ItemTemplate><a target="_blank" href="../ShowBuyProduct.aspx?YX_MID=<%# DataBinder.Eval(Container.DataItem, "YX_proid") %>"><%# DataBinder.Eval(Container.DataItem, "yx_productname")%></a></ItemTemplate>
            <HeaderStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False"
                Font-Underline="False" HorizontalAlign="Center" VerticalAlign="Middle" Width="260px" />
        </asp:TemplateColumn>
        <asp:TemplateColumn HeaderText="卖家">
        <ItemTemplate><a href="../infouser.aspx?uin=<%# DataBinder.Eval(Container.DataItem,"YX_User")%>" target=_blank><%# DataBinder.Eval(Container.DataItem,"YX_User")%></a></ItemTemplate>
            <HeaderStyle Width="100px" />
        </asp:TemplateColumn>
        <asp:TemplateColumn HeaderText="留言时间">
        <ItemTemplate><%# DataBinder.Eval(Container.DataItem,"YX_voteTiem") %></ItemTemplate>
         <HeaderStyle Width="100px" />
        </asp:TemplateColumn>           
        <asp:TemplateColumn HeaderText="留言状态"><ItemTemplate>
        <%# diszt3(Eval("YX_hfcontent").ToString(),Eval("yx_proid").ToString())%>             
        </ItemTemplate>             
        <HeaderStyle />
        </asp:TemplateColumn>
            <asp:ButtonColumn CommandName="Delete" Text="删除">
                <HeaderStyle Width="50px" />
            </asp:ButtonColumn>
       </Columns>
            <ItemStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False"
                Font-Underline="False" HorizontalAlign="Center" VerticalAlign="Middle" Height="25px" />
            <HeaderStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False"
                Font-Underline="False" HorizontalAlign="Center" VerticalAlign="Middle" BackColor="#F4F4F4" Height="25px" />
            <PagerStyle CssClass="height:25px" />
            <FooterStyle BackColor="#F4F4F4" Font-Bold="False" Font-Italic="False" Font-Overline="False"
                Font-Strikeout="False" Font-Underline="False" />
        </asp:DataGrid>
        <table border="0" cellpadding="0" cellspacing="0" style="width: 100%">
            <tr bgcolor="#E7E7E7">
                <td align="center" bgcolor="#E7E7E7" style="width: 100%;color:#000000">
                    <Standny:WebPager id="WebPager3" runat="server" OnPageChanged="WebPager3_PageChanged" PageSize="10">
                    </Standny:WebPager>
              </td>
              
            </tr>
        </table>
  
           <div class="note" style="width:98%">注：这里显示的是您给卖家的留言提示。卖家回复后，您可以点击“卖家已回复”，在商品页面看到卖家给您的回复。 如果您不想看到某条提示，可以选中它，点击“不再提示”。</div>	
    </div>
       
        </asp:Panel>
   </td></tr></table>
    </form>
    <%=skin()%>
    
       <uc:Foot_vip ID="foot_vip3" runat=server />
</body>
</html>
