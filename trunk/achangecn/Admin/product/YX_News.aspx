<%@ page language="C#" autoeventwireup="true" inherits="Admin_channel_YX_News, App_Web_tpcas5-9" %>
<%@ Register  Src="../Admin_Btm.ascx" TagName="ChangHope_btm" TagPrefix="Chp" %>
<%@ Register TagPrefix="ChangHope" TagName="NewsClass" Src="~/Admin/channel/Article_Class.ascx" %>
<%@ Register TagPrefix="ChangeHope" TagName="News" Src="~/Admin/NewsClass.ascx" %>
 <%@ Register TagPrefix="ChangeHope" TagName="Chklogin" Src="~/Admin/YX_CheckLogin.ascx" %>

  <ChangeHope:Chklogin _Column="37" ID="chk1" runat="server" />
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>无标题页</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" /><style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
}
-->
</style>
<link rel="stylesheet" href="../CSS.css" type="text/css" />
<script language="javascript">
function OnClientUpLoadFileEnd(path)
{
    var control = document.getElementById("ddlFileUrl");
    var control2 = document.getElementById("txtPicUrl");
    if(control && path)
    {
        control.options[control.length] = new Option(path, path);
    }
    if(control2 && path && control2.value == "")
    {
        control2.value = path;
    }
}
</script> 
<script language="javascript" src="../../Include/JScript.js" type="text/jscript"></script>
</head>
<body>   
    <form id="form1" runat="server">
       <asp:Panel ID="Panel1" runat="server" width="100%">
   
		  <table width="100%" height="25" border="0" cellpadding="0" cellspacing="0">
            <tr>
              <td align="center" background="../images/YX_Bg.jpg" class="style3" style="width: 100%">文章添加</td>
            </tr>
          </table>
		  <table width="100%" height="5" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td></td>
  </tr>
</table>

		  <table width="100%" height="446" border="0" align="center" cellpadding="1" cellspacing="1" id="TABLE1" >
            <tr>
              <td align="center" bgcolor="#3270C5" class="F" style="width: 114px">设置名称</td>
              <td height="25" align="center" bgcolor="#3270C5" class="F" style="width:660px">基本参数设置</td>
              <td width="10%" align="center" bgcolor="#3270C5" class="F">设置说明</td>
            </tr>
            <tr>
              <td align="center" bgcolor="#F6F6F6" style="width: 114px">所属分类：</td>
              <td height="25" align="left" bgcolor="#F6F6F6" style="width: 660px"><ChangHope:NewsClass ID="news" runat="server" /></td>
              <td bgcolor="#F6F6F6">&nbsp;</td>
            </tr>
            <tr>
              <td align="center" bgcolor="#F6F6F6" style="width: 114px; height: 25px;">
                  标题：</td>
              <td align="left" bgcolor="#F6F6F6" style="height: 25px; width: 660px;">
              <asp:TextBox ID="CH2" runat="server" Width="395px"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="CH2"
                      ErrorMessage="该项必须填写"></asp:RequiredFieldValidator></td>
              <td bgcolor="#F6F6F6" style="height: 25px">&nbsp;</td>
            </tr>
          
          
            <tr>
              <td align="center" bgcolor="#F6F6F6" style="width: 114px">标识：</td>
              <td height="25" align="left" bgcolor="#F6F6F6" style="width: 660px" >
                 
                  <input id="CH14" type="checkbox" runat="server" style="border:0" name="CH5"/>热点
                  <input id="CH16" type="checkbox" runat="server" style="border:0" name="CH5"/>置顶
                  <input id="CH15" type="checkbox" runat="server" style="border:0" name="CH5"/>推荐
                    <input id="Checkbox2" type="checkbox" runat="server" style="border:0" name="CH5"/>首页图片</td>
              <td bgcolor="#F6F6F6">&nbsp;
            </td>
            </tr>
            <tr>
              <td align="center" bgcolor="#F6F6F6" style="width: 114px">首页图片：</td>
              <td height="25" align="left" valign="middle" bgcolor="#F6F6F6" style="width: 660px">
                <table>
                <tr>
                <td>
                <input name="imgUrl" type="text" id="imgUrl" runat="server" style="width: 163px" />
          
                </td>
                <td>
                <iframe id="upfile" src="../YX_Product/YX_UpFile.aspx" scrolling="no" frameborder="0" width="300px" height="25"></iframe>
                </td>
                </tr>
                </table></td>
              <td bgcolor="#F6F6F6">&nbsp;</td>
            </tr>
           
            <tr>
              <td align="center" bgcolor="#F6F6F6" style="height: 300px; width: 114px;">新闻内容：</td>
              <td bgcolor="#F6F6F6" style="height: 264px; width: 660px;">
           </td>
              <td bgcolor="#F6F6F6" style="height: 264px">&nbsp;</td>
            </tr>

              <tr>
                <td align="center" bgcolor="#f6f6f6" style="height: 27px; width: 114px;">
                    审核：</td>
                <td align="left" bgcolor="#f6f6f6" style="height: 27px; width: 660px;">
                    <asp:CheckBox ID="CheckBox1" runat="server" Text="审核" />
                    <asp:HiddenField ID="HiddenField1" runat="server" />
                </td>
                <td bgcolor="#f6f6f6" style="height: 27px"></td>
              </tr>
            
            <tr>
              <td align="center" bgcolor="#F6F6F6" style="width: 114px"></td>
              <td height="25" bgcolor="#F6F6F6" align="center" style="width: 660px" >&nbsp;<asp:Button ID="Button1" runat="server" Text="添   加" Width="104px" OnClick="Button1_Click" />
                  <input type="button" Width="104px" value="返回上一级" onclick="history.back()" /></td>
              <td bgcolor="#F6F6F6">&nbsp;</td>
            </tr>
              <tr>
                  <td align="center" colspan="3">
                    <Chp:ChangHope_btm ID="chp" runat="server" />                  </td>
              </tr>
          </table> 
		</asp:Panel>
		
        <asp:Panel ID="Panel2" runat="server" width="100%">
         <table width="100%" height="25" border="0" cellpadding="0" cellspacing="0">
            <tr>
              <td align="center" background="../images/YX_Bg.jpg" class="style3">文章管理</td>
            </tr>
          </table>
		  <table width="100%" height="5" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td></td>
  </tr>
