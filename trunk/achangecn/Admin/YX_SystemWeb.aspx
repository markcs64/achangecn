<%@ page language="C#" autoeventwireup="true" inherits="Admin_YX_SystemWeb, App_Web_ymdsagyx" %>
<%@ Register TagPrefix="ChangHope" TagName="Admin_Btm" Src=Admin_btm.ascx%>
<%@ Register TagPrefix="ChangeHope" TagName="Chklogin" Src="YX_CheckLogin.ascx" %>
  <ChangeHope:Chklogin _Column="1" ID="chk1" runat="server" />
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>无标题页</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<script language="javascript" type="text/javascript">
function show(i){     
   
		i.style.display = "";     

}	    
function yc(i){     
		i.style.display = "none";     

}	
</script>
<link rel="stylesheet" href="style/style.css" type="text/css" />
 <script language="javascript" type="text/javascript" src="style/JScript.js"></script>
</head>
<body bgcolor="#CAD6F8"  topmargin="0" rightmargin="0" leftmargin="0">
<table width="100%" border="0" cellpadding="0" cellspacing="0" bgcolor="#C4D8ED">
<tr>
<td><img src="images/r_1.gif" alt="" /></td>
<td width="100%" background="images/r_0.gif"></td>
<td><img src="images/r_2.gif" alt="" /></td>
</tr>
<tr><td></td><td>
  <form id="form1" runat="server" style="margin:0"> 
      <asp:Panel ID="Panel1" runat="server" Width="100%">
     
      <table  align="center" cellpadding="4" cellspacing="1" border="1" width=100%  class="toptable grid">
         <tr>
          <td height="25" class="category t2" width=100>系统基本设置</td><td class="category">
         <a href="?"> [网站基本设置]</a>
         <a href="?YX_FS=User"> [网站会员参数设置]</a>&nbsp;
          </td>
        </tr>
