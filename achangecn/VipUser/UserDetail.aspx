<%@ page language="C#" autoeventwireup="true" inherits="UserDetail, App_Web_xyjt5bop" %>
<%@ Register Src="Top_vip.ascx" TagName="Top_vip" TagPrefix="uc" %>
<%@ Register Src="Foot_vip.ascx" TagName="Foot_vip" TagPrefix="uc" %>
<%@ Register Src="Left_vip.ascx" TagName="Left_vip" TagPrefix="uc" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >

<head id="Head1" runat="server">
     <title>个人资料设置-会员管理中心-<%=SetUrl() %></title>
    <LINK href="../Skin/Skin4/index.css" type="text/css" rel="stylesheet" >
    <LINK href="../Skin/Skin4/vip.css" type=text/css rel="stylesheet">
<script language="javascript" src="../include/yz.js"></script>
 <script src="../Include/area.js" language=javascript></script>
    <style>
   #userLink21 {
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
            个人资料设置</div>
        
            <table border="0" cellpadding="0" cellspacing="0" class="tdMain" width="100%">
                <tr>
                    <td class="tdLeft" width="120">
                       帐号：</td>
                    <td class="tdSide" colspan="2" align="left">
                        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></td>
                </tr>
                <tr style="display:none">
                    <td class="tdLeft">
                      商城帐号保护：</td>
                    <td class="tdSide" colspan="2" style="text-align:right">
                        <a  href="#">
                            <span style="color: #1835d1">交易密码设置</span></a> | <a href="#"
                                target="_blank"><span style="color: #1835d1">申请易网密码保护</span></a></td>
                </tr>
                <tr style="color: #1835d1">
                    <td class="tdLeft" >
                        <span class="fontOrange" style="color: #ff4e00">*</span>用户昵称：</td>
                    <td class="tdSide" align="left">
                        <input  maxlength="16" name="sNickName" id="userNickName"  runat="server"  size="16" class=inputwidth /></td>
                    <td class="tdSide" width="380">
                        <div id="sNickName_Msg" class="message">
                            16个字符以内（8个汉字内），推荐使用中英文用户昵称。</div>
                    </td>
                </tr>
                			<tr>
				 	<td class="tdLeft">重置密码：</td>
					<td class="tdSide" align="left"><input  type="password" size="18"  id="modifyPassword" name="modifyPassword"/>
					<td></td>
				</tr>
		<tr>
				 	<td class="tdLeft">确认密码：</td>
					<td class="tdSide" align="left"><input type="password" size="18" id="AgainPassword" name="AgainPassword"  runat="server"/><td></td>
				</tr>
				
				                			<tr>
				 	<td class="tdLeft">密码提示问题：</td>
					<td class="tdSide" align="left"><input  type="text" size="18" runat=server  id="YX_UserPwdQuestion" name="YX_UserPwdQuestion"/>
					<td></td>
				</tr>
		<tr>
				 	<td class="tdLeft">密码提示答案：</td>
					<td class="tdSide" align="left"><input type="text" size="18" id="YX_UserAnswer" name="YX_UserAnswer"  runat="server"/><td></td>
				</tr>
				<tr><td class="tdLeft" style="height: 37px"><span class="fontOrange" style="color:#FF4300">*</SPAN>上传图片</td>
				<td class="tdSide" style="height: 37px" >
                    <asp:FileUpload ID="photo" runat="server" /></td>
                    <td>
                        <asp:Image ID="Image1" runat="server" /></td>
				</tr>
				
		
                <tr>
                    <td class="tdLeft" >
                        <span class="fontOrange" style="color: #ff4e00">*</span>性别：</td>
                    <td class="tdSide" align="left">
                        <input  name="cSex" type="radio" value="1" id="radio1" runat="server" />
                        男
                        <input name="cSex"  type="radio" value="2"  runat="server" id="radio2"/>
                        女</td>
                    <td class="tdSide">
                        <div id="cSex_Msg" class="message">
                        </div>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="tdLeft" >
                        所在地：</td>
                    <td class="tdSide" colspan="2" align="left">
                          

 <select  id="prov" name="prov" onChange="cityName(document.form_basic_admin.prov.options[document.form_basic_admin.prov.selectedIndex].value)" runat="server"> 