</table>
<table width="100%" height="25" border="0" cellpadding="2" cellspacing="2" >
            <tr>
              <td align="right" class="style3" style="width:150px">&nbsp;&nbsp;&nbsp;按类别查询：</td>
                <td align="left" class="style3" style="width:100px"><ChangHope:NewsClass ID="chnews" runat="server" /></td>  
                 <td align="left" class="style3">
                    <asp:Button ID="Button3" runat="server" Text="查　询" OnClick="Button3_Click" />         
                      </td>  
                <td align="right" class="style3">
                   </td>
                
                
            </tr>
          </table>
		
<table width="100%" border="0" cellspacing="0" cellpadding="0" align="center">
  <tr>
    <td width="100%">
	<asp:DataGrid ID="dg1" AutoGenerateColumns="False" PageSize="20"  runat="server"  Width="100%" AllowPaging="True" OnItemDataBound="dg1_ItemDataBound"  CellPadding="0" CellSpacing="0">
                   <HeaderStyle Height="30px" BackColor="#3270C5" HorizontalAlign="Center" />
                 <ItemStyle  Height="25px" HorizontalAlign="Center" />
                   <Columns>
               <asp:TemplateColumn HeaderText="选   择">
                <ItemTemplate >
				
				 <input id="YX_CH" name="YX_CH" type="checkbox" style="border:0 " value="<%# DataBinder.Eval(Container.DataItem,"YX_ID") %>"  />
				
                </ItemTemplate>
                      <HeaderStyle CssClass="F" />
             </asp:TemplateColumn>
              <asp:TemplateColumn HeaderText="I  D">
                <ItemTemplate >
				
				<%# DataBinder.Eval(Container.DataItem,"YX_ID") %>
				
                </ItemTemplate>
                      <HeaderStyle CssClass="F" />
             </asp:TemplateColumn>
			      <asp:TemplateColumn HeaderText="所属分类">
                <ItemTemplate >
				
				<%# Ret_name(Convert.ToInt16(DataBinder.Eval(Container.DataItem, "YX_NewsClass")))%>
				
                </ItemTemplate>
                      <HeaderStyle CssClass="F" />
             </asp:TemplateColumn>
             <asp:TemplateColumn HeaderText="新闻标题">
                <ItemTemplate >
				
			<a href="YX_EditNews.aspx?YX_MID=<%#DataBinder.Eval(Container.DataItem, "YX_ID")%>"><%# DataBinder.Eval(Container.DataItem, "YX_NewsTitle")%></a>
				
             </ItemTemplate>
                 <HeaderStyle CssClass="F" />
             </asp:TemplateColumn>
			  <asp:TemplateColumn HeaderText="状　　态">
                <ItemTemplate >
	<%#Ret_stat(Convert.ToInt16(Eval("YX_Stat1")), "热点")%>
		<%#Ret_stat(Convert.ToInt16(Eval("YX_Stat2")), "置顶")%>	
			<%#Ret_stat(Convert.ToInt16(Eval("YX_Stat3")), "推荐")%>	
			<%#Ret_stat(Convert.ToInt16(Eval("YX_NewsSH")), "审核")%>
                </ItemTemplate>
                  <HeaderStyle CssClass="F" />
             </asp:TemplateColumn>
             
             <asp:TemplateColumn HeaderText="操　　作">
                <ItemTemplate >
				
				<a href="YX_EditNews.aspx?YX_MID=<%#DataBinder.Eval(Container.DataItem, "YX_ID")%>&ChannelID=<%#Eval("YX_ChannelID") %>">修改</a>
				<a href="../../YX_ShowNews.aspx?YX_ID=<%#DataBinder.Eval(Container.DataItem, "YX_ID")%>"> 预览 </a>
			
				 <a href="?YX_FS=Del&YX_MID=<%#DataBinder.Eval(Container.DataItem, "YX_ID")%>&ChannelID=<%#Eval("YX_ChannelID") %>" onclick="return isdel()">　删除</a>
				
                </ItemTemplate>
                  <HeaderStyle CssClass="F" />
             </asp:TemplateColumn>
			               <asp:TemplateColumn HeaderText="添加时间">
                <ItemTemplate >
				
					<%#DataBinder.Eval(Container.DataItem, "YX_AddTime")%>
				
                </ItemTemplate>
                  <HeaderStyle CssClass="F" />
             </asp:TemplateColumn>
            </Columns>
    <PagerStyle Visible="False" />

            
      </asp:DataGrid>
      
      </td>
  </tr>
  <tr>
    <td> <table border="0" cellpadding="0" cellspacing="0" style="width: 100%">
            <tr bgcolor="#E7E7E7">
                <td align="center" bgcolor="#E7E7E7" style="width: 900px;color:000000">
                    <asp:Label ID="Label1" CssClass="font1" runat="server" Text="Label"></asp:Label>
                    <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>  &nbsp; 
                   <asp:HyperLink ID="start" runat="server" ForeColor="#000000">首　页</asp:HyperLink>
                      &nbsp;
                    <asp:HyperLink ID="prev" runat="server" ForeColor="#000000"> 上一页</asp:HyperLink>
                    &nbsp;
                      <asp:HyperLink ID="next" runat="server" ForeColor="#000000">下一页</asp:HyperLink>
                     &nbsp;
                      <asp:HyperLink ID="max" runat="server" ForeColor="#000000">末　页</asp:HyperLink>
                    <span class="font1">转向</span>         
                    <asp:DropDownList ID="iPage" runat="server" AutoPostBack="True" OnSelectedIndexChanged="sic">
              </asp:DropDownList> <input id="chkall" type="checkbox" onclick="CheckAll(this.form)" style="border:0 " />全选</td>
              <td align="left" style="width: 50px">
  </td>
                <td align="left" bgcolor="#E7E7E7" style="width: 180px">
                    <asp:DropDownList ID="DropDownList1" runat="server">
                   <asp:ListItem Value="0">---批量审核(本页)---</asp:ListItem>  
                       <asp:ListItem Value="10">---批量解除审核(本页)---</asp:ListItem>               
                     <asp:ListItem Value="1">---批量删除(本页)---</asp:ListItem>
                     <asp:ListItem Value="4">---批量热点 (本页)---</asp:ListItem>
                     <asp:ListItem Value="5">---批量解除热点 (本页)---</asp:ListItem>  
                      <asp:ListItem Value="2">---批量置顶 (本页)---</asp:ListItem>
                     <asp:ListItem Value="3">---批量解除置顶 (本页)---</asp:ListItem>       
                       <asp:ListItem Value="6">---批量推荐 (本页)---</asp:ListItem>
                     <asp:ListItem Value="7">---批量解除推荐 (本页)---</asp:ListItem>
                       <asp:ListItem Value="8">---全部删除---</asp:ListItem>     
                        <asp:ListItem Value="9">---全部审核---</asp:ListItem>   
                    </asp:DropDownList>
                  </td>
                <td align="center" style="width: 50px"><asp:Button ID="Button2" runat="server" Text="执行操作" OnClientClick="return isExc()" onmousemove=showBtnOver(this) onmouseout=showBtnOut(this)  CssClass="submitMiniGreen"  OnClick="Button2_Click" />
                </td>
            </tr>
        </table></td>
  </tr>
  <tr>
    <td>  <Chp:ChangHope_btm ID="chp1" runat="server" /></td>
  </tr>
</table>
        </asp:Panel>
   
    </form>
</body>
</html>