</table>

		 <table  align="center" cellpadding="1" cellspacing="1" border="0" width=100%  >
        <tr>
          <td  height="25"  colspan=3 class=topbg><span class="B">基本参数设置</span></td>
          
        </tr>
        <tr>
          <td  align="center" bgcolor="#F6F6F6">网站名称：</td>
          <td height="25" align="left" bgcolor="#F6F6F6" style="width: 444px">
              <asp:TextBox ID="Web_Name" runat="server" Width="312px"></asp:TextBox>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="该字段为必填字段" Display="Dynamic" SetFocusOnError="True" ControlToValidate="Web_Name"></asp:RequiredFieldValidator></td>
          <td align="center" bgcolor="#F6F6F6" >用于显示在页面标题的信息</td>
        </tr>
             <tr>
                 <td align="center" bgcolor="#f6f6f6">
                     网站URL：</td>
                 <td align="left" bgcolor="#f6f6f6" height="25" style="width: 444px">
                     <asp:TextBox ID="TextBox6" runat="server" Width="312px"></asp:TextBox>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox6"
                         ErrorMessage="必须填写" SetFocusOnError="True"></asp:RequiredFieldValidator></td>
                 <td align="center" bgcolor="#f6f6f6">
                     网站URL以"http://"开始,"/"结束</td>
             </tr>
        <tr>
          <td align="center" bgcolor="#F6F6F6">网站关键字：</td>
          <td height="25" align="left" bgcolor="#F6F6F6" style="width: 444px"><input type="text" name="Web_Kye" id="Web_Kye" runat="server" style="width: 312px" /></td>
          <td align="center" bgcolor="#F6F6F6" >网站关键字</td>
        </tr>
        <tr>
          <td align="center" bgcolor="#F6F6F6">网站描述：</td>
          <td  height="25" align="left" bgcolor="#F6F6F6" style="width: 444px"><input type="text" name="Web_Ex" id="Web_Ex" runat="server" style="width: 313px" /></td>
          <td align="center" bgcolor="#F6F6F6" >网站描述</td>
        </tr>
        <tr>
          <td align="center" bgcolor="#F6F6F6">电子邮件：</td>
          <td  height="25" align="left" bgcolor="#F6F6F6" style="width: 444px" ><input type="text" name="Web_Email" style="width: 312px"   id="Web_Email" runat="server" /><asp:RequiredFieldValidator
                  ID="RequiredFieldValidator2" runat="server" ErrorMessage="该字段为必填字段" ControlToValidate="Web_Email" Display="Dynamic"></asp:RequiredFieldValidator></td>
          <td align="center" bgcolor="#F6F6F6">电子邮件</td>
        </tr>
        <tr>
          <td align="center" bgcolor="#F6F6F6">联系地址：</td>
          <td height="25" align="left" bgcolor="#F6F6F6" style="width: 444px"><input type="text" name="Web_Addr" id="Web_Addr" runat="server" style="width: 310px"/></td>
          <td align="center" bgcolor="#F6F6F6" >联系地址</td>
        </tr>
         <tr>
          <td align="center" bgcolor="#F6F6F6">网站版权：</td>
          <td  height="25" align="left" bgcolor="#F6F6F6" style="width: 444px"><input type="text" name="Web_Copy" id="Web_Copy" runat="server" style="width: 311px" /></td>
          <td align="center" bgcolor="#F6F6F6" >版权所有</td>
        </tr>
        <tr>
          <td align="center" bgcolor="#F6F6F6">联系电话：</td>
          <td  height="25" align="left" bgcolor="#F6F6F6" style="width: 444px" ><input type="text" name="Web_tel" id="Web_tel" runat="server" /></td>
          <td align="center" bgcolor="#F6F6F6">联系电话</td>
        </tr>
        <tr>
          <td align="center" bgcolor="#F6F6F6">传真号码：</td>
          <td  height="25" align="left" bgcolor="#F6F6F6" style="width: 444px" ><input type="text" name="Web_Fac" id="Web_Fac" runat="server" /></td>
          <td align="center" bgcolor="#F6F6F6">传真号码</td>
        </tr>
        <tr>
          <td align="center" bgcolor="#F6F6F6">手机号码：</td>
          <td  height="25" align="left" bgcolor="#F6F6F6" style="width: 444px" ><input type="text" name="Web_Mobel" id="Web_Mobel" runat="server" /></td>
          <td align="center" bgcolor="#F6F6F6">手机号码</td>
        </tr>
        <tr>
          <td align="center" bgcolor="#F6F6F6" style="height: 27px">邮政编码：</td>
          <td align="left" bgcolor="#F6F6F6" style="width: 444px"><input type="text" name="Web_Post" id="Web_Post" runat="server" /></td>
          <td align="center" bgcolor="#F6F6F6">邮政编码</td>
        </tr>
      
       <tr>
          <td align="center" bgcolor="#F6F6F6">文章初始点击数：</td>
          <td  height="25" align="left" bgcolor="#F6F6F6" style="width: 444px" ><input type="text" name="Web_ArticleNum" id="Web_ArticleNum" runat="server" /></td>
          <td align="center" bgcolor="#F6F6F6" >
              文章的最低点击数，默认0</td>
        </tr>       <tr>
                 <td align="center" bgcolor="#f6f6f6" style="height: 27px">
                     会员积分：</td>
                 <td align="left" bgcolor="#f6f6f6" style="width: 444px">
                     <asp:CheckBox ID="JF" runat="server" Text="开启" /></td>
                 <td align="center" bgcolor="#f6f6f6">
                     开启会员积分功能</td>
             </tr>
             <tr>
                 <td align="center" bgcolor="#f6f6f6">
                     商 品 审 核：</td>
                 <td align="left" bgcolor="#f6f6f6" height="25" style="width: 444px">
                     <asp:CheckBox ID="CheckBox1" runat="server" Text="不审核" /></td>
                 <td align="center" bgcolor="#f6f6f6">
                     添加商品的时候是否需要审核</td>
             </tr>
             <tr>
                 <td align="center" bgcolor="#f6f6f6">
                     网站开关：</td>
                 <td  bgcolor="#f6f6f6" height="25" style="width: 444px" align="left">
                     <asp:CheckBox ID="CheckBox2" runat="server" Text="关闭网站" /></td>
                 <td align="center" bgcolor="#f6f6f6">
                 </td>
             </tr>
                          <tr>
                 <td align="center" bgcolor="#f6f6f6">
                     网站论坛：</td>
                 <td  bgcolor="#f6f6f6" height="25" style="width: 444px" align="left">
                     <asp:CheckBox ID="CheckBox3" runat="server" Text="关闭论坛" /></td>
                 <td align="center" bgcolor="#f6f6f6">
                 </td>
             </tr>
             <tr>
                 <td align="center" bgcolor="#f6f6f6">
                     店铺等级：</td>
                 <td align="left" bgcolor="#f6f6f6" height="25" style="width: 444px">
                     <asp:CheckBox ID="Check_shopdj" runat="server" Text="开启店铺等级" /></td>
                 <td align="center" bgcolor="#f6f6f6">
                     等级制优先</td>
             </tr>
             <tr>
                 <td align="center" bgcolor="#f6f6f6">
                     消费者保障计划：</td>
                 <td align="left" bgcolor="#f6f6f6" height="25" style="width: 444px">
                     <asp:CheckBox ID="Check_cons" runat="server" Text="开启消费者保障计划" /></td>
                 <td align="center" bgcolor="#f6f6f6">
                     增加诚信度,保证交易安全</td>
             </tr>
             <tr>
                 <td align="center" bgcolor="#f6f6f6">
                     交易模式：</td>
                 <td align="left" bgcolor="#f6f6f6" height="25" style="width: 444px">
                     <asp:RadioButtonList ID="RadioBut_rui" runat="server" EnableTheming="True" RepeatDirection="Horizontal"
                         Width="153px">
                         <asp:ListItem Selected="True" Value="0">只允担保</asp:ListItem>
                         <asp:ListItem Value="1">兼容担保</asp:ListItem>
                     </asp:RadioButtonList></td>
                 <td align="center" bgcolor="#f6f6f6">
                 </td>
             </tr>
             <tr>
                 <td align="center" bgcolor="#f6f6f6" style="height: 30px">
                     提现服务：</td>
                 <td align="left" bgcolor="#f6f6f6" style="width: 444px; height: 30px;">
                     &nbsp;<asp:CheckBox ID="Check_Rui" runat="server" Text="提现-金额" />&nbsp;<asp:TextBox
                         ID="Text_money" runat="server" Width="90px"></asp:TextBox>&nbsp; 佣金率<asp:TextBox
                             ID="Text_Ratio" runat="server" Width="49px"></asp:TextBox>/100 &nbsp;例如：0.05/100</td>
                 <td align="center" bgcolor="#f6f6f6" style="height: 30px">
                     佣金是担保交易中产生的服务费用在客户提现时按佣金率提成</td>
             </tr>
             <tr>
                 <td align="center" bgcolor="#f6f6f6">
                     商品内容页生成：</td>
                 <td align="left" bgcolor="#f6f6f6" height="25" style="width: 444px">
                     <asp:RadioButtonList ID="openstart" runat="server" EnableTheming="True" RepeatDirection="Horizontal"
                         Width="270px">
                         <asp:ListItem Selected="True" Value="1">开启商品静态页面</asp:ListItem>
                         <asp:ListItem Value="0">关闭商品静态页面</asp:ListItem>
                     </asp:RadioButtonList></td>
                 <td align="center" bgcolor="#f6f6f6">
                 </td>
             </tr>
             <tr>
                 <td align="center" bgcolor="#f6f6f6">
                     会员管理中心头部、尾部</td>
                 <td align="left" bgcolor="#f6f6f6" height="25" style="width: 444px">
                     头部ID：<asp:TextBox ID="TextBox12" runat="server"></asp:TextBox>
                     &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 尾部ID：<asp:TextBox ID="TextBox13" runat="server"></asp:TextBox></td>
                 <td align="center" bgcolor="#f6f6f6">
                     头尾标签ID设置</td>
             </tr>
             <tr>
                 <td align="center" bgcolor="#f6f6f6" style="height: 108px">
                     网站关闭说明：</td>
                 <td align="left" bgcolor="#f6f6f6" style="width: 444px; height: 108px">
                     <asp:TextBox ID="TextBox7" runat="server" Height="91px" TextMode="MultiLine" Width="414px"></asp:TextBox></td>
                 <td align="center" bgcolor="#f6f6f6" style="height: 108px">
                     网站关闭时有效</td>
             </tr>
            <tr>
          <td  height="25"  colspan=3 class=topbg><span class="B">邮件参数设置</span></td>
          
        </tr>
        <tr>
          <td align="center" bgcolor="#F6F6F6">
              发送邮件：</td>
          <td  height="25" align="left" bgcolor="#F6F6F6" style="width: 444px" >
              <input  type=radio name=Send2 id="Send1" value=1 style="border:0px" onClick="show(s1)" runat="server" />启用
          &nbsp;<input  type=radio name=Send2 id="Send2" value=0 style="border:0px" onClick="yc(s1)" runat="server" checked  />不启用</td>
          <td align="center" bgcolor="#F6F6F6" >网站选择的邮件服务器</td>
        </tr> 
           <tr id=s1 style="display:none"><td colspan="3" bgcolor="#F6F6F6">
           
                   <table border="1" cellpadding="0" cellspacing="0" bordercolordark="#FFFFFF" bordercolorlight="#1D894A" align="center">
                   <tr>
          <td align="center" bgcolor="#EFEFEF" >邮件服务器：</td>
          <td height="25" bgcolor="#EFEFEF" align="left"  ><input type="text" name="Email_Server" id="Email_Server" runat="server" /></td>
          <td  align="center" bgcolor="#EFEFEF"  >使用邮件服务器</td>
        </tr>
        <tr>
          <td align="center" bgcolor="#EFEFEF"  >邮件用户：</td>
          <td bgcolor="#EFEFEF" align="left" ><input type="text" name="Email_User" id="Email_User" runat="server" /></td>
          <td align="center" bgcolor="#EFEFEF">使用的邮件用户</td>
        </tr>
        <tr>
          <td align="center" bgcolor="#EFEFEF" >邮件密码：</td>
          <td height="25"  bgcolor="#EFEFEF" align="left" ><input type="Password" name="Email_Pwd" id="Email_Pwd" runat="server" /></td>
          <td align="center" bgcolor="#EFEFEF" >使用的邮件用户的密码</td>
        </tr>
		</table>
          
        </td></tr>  
        
             <tr>
                 <td align="center" bgcolor="#f6f6f6" style="height: 108px">
                     注册邮件：</td>
                 <td align="left" bgcolor="#f6f6f6" style="width: 444px; height: 108px">
                     <asp:TextBox ID="TextBox8" runat="server" Height="91px" TextMode="MultiLine" Width="414px"></asp:TextBox></td>
                 <td align="center" bgcolor="#f6f6f6" style="height: 108px">
                     注册发送邮件</td>
             </tr>
             <tr>
                 <td align="center" bgcolor="#f6f6f6" style="height: 108px">
                     卖出邮件：</td>
                 <td align="left" bgcolor="#f6f6f6" style="width: 444px; height: 108px">
                     <asp:TextBox ID="TextBox9" runat="server" Height="91px" TextMode="MultiLine" Width="414px"></asp:TextBox></td>
                 <td align="center" bgcolor="#f6f6f6" style="height: 108px">
                     购买成功发送邮件</td>
             </tr>
             <tr>
                 <td align="center" bgcolor="#f6f6f6" style="height: 108px">
                     购买邮件：</td>
                 <td align="left" bgcolor="#f6f6f6" style="width: 444px; height: 108px">
                     <asp:TextBox ID="TextBox10" runat="server" Height="91px" TextMode="MultiLine" Width="414px"></asp:TextBox></td>
                 <td align="center" bgcolor="#f6f6f6" style="height: 108px">
                     物品卖出发送邮件</td>
             </tr>
             <tr>
                 <td align="center" bgcolor="#f6f6f6" style="height: 108px">
                     交易成功邮件：</td>
                 <td align="left" bgcolor="#f6f6f6" style="width: 444px; height: 108px">
                     <asp:TextBox ID="TextBox11" runat="server" Height="91px" TextMode="MultiLine" Width="414px"></asp:TextBox></td>
                 <td align="center" bgcolor="#f6f6f6" style="height: 108px">
                     买卖双方邮件通知</td>
             </tr>
             
        <tr>
          <td align="center" bgcolor="#F6F6F6">&nbsp;</td>
          <td height="25" align="center" bgcolor="#F6F6F6" style="width: 444px" > 
          <asp:Button ID="Button1" runat="server" Text="提交系统信息" onmousemove=showBtnOver(this) onmouseout=showBtnOut(this)  CssClass="submitMiniGreen" OnClick="Button1_Click" /></td>
          <td align="center" bgcolor="#F6F6F6" >&nbsp;</td>
        </tr>

