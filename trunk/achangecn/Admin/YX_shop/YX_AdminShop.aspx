<%@ page language="C#" autoeventwireup="true" inherits="Admin_YX_Shop_YX_AdminShop, App_Web_hzrmr9fw" %>
<%@ Register  Src="../Admin_Btm.ascx" TagName="ChangHope_btm" TagPrefix="Chp" %>
<%@ Register TagPrefix="ChangeHope" TagName="Chklogin" Src="~/Admin/YX_CheckLogin.ascx" %>
  <ChangeHope:Chklogin _Column="4" ID="chk1" runat="server" />
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
<title>无标题页</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" href="../style/style.css" type="text/css" />
<script language="javascript" type="text/javascript" src="../style/JScript.js"></script>
</head>
<script language="javascript" type="text/javascript">
var xmlHttp;

function createXMLHttpRequest()
{
if(window.ActiveXObject)
{ 
xmlHttp = new ActiveXObject("Microsoft.XMLHTTP");
}
else if(window.XMLHttpRequest)
{
xmlHttp = new XMLHttpRequest();
}
}
function checkname(){

var name=document.getElementById("AddUserName").value;
url = "CheckUserName.aspx?Uname="+name;
xmlHttp.open("GET",url,true);
xmlHttp.onreadystatechange = docheckname;
xmlHttp.send(null);
return false;}
function docheckname(){
if(xmlHttp.readyState==4)
{
if(xmlHttp.responseText=="False"){
document.getElementById("showare").innerText="可以注册";
}
else{
document.getElementById("showare").innerText="用户名存在";
}
}
}

    function selectshop(){
    var keyword=document.getElementById('keyword').value;
    var searchtype=document.getElementById('searchtype').value;
    document.getElementById("form1").action="?keyword="+keyword+"&searchtype="+searchtype;
    document.form1.submit();
    }
