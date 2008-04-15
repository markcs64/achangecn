<%@ page language="C#" autoeventwireup="true" inherits="Admin_YX_user_YX_AdminUser, App_Web_ezi-zx_s" %>
<%@ Register  Src="../Admin_Btm.ascx" TagName="ChangHope_btm" TagPrefix="Chp" %>
<%@ Register TagPrefix="ChangeHope" TagName="Chklogin" Src="~/Admin/YX_CheckLogin.ascx" %>
  <ChangeHope:Chklogin _Column="3" ID="chk1" runat="server" />
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

function reform(){
    var keyword=document.getElementById('keyword').value;
    var searchtype=document.getElementById('searchtype').value;
    window.location.href="?Stat=search&keyword="+keyword+"&searchtype="+searchtype
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
  
        <asp:Panel ID="Panel1" runat="server">
		    <table  align="center" cellpadding="4" cellspacing="1" border="0" width=100%  class="toptable grid">
         <tr>
          <td height="25" class="category t2" width=100>会员管理</td>
         <td class="category">
             <asp:HyperLink ID="HyperLink1" NavigateUrl="?Stat=reging" runat="server">[正在申请审核的会员]</asp:HyperLink>
             <asp:HyperLink ID="HyperLink2" NavigateUrl="?Stat=regOk" runat="server">[通过审核的会员]</asp:HyperLink>
			 <asp:HyperLink ID="HyperLink3" NavigateUrl="YX_AdminUser.aspx" runat="server">[全部会员]</asp:HyperLink>
           </td>
        </tr>
        <tr>
          <td height="25" class="category" width=100>搜索</td>
         <td class="category">             
			关键字：<input type=text name=keyword id=keyword />
			查询类别：
			<select name=searchtype>
			<option value=1>ID号</option>
			<option value=2>账号名称</option>
			<option value=3>已审核</option>
			<option value=4>未审核</option>
			<option value=5>未冻结</option>
			<option value=6>已冻结</option>
			<option value=7>注册会员</option>
			<option value=8>通过审核会员</option>
			</select>
			<input onmousemove=showBtnOver(this) onmouseout=showBtnOut(this) onClick="return reform()"  Class="submitMiniGreen"  type=button value=搜索 />
           </td>
        </tr>
 </table>
            <table width="100%" border="0" cellspacing="0" cellpadding="0" align="center">
  <tr>
    <td width="100%">
	<asp:DataGrid ID="dg1" AutoGenerateColumns="False" CellPadding="1" CellSpacing="1" PageSize="20"  runat="server"  Width="100%" AllowPaging="True" border=0 OnItemDataBound="dg1_ItemDataBound" > <HeaderStyle Height="25px"  CssClass="topbg" HorizontalAlign="Center" />
                 <ItemStyle BackColor="#F6F6F6" Height="25px" HorizontalAlign="Center" />
                   <Columns>
               <asp:TemplateColumn HeaderText="选   择">
                <ItemTemplate >
				
				 <input id="YX_CH" name="YX_CH" type="checkbox" style="border:0 " value="<%# DataBinder.Eval(Container.DataItem,"YX_UserID") %>"  />
				
                </ItemTemplate>
                      <HeaderStyle CssClass="B" />
             </asp:TemplateColumn>
              <asp:TemplateColumn HeaderText="I  D" ItemStyle-Width="10%">
                <ItemTemplate >
			<%# DataBinder.Eval(Container.DataItem,"YX_UserID") %>
				
                </ItemTemplate>
                      <HeaderStyle CssClass="B" />
             </asp:TemplateColumn>
			      <asp:TemplateColumn HeaderText="帐号" ItemStyle-Width="30%">
                <ItemTemplate >
		    <%# DataBinder.Eval(Container.DataItem,"YX_User") %>
				
                </ItemTemplate>
                      <HeaderStyle CssClass="B" />
             </asp:TemplateColumn>
             <asp:TemplateColumn HeaderText="状态(√审核，√未冻结)">
                <ItemTemplate >
				<%# Ret_stat(Convert.ToInt16(Eval("YX_SHE")),"未审核")%>
				<%# Ret_stat(Convert.ToInt16(Eval("YX_DJ")),"冻结")%>		
                </ItemTemplate>
                      <HeaderStyle CssClass="B" />
             </asp:TemplateColumn>
			<%--  <asp:TemplateColumn HeaderText="消费总额/元">
                <ItemTemplate >	
			<%# DataBinder.Eval(Container.DataItem,"YX_UserExpense") %>
				                </ItemTemplate>
                  <HeaderStyle CssClass="F" />
             </asp:TemplateColumn>--%>
              <asp:TemplateColumn HeaderText="联系Email">
                <ItemTemplate >
			<%# DataBinder.Eval(Container.DataItem,"yx_useremail") %>
                </ItemTemplate>
                  <HeaderStyle CssClass="B" />
             </asp:TemplateColumn>
             <asp:TemplateColumn HeaderText="店铺状态">
                <ItemTemplate >
			<%#  SelRank(Convert.ToInt16(DataBinder.Eval(Container.DataItem, "YX_UserRank")))%>
			<%# GetSringStat(Eval("YX_Authentication"),Convert.ToInt32(Eval("YX_UserID")),Eval("YX_UserRank")) %>
                </ItemTemplate>
                  <HeaderStyle CssClass="B" />
             </asp:TemplateColumn>
             <asp:TemplateColumn  HeaderText="操　　作">
                <ItemTemplate >					
				<a href="YX_UserEdit.aspx?YX_FS=ZZ&Flag=4&YX_MID=<%#Eval("YX_UserID") %>&YX_Rank=<%#Eval("YX_UserRank") %>"><img src="../../Skin/skin5/IMAGES/icon_edit.gif" style="border:0" alt="编辑" /></a>
				<a href="yx_adminuser.aspx?action=goin&YX_MID=<%#Eval("YX_UserID") %>"><img src="../../Skin/skin5/IMAGES/icon_view.gif" style="border:0" alt="进入会员管理后台" /></a>
				<a href="?YX_FS=Del&YX_MID=<%#Eval("YX_UserID") %>" onClick="return isdel()"><img src="../../Skin/skin5/IMAGES/no.gif" style="border:0" alt="删除" /></a>		
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

                      <asp:HyperLink ID="next" runat="server" ForeColor="#000000">下一页</asp:HyperLink>

                      <asp:HyperLink ID="max" runat="server" ForeColor="#000000">末　页</asp:HyperLink>
                    <span class="font1">转向</span>         
                    <asp:DropDownList ID="iPage" runat="server" AutoPostBack="True" OnSelectedIndexChanged="sic">              </asp:DropDownList> <input id="chkall" type="checkbox" onClick="CheckAll(this.form)" style="border:0 " />全选</td>
              <td align="left" style="width: 50px">  </td><td align="left" bgcolor="#E7E7E7" style="width: 180px">
                    <asp:DropDownList ID="DropDownList1" runat="server">
                   <asp:ListItem Value="0">---批量审核(本页)---</asp:ListItem>  
                               
                     <asp:ListItem Value="1">---批量删除(本页)---</asp:ListItem>           
                      <asp:ListItem Value="4">---批量冻结(本页)---</asp:ListItem> 
                      <asp:ListItem Value="5">---批量解冻(本页)---</asp:ListItem> 
                       <asp:ListItem Value="2">---全部删除---</asp:ListItem>     
                        <asp:ListItem Value="3">---全部审核---</asp:ListItem>   
                    </asp:DropDownList>
                  </td>
                <td align="center" style="width: 50px"><asp:Button ID="Button2" runat="server" Text="执行操作" OnClientClick="return isExc()" OnClick="Button2_Click" onmousemove=showBtnOver(this) onmouseout=showBtnOut(this)  CssClass="submitMiniGreen" />                </td>
            </tr>
        </table></td>
  </tr>
</table>
        </asp:Panel>
       <asp:Panel ID="Panel2" runat="server" Width="100%" Visible="false" >
		  <table width="100%" height="25" border="0" cellpadding="0" cellspacing="0">
            <tr>
              <td align="center" background="../images/YX_Bg.jpg" class="style3">添加会员</td>
            </tr>
          </table>
		  <table width="100%" height="5" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td></td>
  </tr>
</table>

		  <table width="100%"  border="0" align="center" cellpadding="1" cellspacing="1" id="TABLE1" >
            <tr>
              <td width="18%" class="B topbg">设置名称</td>
              <td width="61%" height="25"  class="B topbg">基本参数设置</td>
              <td  class="B topbg" >设置说明</td>
            </tr>
       
           <tr>
              <td align="center" bgcolor="#F6F6F6">
                  会员帐号：</td>
              <td height="25" align="left" bgcolor="#F6F6F6">
              <input type="text" ID="AddUserName" runat="server"  onblur="checkname()" />
              <div id="showare" name="showare" style="color:red"></div>
              <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="AddUserName"
                      ErrorMessage="该项不能为空"></asp:RequiredFieldValidator>  </td>
              <td bgcolor="#F6F6F6" style="width: 51px">&nbsp;</td>
            </tr>
       
            <tr>
              <td align="center" bgcolor="#F6F6F6">
                  会员级别：</td>
              <td bgcolor="#F6F6F6">
                  &nbsp;<asp:DropDownList ID="DropDownList2" runat="server">
                  </asp:DropDownList></td>
              <td bgcolor="#F6F6F6" style="width: 51px" >&nbsp;</td>
            </tr>  
         
            <tr>
              <td align="center" bgcolor="#F6F6F6"></td>
              <td height="25" bgcolor="#F6F6F6" align="center">&nbsp;<asp:Button ID="Button1" runat="server" Text="添    加" OnClick="Button1_Click2" onmousemove=showBtnOver(this) onmouseout=showBtnOut(this)  CssClass="submitMiniGreen"/></td>
              <td bgcolor="#F6F6F6" style="width: 51px">&nbsp;</td>
            </tr>
              <tr>
                  <td align="center" colspan="3" style="color:#FFFFFF">
                   [注意:]添加的会员密码默认为"123456".
                  </td>
                 
              </tr>
            
              <tr>
                  <td align="center" colspan="3">
                    <Chp:ChangHope_btm ID="chp" runat="server" />
                  </td>
                 
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
<Chp:ChangHope_btm ID="chp1" runat="server" /></td>
</body>
</html>