<option value="0">请选择</option>
</select>
<select name="city" id="city" runat="server">
</select>  
<% area();%>
                    
                    </td>
                </tr>
                <tr>
                    <td class="tdLeft">
                        邮箱：</td>
                    <td class="tdSide" align="left">
                        <input id="Text1" class=inputwidth    type="text"  name="email" runat="server"/></td>
                    <td class="tdSide">
                        <div id="sEmail_Msg" class="message">
                            推荐使用免费的QQ、搜狐、网易、新浪和hotmail邮箱。绑定邮箱后，您才会收到拍拍发出的通知提醒邮件</div>
                    </td>
                </tr>
                <tr>
                    <td class="tdLeft" style="height: 43px">
                        手机号码：</td>
                    <td class="tdSide" style="height: 43px" align="left"><input maxlength="11" name="sMobile1" class=inputwidth size="18" runat="server" id="mobile"/><br />
                        </td>
                    <td class="tdSide" style="height: 43px">
                        <div id="sMobile_Msg" class="message">
                            请正确填写您的手机号码。</div>
                    </td>
                </tr>
                <tr>
                    <td class="tdLeft">
                        真实姓名：</td>
                    <td class="tdSide" align="left">
                        <input  name="sName"  class=inputwidth size="18" runat="server" id="trueName" /></td>
                    <td class="tdSide">
                        <div id="sName_Msg" class="message">
                            请填写您的真实姓名。</div>
                    </td>
                </tr>
	
                
				<tr>
                    <td class="tdLeft">
                        证件类型：</td>
                    <td class="tdSide" colspan="2" align="left">
                        <select datatype="Require" name="cIdentitycardType">
                            <option selected="selected" value="0">身份证</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td class="tdLeft">
                        证件号码：</td>
                    <td class="tdSide" align="left">
                        <input  name="sIdentityCardNum" size="30" runat="server" id="IdCard" /></td>
                    <td class="tdSide">
                        <div id="sIdentityCardNum_Msg" class="message">
                            请正确填写您的证件号码。</div>
                    </td>
                </tr>
                <tr>
                    <td class="tdLeft">
                        详细地址：</td>
                    <td class="tdSide" colspan="2" align="left">
                        <input  name="sAddress"  size="60" runat="server" id="userAddr" /></td>
                </tr>
                <tr>
                    <td class="tdLeft">&nbsp;
                        </td>
                    <td class="tdSide" colspan="2">
                        <div id="sAddress_Msg" class="message">
                            请输入您将用于交易的详细收货地址。</div>
                    </td>
                </tr>
                <tr>
                    <td class="tdLeft">
                        邮政编码：</td>
                    <td class="tdSide" align="left">
                        <input name="sPostCode"  class=inputwidth size="8"  runat="server" id="postCode"/></td>
                    <td class="tdSide">
                        <div id="sPostCode_Msg" class="message">
                            请输入邮政编码。</div>
                    </td>
                </tr>
                <tr>
                    <td class="tdLeft">
                        联系固话：</td>
                    <td class="tdSide" colspan="2" align="left">
                        <input name="sPhoneNum1" size="10"  id="sPhoneNum1" runat="server"/>
                        -
                        <input name="sPhoneNum2"  size="30" id="sPhoneNum2" runat="server"/>
                        -
                        <input name="sPhoneNum3"  size="10" runat="server" id="sPhoneNum3"/>
                        </td>
                </tr>
                <tr>
                    <td class="tdLeft">&nbsp;
                        </td>
                    <td class="tdSide" colspan="2" align="left">
                        <div id="sPhone_Msg" class="message">
                            格式：(区号-号码-分机号)，分机号可省略</div>
                    </td>
                </tr>
                <tr>
                    <td class="tdLeft">
                        传真号码：</td>
                    <td class="tdSide" colspan="2" align="left">
                        <input name="sFaxNum1"  size="10"  runat="server" id="sFaxNum1"/>
                        -
                        <input name="sFaxNum2"  size="30" runat="server" id="sFaxNum2" />
                        -
                        <input name="sFaxNum3"  size="10"  runat="server" id="sFaxNum3"/>
                        </td>
                </tr>
                <tr>
                    <td class="tdLeft">&nbsp;
                        </td>
                    <td class="tdSide" colspan="2">
                        <div id="sFax_Msg" class="message">
                            格式：(区号-号码-分机号)，分机号可省略</div>
                    </td>
                </tr>
              
                <tr>
                    <td class="tdLeft">
                        认证状态：</td>
                    <td class="tdSide" colspan="2"align="left"><asp:Label id="status" runat="server" Text="" ></asp:Label></td>
                </tr>
            </table>
            <div class="divFoot">
              <!--<input name="Submit3" type="submit" value="确定修改"  runat="server" id="Submit1"   />-->
              <asp:Button ID="buuton1" runat="server" OnClick="buuton1_Click" Text="确定修改"/>
                &nbsp; &nbsp; &nbsp;
                <input name="reset" type="reset" value="取消" />&nbsp;
                
            </div>
       
    
    </div></td>
	 </tr></table>
	 
    </form>
            <uc:Foot_vip ID="foot_vip3" runat="server" />
</html>
