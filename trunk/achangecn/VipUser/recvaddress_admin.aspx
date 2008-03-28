<%@ page language="C#" autoeventwireup="true" inherits="VipUser_recvaddress_admin, App_Web_xyjt5bop" %>
<%@ Register Src="Top_vip.ascx" TagName="Top_vip" TagPrefix="uc" %>
<%@ Register Src="Foot_vip.ascx" TagName="Foot_vip" TagPrefix="uc" %>
<%@ Register Src="Left_vip.ascx" TagName="Left_vip" TagPrefix="uc" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>收货地址设置-会员管理中心-<%=SetUrl() %></title>
    <script language="javascript" src="../include/yz.js"></script>
        <style>
   #userLink22 {
	background-color: #FEFAD8;
	color:#ffffff;
    }
    </style>
    </head>
<body> 
 <uc:Top_vip ID="top_vip1" runat="server" />
    <form  runat="server" id="recvaddress_add" action="recvaddress_admin.aspx" method="post" name="form">

     <table class="user_table" border=0 align="center">
  <tr>
    <td id=myLeft valign=top style="width: 41px">
	<uc:Left_vip ID="left_vip2" runat="server" />
	</td>
	 <TD style="width: 5px"></TD>	 
	<td vAlign=top>
    <div>
        <div class="DivMain">
            常用收货地址</div>
        <table align="center" border="0" cellpadding="0" cellspacing="0" class="tdMain tdSide"
            width="100%">
            <tr>
                <td align="middle" width="100">
                    <img height="56" src="Image/head_note.gif" vspace="5" width="79" /></td>
                <td class="desc">
                    您好，在这里可以预设您的收货地址，最多10个。</td>
            </tr>
        </table>
<asp:DataList ID="DataList1" runat="server" Width="100%" OnDeleteCommand="DataList1_DeleteCommand" OnEditCommand="DataList1_EditCommand"  >
       <HeaderTemplate>
     <TABLE cellSpacing="0" cellPadding="0" width="100%" border="0"  >
        <TBODY>
        <TR style="background-color:#F7F7F7; height:25px" >
      
        <td>收货人姓名</td>
        <td>地址</td>
        <td>邮编</td>
        <td>联系电话</td>
        <td>手机</td>
        <td>操作</td>
        </tr>
        </HeaderTemplate>
        <ItemTemplate>
        <tr>
        <td><asp:TextBox ID="txtUserProName"  Width="100" runat="server" Text='<%# Eval("yx_userproname") %>'></asp:TextBox></td>
        <td><asp:TextBox ID="txtUserProAddress" Width="100" runat="server" Text='<%# Eval("yx_userproaddress") %>'></asp:TextBox></td>
        <td><asp:TextBox ID="txtUserProPost" runat="server" Text='<%# Eval("yx_userpropost") %>' Width="50"></asp:TextBox></td>
        <td><asp:TextBox ID="txtUserProTel" runat="server" Text='<%# Eval("yx_userprotel") %>' Width="80"></asp:TextBox></td>
        <td><asp:TextBox ID="txtUserProMobel" Text='<%# Eval("yx_userpromoble") %>' runat="server" Width="80"></asp:TextBox></td>
        <td Width="50">
        <IMG height="10" hspace="3" src="Image/qmanage_pic_modify.gif" width="11"><asp:LinkButton ID="LinkButton1" runat="server" Text="修改" CommandName="Edit" /> 
        <IMG height="10" hspace="3" src="Image/qmanage_pic_delete.gif" width="9"><asp:LinkButton ID="LinkButton2" runat="server" Text="删除"  CommandName="Delete" OnClientClick="return confirm('您确定要删除吗？');" /> </TD>
     </tr>
        </ItemTemplate>
        <FooterTemplate>
        </tbody>
        </table>
      </FooterTemplate>
  
        
        </asp:DataList>
        
        
        
            <div class="divMenu" style="margin-top: 10px">
                <div class="DivMain">
                    
                    增加收货地址</div>
            </div>
         
                <table align="center" border="0" cellpadding="0" cellspacing="0" class="tdMain" width="100%">
                    <tr>
                        <td class="tdLeft" width="120" align="left">
                            收货人姓名：</td>
                        <td class="tdSide" align="left">
                            <input datatype="Chinese" maxlength="16" msg="真实姓名只允许中文" name="sRevcName" onblur="Validator.Validate(form,this)"
                                 require="true" />
                        </td>
                        <td class="tdSide" colspan="2" align="left">
                            <div id="sRevcName_Msg" class="message">
                                请填写您的真实姓名。</div>
                        </td>
                    </tr>
                    <tr>
                        <td class="tdLeft" valign="top" >
                            地址：</td>
                        <td class="tdSide" colspan="5" align="left" style="width: 375px">
                            <textarea cols="50" datatype="LimitB" max="255" min="6" msg="收货地址必须在[6,255]个字节之内,一个中文是两个字节"
                                name="sRecvAddress" onblur="Validator.Validate(form,this)"
                                 require="true" rows="4"></textarea>
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td class="tdLeft" align="left">
                            &nbsp;</td>
                        <td class="tdSide" colspan="3">
                            <div id="sRecvAddress_Msg" class="message">
                                请输入您的详细收货地址,不支持换行。
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td class="tdLeft" >
                            邮编：</td>
                        <td class="tdSide" align="left" >
                            <input datatype="Zip" msg="邮政编码不存在" name="sRecvPostCode" onblur="Validator.Validate(form,this)"
                                require="false" /></td>
                        <td class="tdSide" colspan="2" align="left">
                            <div id="sRecvPostCode_Msg" class="message">
                                &nbsp;</div>
                        </td>
                    </tr>
                    <tr>
                        <td class="tdLeft" align="left">
                            联系电话：</td>
                        <td class="tdSide" colspan="3" align="left">
                            <input name="sPhoneNum1" require="false"
                                size="5" />
                            -
                            <input name="sPhoneNum2" 
                                 require="false" size="18" />
                            -
                            <input name="sPhoneNum3" 
                                 require="false" size="4" />

                    </tr>
                    <tr>
                        <td class="tdLeft" style="height: 26px" >
                            &nbsp;</td>
                        <td class="tdSide" colspan="3" style="height: 26px" align="left">
                            <div id="sRecvPhone_Msg" class="message">
                                格式:区号-号码-分机号,分机号可省略</div>
                        </td>
                    </tr>
                    <tr>
                        <td class="tdLeft" align="left">
                            手机：</td>
                        <td class="tdSide" colspan="3" align="left">
                            <input datatype="Mobile" msg="手机号码不正确" name="sRecvMobile" onblur="Validator.Validate(form,this);"
                                require="false" /></td>
                    </tr>
                    <tr>
                        <td class="tdLeft">
                            &nbsp;</td>
                        <td class="tdSide" colspan="3" align="left">
                            <div id="sRecvMobile_Msg" class="message">
                                手机和联系电话只需填写一项以上即可</div>
                        </td>
                    </tr>
   </table>
                <div class="lineCenter" style="padding-right: 10px; padding-left:0px; padding-bottom: 10px;  text-align:center;
                    padding-top: 10px">
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="提交" Width="125px" /><!-- <input name="submit" type="submit" value=" 确 认 " id="Submit1" --></div>
            </div>
    </td>
  </tr></table>
    
    </form>
    <uc:Foot_vip ID="foot_vip3" runat="server" />
<script language="javascript">document.getElementById('userLink1').className='s';</script> 
    

</body>
</html>
