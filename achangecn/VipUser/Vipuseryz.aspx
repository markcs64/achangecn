<%@ page language="C#" autoeventwireup="true" inherits="Vipuser_Vipuseryz, App_Web_xyjt5bop" %>

<%@ Register Assembly="Standny.WebControls" Namespace="Standny.WebControls" TagPrefix="Standny" %>
<%@ Register Src="Top_vip.ascx" TagName="Top_vip" TagPrefix="uc" %>
<%@ Register Src="Foot_vip.ascx" TagName="Foot_vip" TagPrefix="uc" %>
  

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
 <title>申请店铺-会员管理中心-<%=SetUrl() %></title>
    <style type="text/css">
    #buyLink1 {
	background-color: #FEFAD8;
	color:#ffffff;
}
</style>
<script language="javascript" type="text/javascript" src="../include/JScript.js"></script>
<script src="../include/yz.js" type="text/javascript" language=javascript></script>
</head>
<body>
<script language="javascript">
	function dis2(){
		document.getElementById('selectread').style.display='';
		document.getElementById('selectyz').style.display='none';
		document.getElementById('selectwrite').style.display='none';
	}
		function dis1(){
		document.getElementById('selectread').style.display='none';
		document.getElementById('selectyz').style.display='';
		document.getElementById('selectwrite').style.display='none';
	}
			function dis3(){
		document.getElementById('selectread').style.display='none';
		document.getElementById('selectyz').style.display='none';
		document.getElementById('selectwrite').style.display='';
	}
</script>

<!--beginTop--><uc:Top_vip ID="top_vip1" runat=server /><!--#endTop-->
<asp:Panel ID="Panel1" runat="server">
<div id="selectyz"><table width="78%" border="0" align="center">
  <tr>
    <td><img src="../images/member_title_auth_1.gif" width="760" height="25" /></td>
  </tr>
  <tr>
    <td align="center">请选择一种合适的认证方式</td>
  </tr>
  <tr>
    <td align="center"><img onclick="dis2()" border="0" src="../images/member_button_freeperson.gif" style="cursor:hand" width="150" height="39" /></td>
  </tr>
  <tr>
    <td align="left"><strong>免费身份认证介绍</strong>：成为本网站高级卖家，您就可以拥有自己的网上店铺了，售卖的物品数量也将不受限制。认证过程中需要您本人身份证件的扫描文件或照片文件。(本网站在收到您的身份证认证资料后，交由国家有关部门进行核对认证，验证所需时间为三个工作日)</td>
  </tr>
  <tr>
    <td align="center">&nbsp;</td>
  </tr>
</table>
</div>
<div id="selectread"  style="display:none"><table width="78%" border="0" align="center">
  <tr>
    <td><img src="../images/member_title_auth_2.gif" width="760" height="25" /></td>
  </tr>
  <tr>
    <td align="center">卖家须知</td>
  </tr>

  <tr></tr>
  <tr>
    <td align="left"><div> 
      1) 本网承诺不会将您的信息泄露给任何第三方用作商业用途。    
      2)   可用证件：中国大陆暂时仅支持身份证，有效期3个月内的证件不予受理。<br />
      3) 如选择直接上传证件，必须是原件扫描件。 <br />
      4)   未满18周岁不可以成为腾讯的身份证认证卖家！ <br />
      5) 通过认证的卖家不允许修改真实姓名和身份证号码。 </div></td>
  </tr>
  <tr>
    <td align="center"><input name="button" type="button" style="HEIGHT: 24px" onclick="dis1()" value="&lt;&lt; 返回前页" />
&nbsp;
<input name="button2" type="button" id="next" style="HEIGHT: 24px" onclick="dis3()" value="下一步 &gt;&gt;" /></td>
  </tr>