</table>
 </asp:Panel>
      <asp:Panel ID="Panel2" runat="server"  Width="100%">

      <table  align="center" cellpadding="4" cellspacing="1" border="1" width=100%  class="toptable grid">
         <tr>
          <td height="25" class="category t2" width=100>系统基本设置</td><td class="category">
         <a href="?"> [网站基本设置]</a>
         <a href="?YX_FS=User"> [网站会员参数设置]</a>&nbsp;
          </td>
        </tr>
</table>
<table  align="center" cellpadding="1" cellspacing="1" border="0" width=100%  >
        <tr>
          <td  height="25"  colspan=3 class=topbg><span class="B">会员参数设置</span></td>
          
        </tr>
        <tr>
          <td  align="center" bgcolor="#f6f6f6">
              会员注册：</td>
          <td height="25" align="left" bgcolor="#f6f6f6">
              <asp:RadioButton ID="RadioButton1" GroupName="x1"  runat="server" Text="是" />
              <asp:RadioButton ID="RadioButton2" runat="server" GroupName="x1" Text="否" /></td>
          <td align="center" bgcolor="#f6f6f6" >
              是否允许前台会员注册</td>
        </tr>
        <tr>
          <td align="center" bgcolor="#f6f6f6">
              注册审核：</td>
          <td height="25" align="left" bgcolor="#f6f6f6">
              <asp:RadioButton ID="RadioButton3" runat="server" GroupName="x2"　Text="是" />
              <asp:RadioButton ID="RadioButton4" runat="server" GroupName="x2"　Text="否" /></td>
          <td align="center" bgcolor="#f6f6f6" >
              是否审核前台会员注册</td>
        </tr>
        <tr>
          <td align="center" bgcolor="#f6f6f6">
              发送邮件：</td>
          <td  height="25" align="left" bgcolor="#f6f6f6">
              <asp:RadioButton ID="RadioButton5" runat="server" GroupName="x3"　Text="是" />
              <asp:RadioButton ID="RadioButton6" runat="server" GroupName="x3" Text="否" /></td>
          <td align="center" bgcolor="#f6f6f6" >
              是否向注册成功的用户发送邮件</td>
        </tr>
    <tr>
        <td align="center" bgcolor="#f6f6f6">
            商品发布量：</td>
        <td align="left" bgcolor="#f6f6f6" height="25">
            <asp:TextBox ID="Text_num" runat="server" Width="73px">10</asp:TextBox></td>
        <td align="center" bgcolor="#f6f6f6">
            设置一般会员的发布量</td>
    </tr>
          <tr>
          <td align="center" bgcolor="#f6f6f6">
              取回密码：</td>
          <td  height="25" align="left" bgcolor="#f6f6f6"><asp:RadioButton ID="RadioButton11" runat="server" Text="在线通过问题取回" GroupName="x6" />
              <asp:RadioButton ID="RadioButton12" Text="直接发送注册邮箱" runat="server" GroupName="x6"　　　　 /></td>
          <td align="center" bgcolor="#f6f6f6" >
              <span class="gray">忘记密码采用何种方式</span>取回密码</td>
        </tr>
         <tr>
          <td align="center" bgcolor="#f6f6f6">
              免费时间：</td>
          <td  height="25" align="left" bgcolor="#f6f6f6">
          <asp:DropDownList ID="DropDownList1" runat="server">
          <asp:ListItem Value="180">半年</asp:ListItem>
          <asp:ListItem Value="360">一年</asp:ListItem>
          <asp:ListItem Value="720">二年</asp:ListItem>
          <asp:ListItem Value="1080">三年</asp:ListItem>
             </asp:DropDownList>
          </td>
             
          <td align="center" bgcolor="#f6f6f6" >
              <span class="gray">会员申请店铺免费的时间</span></td>
        </tr>
                     <tr>
                 <td align="center" bgcolor="#f6f6f6" style="height: 108px">
                     会员服务协议：</td>
                 <td align="left" bgcolor="#f6f6f6" style="width: 444px; height: 108px">
                     <asp:TextBox ID="TextBox14" runat="server" Height="91px" TextMode="MultiLine" Width="414px"></asp:TextBox></td>
                 <td align="center" bgcolor="#f6f6f6" style="height: 108px">
                     会员服务协议</td>
             </tr>
             <tr>
                 <td align="center" bgcolor="#f6f6f6" style="height: 108px">
                     支付宝服务协议 ：</td>
                 <td align="left" bgcolor="#f6f6f6" style="width: 444px; height: 108px">
                     <asp:TextBox ID="TextBox15" runat="server" Height="91px" TextMode="MultiLine" Width="414px"></asp:TextBox></td>
                 <td align="center" bgcolor="#f6f6f6" style="height: 108px">
                     支付宝服务协议</td>
             </tr>
    <tr>
        <td align="center" bgcolor="#f6f6f6">
        </td>
        <td align="left" bgcolor="#f6f6f6" height="25">
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click"  onmousemove=showBtnOver(this) onmouseout=showBtnOut(this)  CssClass="submitMiniGreen"  Text="修改参数" Width="131px" /></td>
        <td align="center" bgcolor="#f6f6f6">
        </td>
    </tr>
        </table>
      </asp:Panel>
      <asp:Panel ID="Panel3" runat="server"  Width="100%">
       <table width="98%" border="0" cellpadding="0" cellspacing="0">
         <tr>
          <td height="25" colspan="3" align="center" background="images/YX_Bg.jpg" bgcolor="#7fad7f"><span class="style3">网站商品参数设置</span></td>
        </tr>