</script>
<body onLoad="createXMLHttpRequest()" >
<table width="100%" border="0" cellpadding="0" cellspacing="0" bgcolor="#C4D8ED">
<tr>
<td><img src="../images/r_1.gif" alt="" /></td>
<td width="100%" background="../images/r_0.gif"></td>
<td><img src="../images/r_2.gif" alt="" /></td>
</tr>
<tr><td></td><td>
    <form id="form1" runat="server">
    <div>
    <table  align="center" cellpadding="4" cellspacing="1" border="0" width=100%  class="toptable grid">
         <tr>
          <td height="25" class="category t2" width=100>店铺管理</td>
         <td class="category">
             <asp:HyperLink ID="HyperLink1" NavigateUrl="?Stat=regOk" runat="server">[推荐的店铺]</asp:HyperLink>
             <asp:HyperLink ID="HyperLink2" NavigateUrl="YX_AdminShop.aspx" runat="server">[全部店铺]</asp:HyperLink>
           </td>
        </tr>
 </table>  
        <asp:Panel ID="Panel1" runat="server">
        <table width="100%" height="25" border="0" cellpadding="2" cellspacing="2">
            <tr>
            <td height="25" class="category" width=100>搜索</td>
              <td class="category" > 
                关键字:<input type=text name=keyword id=keyword/>
                查询类别<select name=searchtype><option value=1 selected>ID号</option><option value=2>账号</option><option value=3>店铺名称</option></select>
                <input type=button value=查询 onclick='selectshop()' onmousemove=showBtnOver(this) onmouseout=showBtnOut(this) Class="submitMiniGreen" >               </td>  
            </tr>
          </table>
          <table width="100%" border="0" cellspacing="0" cellpadding="0" align="center">
  <tr>
    <td width="100%">
	<asp:DataGrid ID="dg1" AutoGenerateColumns="False" CellPadding="1" CellSpacing="1" PageSize="20"  runat="server"  Width="100%" AllowPaging="True" border=0 OnItemDataBound="dg1_ItemDataBound" > <HeaderStyle  CssClass="topbg" Height="25px"  HorizontalAlign="Center" />
                 <ItemStyle BackColor="#F6F6F6" Height="25px" HorizontalAlign="Center" />
                   <Columns>
               <asp:TemplateColumn HeaderText="选   择">
                <ItemTemplate >
				
				 <input id="YX_CH" name="YX_CH" type="checkbox" style="border:0 " value="<%# DataBinder.Eval(Container.DataItem,"YX_ShopID") %>"  />
				
                </ItemTemplate>
                      <HeaderStyle CssClass="B" />
             </asp:TemplateColumn>
              <asp:TemplateColumn HeaderText="I  D">
                <ItemTemplate >
			<%# DataBinder.Eval(Container.DataItem,"YX_ShopID") %>
				
                </ItemTemplate>
                      <HeaderStyle CssClass="B" />
             </asp:TemplateColumn>
			      <asp:TemplateColumn HeaderText="帐号">
                <ItemTemplate >
		    <%# DataBinder.Eval(Container.DataItem, "yx_shopuser")%>
				
                </ItemTemplate>
                      <HeaderStyle CssClass="B" />
             </asp:TemplateColumn>
             <asp:TemplateColumn HeaderText="店铺名称">
                <ItemTemplate >	
			<%# DataBinder.Eval(Container.DataItem,"YX_ShopName") %>
				                </ItemTemplate>
                  <HeaderStyle CssClass="B" />
             </asp:TemplateColumn>
             <asp:TemplateColumn HeaderText="状态(√开启)">
                <ItemTemplate >	 
				<a href="?YX_FS=Tag&YX_MID=<%#Eval("YX_ShopID") %>&ShopFlag=<%#Eval("YX_ShopFlag")%>"><%# Ret_stat(Convert.ToInt16(Eval("YX_ShopFlag")), "开启")%></a>
                </ItemTemplate>
                      <HeaderStyle CssClass="B" />
             </asp:TemplateColumn>
			  
              <asp:TemplateColumn HeaderText="主营项目">
                <ItemTemplate >
			<%# DataBinder.Eval(Container.DataItem,"YX_Shopproject") %>
                </ItemTemplate>
                  <HeaderStyle CssClass="B" />
             </asp:TemplateColumn>
             <asp:TemplateColumn HeaderText="属性">
                <ItemTemplate >
			<a href="?YX_FS=Tj&YX_MID=<%#Eval("YX_ShopID") %>&Tj=<%#Eval("yx_shoptj")%>"><%#  SelRank(Convert.ToInt16(DataBinder.Eval(Container.DataItem, "YX_shoptj")))%></a>
                </ItemTemplate>
                  <HeaderStyle CssClass="B" />
             </asp:TemplateColumn>
             <asp:TemplateColumn HeaderText="操　　作">
                <ItemTemplate >					
				<a href="?YX_FS=Login&YX_MID=<%#Eval("YX_shopuserID") %>" target=_blank><img src="../../Skin/skin5/IMAGES/icon_view.gif" alt="进入后台管理" style="border:0" /></a>
				<a href="?YX_FS=Del&YX_MID=<%#Eval("YX_ShopID") %>" onClick="return isdel()"><img src="../../Skin/skin5/IMAGES/no.gif" alt="删除" style="border:0" /></a>		
                </ItemTemplate>
                  <HeaderStyle CssClass="B" />
             </asp:TemplateColumn>			 
            </Columns>
    <PagerStyle Visible="False" />          
      </asp:DataGrid>
      
      </td>
  </tr>
  <tr>
    <td> <table border="0" cellpadding="0" cellspacing="0" style="width: 100%">
            <tr bgcolor="#E7E7E7">
                <td align="center" bgcolor="#E7E7E7" style="width: 900px;color:#000000">
                    <asp:Label ID="Label1" CssClass="font1" runat="server" Text="Label"></asp:Label>
                    <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label> 
                   <asp:HyperLink ID="start" runat="server" ForeColor="#000000">首　页</asp:HyperLink>

                    <asp:HyperLink ID="prev" runat="server" ForeColor="#000000"> 上一页</asp:HyperLink>
                    &nbsp;
                      <asp:HyperLink ID="next" runat="server" ForeColor="#000000">下一页</asp:HyperLink>
                     &nbsp;
                      <asp:HyperLink ID="max" runat="server" ForeColor="#000000">末　页</asp:HyperLink>
                    <span class="font1">转向</span>         
                    <asp:DropDownList ID="iPage" runat="server" AutoPostBack="True" OnSelectedIndexChanged="sic">
              </asp:DropDownList> <input id="chkall" type="checkbox" onClick="CheckAll(this.form)" style="border:0 " />全选</td>
              <td align="left">
  </td><td align="left" bgcolor="#E7E7E7" style="width: 180px">
                    <asp:DropDownList ID="DropDownList1" runat="server">
                   <asp:ListItem Value="0">-批量开启(本页)-</asp:ListItem>  
                     <asp:ListItem Value="1">-批量关闭(本页)-</asp:ListItem>           
                      <asp:ListItem Value="5">-批量推荐(本页)-</asp:ListItem> 
                      <asp:ListItem Value="4">-批量不推荐(本页)-</asp:ListItem> 
                       <asp:ListItem Value="2">-全部关闭-</asp:ListItem>     
                        <asp:ListItem Value="3">-全部开启-</asp:ListItem>   
                    </asp:DropDownList>
                  </td>
                <td align="center" style="width: 50px"><asp:Button ID="Button2" runat="server" Text="执行操作" OnClientClick="return isExc()" OnClick="Button2_Click" onmousemove=showBtnOver(this) onmouseout=showBtnOut(this)  CssClass="submitMiniGreen"  />
                </td>
            </tr>
        </table></td>
  </tr>
</table>
        </asp:Panel>

    </div>
    </form>
      </td><td></td>
</tr>   
<tr>
<td><img src="../images/r_4.gif" alt="" /></td>
<td></td>
<td><img src="../images/r_3.gif" alt="" /></td>
</tr>
</table>
<Chp:ChangHope_btm ID="chp1" runat="server" />
</body>
</html>