</table>
</div>
<div id="selectwrite" style="display:none">
<form action="?action=Add" onsubmit="return Validator.Validate(document.getElementById('form1'),3)" runat="server" name=form1 method="post">
<table width="78%" border="0" align="center">
  <tr>
    <td colspan="2"><img src="../images/member_title_auth_3.gif" width="760" height="25" /></td>
  </tr>
  <tr>
    <td colspan="2" align="center">(带*号的为必填项)</td>
  </tr>
  <tr>
    <td colspan="2" align="left"><table width="100%" align="center" cellpadding="0" cellspacing="0">
      <tr>
        <td align="right">*真实姓名：</td>
        <td width="170">
            <asp:TextBox ID="sName" maxlength="32" size="27" msg="真实姓名不正确(中文)" require="true" datatype="Chinese" runat="server"></asp:TextBox>
        
      </td>
        <td width="452"><div id="sName_Msg">请填写您身份证上的真实姓名以便通过身份认证。</div></td>
      </tr>
      <tr>
        <td align="right">*证件类型：</td>
        <td><select size="1" name="cIdentitycardType">
            <option value="0" selected="selected">身份证</option>
        </select></td>
        <td width="452">&nbsp;</td>
      </tr>
      <tr>
        <td align="right">*证件号码：</td>
        <td>
        <input size="27" name="sIdentityCardNum" msg="证件号码不正确" require="true" datatype="IdCard" date="1181534276" />
        
    
</td>
        <td width="452"><div id="sIdentityCardNum_Msg">必填项不能为空</div></td>
      </tr>
        <tr>
            <td align="right" style="height: 19px">
                *手机号码：</td>
            <td style="height: 19px"><input size="27" name="Telephone" msg="电话号码不正确"  require="true" datatype="Mobile"/></td>
            <td style="height: 19px" width="452">
                必填项不能为空</td>
        </tr>
        <tr>
            <td align="right" style="height: 19px">
                *联系地址：</td>
            <td style="height: 19px"><input size="27" name="Address" msg="地址不正确"  require="true" /></td>
            <td style="height: 19px" width="452">
                必填项不能为空</td>
        </tr>
    </table>    </td>
  </tr>
  <tr></tr>
  <tr>
    <td colspan="2" align="left">*有效身份证件：  上传居民身份证的完整照片或扫描件 </td>
  </tr>  <tr>
    <td width="16%" align="left">&nbsp;</td>
    <td width="84%" align="left"><asp:FileUpload ID="photo" name="photo" runat="server" require="true" datatype="Filter" msg="请选择要上传的物品图片，现暂时只支持jpg\gif图片文件" accept="jpg, gif" /></td>
  </tr>  <tr>
    <td colspan="2" align="left"><div id="file_Msg">图片大小请控制在120K以内,上传真实有效的身份证图片(包括身份证数码照片，清晰的扫描件等等)</div></td>
  </tr><tr>
    <td colspan="2" align="left"><div id="Div1">*必须提供您的身份证，并在资料中注明以下信息：</div></td>
  </tr><tr>
    <td colspan="2" align="center"><div id="Div2"><img src="../images/member_pic_faxemp.gif" width="351" height="150" /></div></td>
  </tr>
  <tr>
    <td colspan="2" align="center"><input name="button" type="button" style="HEIGHT: 24px" onclick="dis2()" value="&lt;&lt; 返回前页" />
&nbsp;
        <asp:Button ID="Button1" runat="server" Text="下一步 &gt;&gt;" OnClick="Button1_Click" /></td>
  </tr>
</table>
</form>
</div>
</asp:Panel>
<asp:Panel Visible=false ID="Panel2" runat="server">
<div id="Div3"><table width="78%" border="0" align="center">
  <tr>
    <td><img src="../images/member_title_auth_1.gif" width="760" height="25" /></td>
  </tr>
  <tr>
    <td align="center" height=50 valign=middle>认证成功，请等待管理员审核 &nbsp;<a href="../Default.aspx">返回首页</a>&nbsp;<a href="default_vip.aspx">进入会员中心</a></td>
  </tr>
  <tr>
    <td align="center">&nbsp;</td>
  </tr>
</table>
</div>
</asp:Panel>
<!--beginTop--><uc:Foot_vip ID="Foot_vip1" runat=server /><!--#endTop-->
</body>
</html>