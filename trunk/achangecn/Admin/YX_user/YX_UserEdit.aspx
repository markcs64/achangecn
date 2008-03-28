<%@ page language="C#" autoeventwireup="true" inherits="Admin_YX_user_YX_UserEdit, App_Web_ezi-zx_s" %>
<%@ Register  Src="../Admin_Btm.ascx" TagName="ChangHope_btm" TagPrefix="Chp" %>
<%@ Register TagPrefix="ChangeHope" TagName="Chklogin" Src="~/Admin/YX_CheckLogin.ascx" %>
 <ChangeHope:Chklogin _Column="3" ID="chk1" runat="server" />
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>无标题页</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" href="../style/style.css" type="text/css" />
<script language="javascript" type="text/javascript" src="../style/JScript.js"></script>
<script language="javascript" src="../../Include/area.js"></script>
<script language="javascript" defer>
function check_show(){
var drop=document.getElementById("DropDownList1");
var dtr=document.getElementById("dtr");
if(drop.value=="2"){
dtr.style.display="";
} else{
dtr.style.display="none";
}

}
function window.onload()
{
var drop=document.getElementById("DropDownList1");
var dtr=document.getElementById("dtr");
if(drop.value=="2"){
dtr.style.display="";
} 
   province(<%=prov %>);
   cityName(document.form1.prov.value,<%=city %>);//设置初始值
}
function checkfrm(){
var prov=document.getElementById("prov");
var vipmobile=document.getElementById("vipmobile");
var drop=document.getElementById("DropDownList1");
var drop2=document.getElementById("DropDownList2");
if(prov.value=="0"){
alert("请选择地区分类") ;
prov.focus();
return false;
}
if(vipmobile.value==""){
alert("请填写手机号码");
vipmobile.focus();
return false;
}
if(drop.value=="2"&&drop2.value=="0"){
alert("请选择店铺期限");
drop2.focus();
return false;
}
}
</script>

</head>
<body>
<table width="100%" border="0" cellpadding="0" cellspacing="0" bgcolor="#C4D8ED">
<tr>
<td><img src="../images/r_1.gif" alt="" /></td>
<td width="100%" background="../images/r_0.gif"></td>
<td><img src="../images/r_2.gif" alt="" /></td>
</tr>
<tr><td></td><td>

  <form id="form1" runat="server" onSubmit="return checkfrm()">
    <table  align="center" cellpadding="4" cellspacing="1" border="0" width=100%  class="toptable grid">
         <tr>
          <td height="25" class="category t2" width=100>会员管理</td>
         <td class="category">
             <asp:HyperLink ID="HyperLink1" NavigateUrl="YX_AdminUser.aspx?Stat=reging" runat="server">[正在申请店铺的会]</asp:HyperLink>
             <asp:HyperLink ID="HyperLink2" NavigateUrl="YX_AdminUser.aspx?Stat=regOk" runat="server">[店铺的会员]</asp:HyperLink>
			 <asp:HyperLink ID="HyperLink3" NavigateUrl="YX_AdminUser.aspx" runat="server">[全部会员]</asp:HyperLink>
           </td>
        </tr>
 </table>
 

  
     <table  align="center" cellpadding="1" cellspacing="1" border="0" width=100%  class="toptable grid">
           <tr>
              <td align="center"  class="topbg B" colspan=2 height=25>修改会员信息</td>
            </tr>
       <tr>
            <td width="84" align="right" style="font-weight:bold" bgcolor=#F6F6F6>
                用户名&nbsp;</td>
            <td width="793" align="left" style="width: 100px; height:25px;" bgcolor=#F6F6F6>
               &nbsp;&nbsp;
            <asp:Label ID="Label1" runat="server" Text="Label" Width="182px"></asp:Label></td>
        </tr> 
          <tr bgcolor=#F6F6F6>
              <td align="right" style="height: 23px;font-weight:bold">
                  会员等级</td>
              <td align="left" style="height: 23px"> <asp:DropDownList ID="DropDownList1" runat="server" 
                      Width="133px"> 
                  </asp:DropDownList>
              </td>
          </tr>
          <tr style="display:none" id="dtr" bgcolor=#F6F6F6>
              <td align="right" style="height: 23px;font-weight:bold">
                  店铺有效期</td>
              <td align="left" style="height: 23px"> 
              <asp:DropDownList ID="DropDownList2" runat="server">
                  <asp:ListItem Value="0" Text="请选择"></asp:ListItem>
          <asp:ListItem Value="180">半年</asp:ListItem>
          <asp:ListItem Value="360">一年</asp:ListItem>
          <asp:ListItem Value="720">二年</asp:ListItem>
          <asp:ListItem Value="1080">三年</asp:ListItem>
             </asp:DropDownList><asp:CheckBox ID="CheckBox2" runat="server" Text="更新时间" />
              </td>
          </tr>
          <tr bgcolor=#F6F6F6>
            <td  align="right" style="height: 23px;font-weight:bold">
                密码&nbsp;</td>
            <td align="left">
                <asp:TextBox ID="vippassword" runat="server" MaxLength="30" TextMode="Password"></asp:TextBox>不改则留空！</td>
        </tr>
        <tr bgcolor=#F6F6F6>
            <td  align="right" style="height: 23px;font-weight:bold">
                取回密码问题&nbsp;</td>
            <td align="left" style="height: 23px">
                <asp:TextBox ID="vipquestion" runat="server" MaxLength="30" Width="212px"></asp:TextBox>在取回密码时需填写本问题。</td>
        </tr>
        <tr bgcolor=#F6F6F6>
            <td style="height: 23px;font-weight:bold" align="right">
                取回密码答案&nbsp;</td>
            <td align="left" style="height: 25px;">
                <asp:TextBox ID="vipanswer" runat="server" MaxLength="30" Width="213px"></asp:TextBox>在取回密码时需填写本回答。</td>
        </tr>
          <tr bgcolor=#F6F6F6>
            <td style="height: 23px;font-weight:bold" align="right">
              所在地区&nbsp;</td>
            <td align="left" style="height: 23px;">
            
            <select id="prov" name="prov" onChange="cityName(document.form1.prov.options[document.form1.prov.selectedIndex].value)">