</table>
      <table width="98%" border="0" cellpadding="0" cellspacing="0">
         <tr>
          <td height="25" colspan="3" align="right" bgcolor="#f6f6f6" >
         <a href="?"> [网站基本设置]</a>
         <a href="?YX_FS=User"> [网站会员参数设置]</a>
           <a href="?YX_FS=Product">[网站商品参数设置]</a>
          </td>
        </tr>
</table>
    
<table width="98%" border="1" bordercolordark="#ffffff" bordercolorlight="#1d894a" align="left" cellpadding="0" cellspacing="0">
        <tr>
          <td  height="25" align="center" bgcolor="#1e515c" style="width: 131px" ><span class="style3">设置名称</span></td>
          <td align="center" bgcolor="#1e515c" style="width: 400px" ><span class="style3">基本参数设置</span></td>
          <td  align="center" bgcolor="#1e515c"><span class="style3">设置说明</span></td>
        </tr>
        <tr>
          <td  align="center" bgcolor="#f6f6f6" style="width: 131px">
              是否开启虚拟币：</td>
          <td height="25" align="left" bgcolor="#f6f6f6" style="width: 400px">
              <asp:RadioButton ID="RadioButton13" runat="server" Text="是" GroupName="p1" />
              <asp:RadioButton ID="RadioButton14" runat="server" Text="否" GroupName="p1" />(此功能暂未开放)</td>
          <td align="center" bgcolor="#f6f6f6" >
              <span class="gray">是否需要开启虚拟币功能</span></td>
        </tr>
        <tr>
          <td align="center" bgcolor="#f6f6f6" style="width: 131px">
              虚拟币名称：</td>
          <td height="25" align="left" bgcolor="#f6f6f6" style="width: 400px">
              <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>(此功能暂未开放)</td>
          <td align="center" bgcolor="#f6f6f6" >
              <span class="gray">设置网站虚拟币的名称</span></td>
        </tr>
        <tr>
          <td align="center" bgcolor="#f6f6f6" style="width: 131px; height: 27px">
              购买虚拟币：</td>
          <td align="left" bgcolor="#f6f6f6" style="width: 400px; height: 27px">
              <asp:RadioButton ID="RadioButton15" runat="server" Text="是" GroupName="p2" />
              <asp:RadioButton ID="RadioButton16" runat="server" Text="否" GroupName="p2" />(此功能暂未开放)</td>
          <td align="center" bgcolor="#f6f6f6" style="height: 27px" >
              <span class="gray" style="background-color: #f6f6f6">是否允许人民币购买虚拟币功能</span></td>
        </tr>
          <tr style="background-color: #f6f6f6">
          <td align="center" bgcolor="#f6f6f6" style="width: 131px">
              虚拟币兑换比例：</td>
          <td  height="25" align="left" bgcolor="#f6f6f6" style="width: 400px">
              <asp:TextBox ID="TextBox2" runat="server" Width="42px"></asp:TextBox>(此功能暂未开放)</td>
          <td align="center" bgcolor="#f6f6f6" >
              <span class="gray">虚拟币兑换人民币比例，格式wb:rmb</span></td>
        </tr>
          <tr>
          <td align="center" bgcolor="#f6f6f6" style="width: 131px; height: 27px">
              新增商品：</td>
          <td align="left" bgcolor="#f6f6f6" style="width: 400px; height: 27px">
              <asp:RadioButton ID="RadioButton17" runat="server" Text="是" GroupName="p3" />
              <asp:RadioButton ID="RadioButton18" runat="server" Text="否" GroupName="p3" /></td>
          <td align="center" bgcolor="#f6f6f6" style="height: 27px" >
              <span class="gray"><span class="gray">新增商品是否需要审核才显示</span></span></td>
        </tr>
          <tr>
          <td align="center" bgcolor="#f6f6f6" style="height: 27px; width: 131px;">
              <span class="gray" style="background-color: #f6f6f6">报警商品显示：</span></td>
          <td align="left" bgcolor="#f6f6f6" style="height: 27px; width: 400px;">
              <asp:RadioButton ID="RadioButton19" runat="server" Text="是" GroupName="p4"/>
              <asp:RadioButton ID="RadioButton20" runat="server" Text="否" GroupName="p4" /></td>
          <td align="center" bgcolor="#f6f6f6" style="height: 27px" >
              库存商品报警后是否显示</td>
        </tr>
    <tr>
        <td align="center" bgcolor="#f6f6f6" style="width: 131px; height: 27px">
            生日送币：</td>
        <td align="left" bgcolor="#f6f6f6" style="width: 400px; height: 27px">
            <asp:RadioButton ID="RadioButton21" runat="server"　Text="是" GroupName="p5" />
            <asp:RadioButton ID="RadioButton22" runat="server"　Text="否" GroupName="p5" />(此功能暂未开放)</td>
        <td align="center" bgcolor="#f6f6f6" style="height: 27px">
            是否开启生日送币</td>
    </tr>
    <tr>
        <td align="center" bgcolor="#f6f6f6" style="width: 131px">
            生日送币数量：</td>
        <td align="left" bgcolor="#f6f6f6" height="25" style="width: 400px">
            <asp:TextBox ID="TextBox3" runat="server" Width="46px"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" ControlToValidate="TextBox3" runat="server"  ErrorMessage="该项必须是数字" ValidationExpression="[-]?\d+[.]?\d*$"></asp:RegularExpressionValidator>(此功能暂未开放)</td>
        <td align="center" bgcolor="#f6f6f6">
            <span class="gray">生日送币的数量</span></td>
    </tr>
    <tr>
        <td align="center" bgcolor="#f6f6f6" style="width: 131px">
            注册送币：</td>
        <td align="left" bgcolor="#f6f6f6" height="25" style="width: 400px">
            <asp:RadioButton ID="RadioButton23" runat="server"　Text="是" GroupName="p6" />
            <asp:RadioButton ID="RadioButton24" runat="server" Text="否" GroupName="p6"　　　　/>(此功能暂未开放)</td>
        <td align="center" bgcolor="#f6f6f6">
            是否开启注册送币</td>
    </tr>
    <tr>
        <td align="center" bgcolor="#f6f6f6" style="width: 131px">
            注册送币数量：</td>
        <td align="left" bgcolor="#f6f6f6" height="25" style="width: 400px">
            <asp:TextBox ID="TextBox4" runat="server" Width="48px"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" ControlToValidate="TextBox4" runat="server" ErrorMessage="该项必须是数字" ValidationExpression="[-]?\d+[.]?\d*$"></asp:RegularExpressionValidator>(此功能暂未开放)</td>
        <td align="center" bgcolor="#f6f6f6">
            注册送币的数量</td>
    </tr>
          <tr>
          <td align="center" bgcolor="#f6f6f6" style="width: 131px">
              显示最新标志：</td>
          <td  height="25" align="left" bgcolor="#f6f6f6" style="width: 400px">
              <asp:TextBox ID="TextBox5" runat="server" Width="47px"></asp:TextBox>天<asp:RegularExpressionValidator
                  ID="RegularExpressionValidator3" runat="server" ControlToValidate="TextBox5" ErrorMessage="该项必须是数字" ValidationExpression="[-]?\d+[.]?\d*$"></asp:RegularExpressionValidator>(此功能暂未开放)</td>
          <td align="center" bgcolor="#f6f6f6" >
              设置新增商品多少天显示“新”</td>
        </tr>
    <tr>
        <td align="center" bgcolor="#f6f6f6" style="width: 131px">
        </td>
        <td align="left" bgcolor="#f6f6f6" height="25" style="width: 400px">
        </td>
        <td align="center" bgcolor="#f6f6f6">
        </td>
    </tr>
    <tr>
        <td align="center" bgcolor="#f6f6f6" style="width: 131px">
        </td>
        <td align="left" bgcolor="#f6f6f6" height="25" style="width: 400px">
            <asp:Button ID="Button3" runat="server" Text="修改参数"  onmousemove=showBtnOver(this) onmouseout=showBtnOut(this)  CssClass="submitMiniGreen"  OnClick="Button3_Click" /></td>
        <td align="center" bgcolor="#f6f6f6">
        </td>
    </tr>
        </table>
        </asp:Panel>
 
     

</form> 
    
</td><td></td>
</tr>   
<tr>
<td><img src="images/r_4.gif" alt="" /></td>
<td></td>
<td><img src="images/r_3.gif" alt="" /></td>
</tr>
</table>
<ChangHope:Admin_Btm ID="chp" runat="server" />
	
</body>
</html>
