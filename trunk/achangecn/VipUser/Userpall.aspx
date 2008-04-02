<%@ page language="C#" autoeventwireup="true" inherits="UserDetail, App_Web_3qmm6zcm" %>
<%@ Register Src="Top_vip.ascx" TagName="Top_vip" TagPrefix="uc" %>
<%@ Register Src="Foot_vip.ascx" TagName="Foot_vip" TagPrefix="uc" %>
<%@ Register Src="Left_vip.ascx" TagName="Left_vip" TagPrefix="uc" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >

<head id="Head1" runat="server">
    <title>类别标记管理-会员管理中心-<%=SetUrl() %></title>
    <LINK href="../Skin/Skin4/index.css" type="text/css" rel="stylesheet" >
    <LINK href="../Skin/Skin4/vip.css" type=text/css rel="stylesheet">
<script language="javascript" src="../include/yz.js"></script>
 <script src="../Include/area.js" language=javascript></script>
    <style>
   #LI23 {
	background-color: #FEFAD8;
	color:#ffffff;
    }
    .inputwidth{
        width:120px;
    }
    .message{
    text-align:left;
    padding-left:10px;
    }
    </style>
</head>
<body>
 <uc:Top_vip ID="top_vip1" runat="server" />
    <form id="form_basic_admin" runat="server" method="post" action="UserDetail.aspx">
        &nbsp;
    
     <table class="user_table" align="center">

    
  <tr>
    <td id=myLeft valign=top style="width: 41px">
	<uc:Left_vip ID="left_vip2" runat="server" />
	</td>
	 <TD style="width: 5px"></TD>
	 
	<td style=" vertical-align:top;">
	 <div >
        <div class="DivMain" style=" width: 100%">
            物品类别标记管理</div>
            <div class="divFoot">
                <asp:Panel ID="Panel1" runat="server" Width="600px">
                   <table width=100%><tr><td style="height: 23px">标记序号：<asp:Label ID="Label1" runat="server" ForeColor=red></asp:Label></td>
                   <td style="height: 23px">物品类别：<asp:Label ID="Label2" runat="server" ForeColor=Blue></asp:Label></td>
                   <td style="height: 23px">标记名称：<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
                   <td style="height: 23px"><asp:Button ID="Button1" runat="server" Text="修改" OnClick="Button1_Click" /></td>
                   </tr></table> 
                </asp:Panel></div>
       <asp:DataGrid ID="dg1" AutoGenerateColumns="False" runat="server"  Width="100%"   >
                   <HeaderStyle Height="25px" BackColor="#3270C5" />
                 <ItemStyle BackColor="#F6F6F6" />
                   <Columns>
              
			      <asp:TemplateColumn HeaderText="ID" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center">
                <ItemTemplate >
			 <%#Eval("yx_id") %>
                </ItemTemplate>
                      <HeaderStyle CssClass="F" HorizontalAlign="Center"  />
             </asp:TemplateColumn>
             <asp:TemplateColumn HeaderText="标记名称" HeaderStyle-HorizontalAlign="Center">
                <ItemTemplate >
				<table align="center"><tr>
				<td>
			<%#Eval("yx_name") %>
				</td>
            </tr></table>
             </ItemTemplate>
                 <HeaderStyle CssClass="F" />
             </asp:TemplateColumn>
			  <asp:TemplateColumn HeaderText="物品类别" HeaderStyle-HorizontalAlign="Center">
                <ItemTemplate >
				<table align="center"><tr>
				<td>
				<%#Eval("yx_classname")%>
				</td>
                </tr></table>
                </ItemTemplate>
                  <HeaderStyle CssClass="F" />
             </asp:TemplateColumn>               
			   <asp:TemplateColumn HeaderText="管理选项" HeaderStyle-HorizontalAlign="Center">
                <ItemTemplate >
				<table align="center"><tr>
				<td>
			
				 <a href="Userpall.aspx?Flag=edit&YX_ID=<%#Eval("yx_id")%>"><img src="../Skin/skin5/IMAGES/icon_edit.gif" style="border:0"  alt="编辑"/></a>  <a href="../Productlist.aspx?ClassId=<%#Eval("yx_classid")%>"><img src="../Skin/skin5/IMAGES/icon_view.gif" style="border:0" alt="查看" /></a>  <a href="Userpall.aspx?Flag=Del&YX_ID=<%#Eval("yx_id")%>" onclick="return isdel()"><img src="../Skin/skin5/IMAGES/no.gif" style="border:0" alt="删除" /></a>
				</td>
                </tr></table>
                </ItemTemplate>
                   <HeaderStyle CssClass="F" />
             </asp:TemplateColumn>
            
            </Columns>
    <PagerStyle Visible="False" />

            
      </asp:DataGrid>&nbsp;
    
    </div></td>
	 </tr></table>
	 
    </form>
            <uc:Foot_vip ID="foot_vip3" runat="server" />
</html>