<option value="0">请选择</option>
</select>
<select name="city" id="city">
</select>
                </td>
        </tr>
        
        <tr bgcolor=#F6F6F6>
            <td  align="right" style="height: 23px;font-weight:bold">
                Email地址&nbsp;</td>
            <td align="left">
                <asp:TextBox ID="vipemail" runat="server" MaxLength="50" Width="234px"></asp:TextBox><span style="color: #ff0000">*</span>
                很重要！订单、发货等信息都会发送到此信箱。<br /><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
                    ControlToValidate="vipemail" Display="Dynamic" ErrorMessage="请输入email地址!" SetFocusOnError="True"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="vipemail"
                    Display="Dynamic" ErrorMessage="email地址格式不正确！" SetFocusOnError="True" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator></td>
        </tr>
        <tr bgcolor=#F6F6F6>
            <td style="height: 23px;font-weight:bold" align="right">
                真实姓名&nbsp;</td>
            <td align="left" style="width: 100px; height: 25px">
                <asp:TextBox ID="viprealname" runat="server"></asp:TextBox></td>
        </tr>
        <tr bgcolor=#F6F6F6>
            <td style="height: 23px;font-weight:bold" align="right">
                性别&nbsp;</td>
            <td align="left" style="width: 100px; height: 25px">
                <asp:RadioButtonList ID="vipsex" runat="server" RepeatDirection="Horizontal" Width="150px">
                    <asp:ListItem Value="0">女</asp:ListItem>
                    <asp:ListItem Value="1">男</asp:ListItem>
                </asp:RadioButtonList>
                
                </td>
        </tr>
        <tr bgcolor=#F6F6F6>
            <td style="height: 23px;font-weight:bold" align="right">
                出生日期&nbsp;</td>
            <td align="left" style="width: 100px; height: 14px">
                <asp:TextBox ID="vipborn" runat="server" MaxLength="30"></asp:TextBox></td>
        </tr>
        <tr bgcolor=#F6F6F6>
            <td align="right" style="height: 23px;font-weight:bold">
                联系地址&nbsp;</td>
            <td align="left" style="height: 25px">
                <asp:TextBox ID="vipaddr" runat="server" MaxLength="50" Width="268px"></asp:TextBox>
                <span style="color: #ff0000">*</span>
                <br /><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="vipaddr"
                    Display="Dynamic" ErrorMessage="联系地址不能为空！" SetFocusOnError="True"></asp:RequiredFieldValidator></td>
        </tr>
        <tr bgcolor=#F6F6F6>
            <td style="height: 23px;font-weight:bold" align="right">
                邮政编码&nbsp;</td>
            <td align="left" style="width: 100px; height: 12px">
                <asp:TextBox ID="vippost" runat="server" MaxLength="15"></asp:TextBox></td>
        </tr>
         <tr style="display:none">
            <td style="height: 23px;font-weight:bold" align="right">
                积　　分&nbsp;</td>
            <td align="left" style=" height: 12px">
                <asp:TextBox ID="JF" runat="server"></asp:TextBox>分<asp:RegularExpressionValidator ID="RegularExpressionValidatorjf" runat="server" ControlToValidate="JF"
                        ErrorMessage="积分必须是数字" ValidationExpression="[-]?\d+[.]?\d*$"></asp:RegularExpressionValidator></td>
        </tr>
        <tr bgcolor=#F6F6F6>
            <td  align="right" style="height: 23px;font-weight:bold">
                手机电话&nbsp;</td>
            <td align="left" style="height: 25px;">
                <asp:TextBox ID="vipmobile" runat="server" MaxLength="15"></asp:TextBox><span style="color:Red">*</span>请认真填写手机号码</td>
        </tr>
        <tr bgcolor=#F6F6F6>
            <td style="height: 23px;font-weight:bold" align="right">
                固定电话&nbsp;</td>
            <td align="left" style="width: 100px; height: 14px">
                <asp:TextBox ID="viptel" runat="server" MaxLength="15"></asp:TextBox></td>
        </tr>
         <tr bgcolor=#F6F6F6>
            <td style="height: 23px;font-weight:bold" align="right">
                传真&nbsp;</td>
            <td align="left" style="width: 100px; height: 14px">
                <asp:TextBox ID="Fax" runat="server" MaxLength="15"></asp:TextBox></td>
        </tr>
        <tr bgcolor=#F6F6F6>
            <td  align="right" style="height: 23px;font-weight:bold">
                QQ&nbsp;</td>
            <td align="left" style="width: 100px; height: 25px;">
                <asp:TextBox ID="vipqq" runat="server" MaxLength="15"></asp:TextBox></td>
        </tr>
        <tr bgcolor=#F6F6F6>
            <td style="height: 23px;font-weight:bold" align="right">
                MSN&nbsp;</td>
            <td align="left" style="width: 100px; height: 24px;">
                <asp:TextBox ID="vipmsn" runat="server" MaxLength="25" Width="265px"></asp:TextBox></td>
        </tr>
        <tr bgcolor=#F6F6F6>
            <td style="height: 23px;font-weight:bold" align="right">
                主页&nbsp;</td>
            <td align="left" style="width: 100px; height: 38px">
                <asp:TextBox ID="viphome" runat="server" MaxLength="50" Width="266px"></asp:TextBox></td>
        </tr>
        <tr bgcolor=#F6F6F6>
            <td style="height: 23px;font-weight:bold" align="right">
                身份证号码&nbsp;</td>
            <td align="left" style="width: 100px; height: 38px">
                <asp:TextBox ID="TextBox1" runat="server" MaxLength="50" Width="266px"></asp:TextBox></td>
        </tr>
          <tr bgcolor=#F6F6F6>
            <td style="height: 23px;font-weight:bold" align="right">
                身份证&nbsp;</td>
            <td align="left" style="width: 100px; height: 100px">
                <asp:Image ID="Image1" runat="server" />
             
                </td>
        </tr>
        <tr bgcolor=#F6F6F6>
            <td style="height: 23px;font-weight:bold" align="right">
                认证状态&nbsp;</td>
            <td align="left" style=" height: 38px">
                            <asp:RadioButtonList ID="CheckBox1" runat="server" RepeatDirection="Horizontal" Width="300px">
                    <asp:ListItem Value="0">未认证</asp:ListItem>
                    <asp:ListItem Value="1">已认证</asp:ListItem>
                    <asp:ListItem Value="2">待审核认证</asp:ListItem>
                </asp:RadioButtonList>
                                
                </td>
        </tr>
        <tr bgcolor=#F6F6F6>
            <td colspan="2" style="height: 60px" align="center">
                <asp:Button ID="modiinfo" runat="server" Text="修 改" onmousemove=showBtnOver(this) onmouseout=showBtnOut(this)  CssClass="submitMiniGreen" OnClick="modiinfo_Click1" />&nbsp;&nbsp;&nbsp;&nbsp;<input type=button onmousemove=showBtnOver(this) onmouseout=showBtnOut(this)  Class="submitMiniGreen" value="返 回"  onclick="javascript:history.back(-1);"></td>
        </tr>
       
              
          
    </table>
    
  
    </form>
     </td><td></td>
</tr>   
<tr>
<td><img src="../images/r_4.gif" alt="" /></td>
<td></td>
<td><img src="../images/r_3.gif" alt="" /></td>
</tr>
</table>
 <Chp:ChangHope_btm ID="ChangHope_btm1" runat="server" />  
</body>
</html>
