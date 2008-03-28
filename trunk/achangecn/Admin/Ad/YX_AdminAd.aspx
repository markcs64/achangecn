<%@ page language="C#" autoeventwireup="true" inherits="Admin_Ad_YX_AdminAd, App_Web_59kuhmaf" %>
<%@ Register  Src="../Admin_Btm.ascx" TagName="ChangHope_btm" TagPrefix="Chp" %>
<%@ Register TagPrefix="ChangeHope" TagName="Chklogin" Src="~/Admin/YX_CheckLogin.ascx" %>
<ChangeHope:Chklogin _Column="6" ID="chk1" runat="server" />
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
<title>无标题页</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" href="../style/style.css" type="text/css" />
<script language="javascript" type="text/javascript" src="../style/JScript.js"></script>

</head>
<body>
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
          <td height="25" class="category t2" width=76>广告管理</td>
         <td width="1050" class="category">
             <asp:HyperLink ID="HyperLink1" NavigateUrl="YX_AdminAd.aspx?YX_Flag=0" runat="server">[所有广告]</asp:HyperLink>
             <asp:HyperLink ID="HyperLink2" NavigateUrl="YX_AdminAd.aspx?YX_Flag=1" runat="server">[图片广告]</asp:HyperLink>
			 <asp:HyperLink ID="HyperLink3" NavigateUrl="YX_AdminAd.aspx?YX_Flag=2" runat="server">[Flash广告]</asp:HyperLink>
             <asp:HyperLink ID="HyperLink4" NavigateUrl="YX_AdminAd.aspx?YX_Flag=4" runat="server">[文字广告]</asp:HyperLink>
			 <asp:HyperLink ID="HyperLink5" NavigateUrl="YX_AdminAd.aspx?YX_Flag=3" runat="server">[幻灯片广告管理]</asp:HyperLink>
             <asp:HyperLink ID="HyperLink6" NavigateUrl="YX_AdminAd.aspx?YX_FS=Slide" runat="server">[添加幻灯片广告]</asp:HyperLink>
			 <asp:HyperLink ID="HyperLink7" NavigateUrl="YX_AdminAd.aspx?YX_FS=dob" runat="server">[添加对联广告]</asp:HyperLink>
             <asp:HyperLink ID="HyperLink8" NavigateUrl="YX_AdminAd.aspx?YX_FS=Add" runat="server">[添加广告]</asp:HyperLink>
             <asp:HyperLink ID="HyperLink9" NavigateUrl="YX_CreateJS.aspx" runat="server">[生成广告JS]</asp:HyperLink>	
           </td>
        </tr>
 </table>
    
 <table width="100%" height="5" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td></td>
  </tr>
</table>

         <asp:Panel ID="Panel1" runat="server" width="100%">
<table width="100%" border="0" cellspacing="0" cellpadding="0" align="center">
  <tr>
    <td width="100%">
	<asp:DataGrid ID="dg1" AutoGenerateColumns="False" CellPadding="1" CellSpacing="1" PageSize="20"  runat="server"  Width="100%" AllowPaging="True" border=0 OnItemDataBound="dg1_ItemDataBound" > <HeaderStyle  CssClass="topbg" Height="25px"  HorizontalAlign="Center" />
                 <ItemStyle BackColor="#F6F6F6" Height="25px" HorizontalAlign="Center" />
                   <Columns>
               <asp:TemplateColumn HeaderText="选   择">
                <ItemTemplate >
				
				 <input id="YX_CH" name="YX_CH" type="checkbox" style="border:0 " value="<%# DataBinder.Eval(Container.DataItem,"YX_ID") %>"  />
				
                </ItemTemplate>
                      <HeaderStyle CssClass="B" />
             </asp:TemplateColumn>
              <asp:TemplateColumn HeaderText="I  D">
                <ItemTemplate >
				
				<%# DataBinder.Eval(Container.DataItem,"YX_ID") %>
				
                </ItemTemplate>
                      <HeaderStyle CssClass="B" />
             </asp:TemplateColumn>
			      <asp:TemplateColumn HeaderText="调用代码">
                <ItemTemplate >
				
				
				<a href="?YX_FS=Edit&YX_MID=<%# DataBinder.Eval(Container.DataItem,"YX_ID") %>"><%# DataBinder.Eval(Container.DataItem, "YX_AdName")%></a>
                </ItemTemplate>
                      <HeaderStyle CssClass="B" />
             </asp:TemplateColumn>
             <asp:TemplateColumn HeaderText="广告类型">
                <ItemTemplate >
				
			<%# RetAdName(Convert.ToInt16(Eval("YX_AdType")))%>
				
             </ItemTemplate>
                                   <HeaderStyle CssClass="B" />
             </asp:TemplateColumn>
             <asp:TemplateColumn HeaderText="广告位置">
                <ItemTemplate >
				
			<%# Convert.ToString(Eval("YX_AdBz"))%>
				
             </ItemTemplate>
                 <HeaderStyle CssClass="B" />
             </asp:TemplateColumn>

             <asp:TemplateColumn HeaderText="属性">
                <ItemTemplate >
				宽：<%# Eval("YX_AdWidth")%>px&nbsp;高：<%# Eval("YX_AdHeight")%>px
				
                </ItemTemplate>
                  <HeaderStyle CssClass="B" />
             </asp:TemplateColumn>
			               <asp:TemplateColumn HeaderText="添加时间">
                <ItemTemplate >
				
					<%#DataBinder.Eval(Container.DataItem, "YX_AddTime")%>
				
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
                <td align="center" bgcolor="#E7E7E7" style="width: 900px;color:000000">
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
                <td align="left" bgcolor="#e7e7e7" colspan="2">
                    <asp:DropDownList ID="DropDownList1" runat="server">
            
                       <asp:ListItem Value="8">---批量删除---</asp:ListItem>     
                   
                    </asp:DropDownList>
                </td>
                <td align="center" style="width: 50px"><asp:Button ID="Button2" runat="server" Text="执行操作" OnClientClick="return isExc()" OnClick="Button2_Click" onmousemove=showBtnOver(this) onmouseout=showBtnOut(this)  CssClass="submitMiniGreen"/>
                </td>
            </tr>
        </table></td>
  </tr>
  <tr>
                  <td align="center" colspan="3" style="color:#ffffff; font-size:14px">
                  调用方法：请在你要调用的地方插上如下代码<br>
                  &lt;script  src="Include/Ad/调用代码.JS" type="text/jscript"&gt;&lt;/script&gt
                </td>
              </tr>
</table>
        </asp:Panel>
          <asp:Panel ID="Panel2" runat="server" Width="100%">
           <table width="100%" border="0" align="center" cellpadding="1" cellspacing="1" id="TABLE1">
            <tr>
              <td width="18%" class="B topbg">设置名称</td>
              <td height="25" class="B topbg" style="width: 482px">基本参数设置</td>
              <td width="21%"  class="B topbg">设置说明</td>
            </tr>
                      <tr>
                          <td align="center" bgcolor="#f6f6f6">
                              广告类型：</td>
                          <td align="left" bgcolor="#f6f6f6" height="25" style="width: 482px">
                              <asp:RadioButton ID="RadioButton4" runat="server" GroupName="Ad" Text="图片广告" />
                              <asp:RadioButton ID="RadioButton5" runat="server" GroupName="Ad" Text="Falsh广告" />
                              &nbsp;<asp:RadioButton
                                  ID="RadioButton7" runat="server" GroupName="Ad" Text="漂浮广告" />
                        </td>
                          <td bgcolor="#f6f6f6">
                          </td>
                      </tr>
            <tr>
              <td align="center" bgcolor="#F6F6F6">调用代码：</td>
              <td height="25" align="left" bgcolor="#F6F6F6" style="width: 482px">
                  <asp:TextBox ID="TextBox2" runat="server" Width="237px"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox2"
                      Display="Dynamic" ErrorMessage="＊不能为空"></asp:RequiredFieldValidator></td>
              <td bgcolor="#F6F6F6">&nbsp;</td>
            </tr>
                      <tr>
                          <td align="center" bgcolor="#f6f6f6">
                              图 片：</td>
                          <td align="left" bgcolor="#f6f6f6" height="25" style="width: 482px">
                            <table>
                <tr>
                <td>
                <input name="T1" type="text" runat="server" id="T1" style="width: 163px" />
          
                </td>
                <td>
                <iframe id="Iframe1" src="YX_UpFile2.aspx" scrolling="no" frameborder="0" width="300px" height="25"></iframe>
                </td>
                </tr>
                </table></td>
                          <td bgcolor="#f6f6f6">
                          </td>
                      </tr>
            <tr>
              <td align="center" bgcolor="#F6F6F6" style="height: 27px">
                  链接地址：</td>
              <td align="left" bgcolor="#F6F6F6" style="height: 27px; width: 482px;">
                 <asp:TextBox ID="TextBox5" runat="server" Width="236px"></asp:TextBox>
             </td>
            
              <td bgcolor="#F6F6F6" style="height: 27px">&nbsp;</td>
            </tr>
                      <tr>
                          <td align="center" bgcolor="#f6f6f6" style="width:240px; height: 25px;">
                              广告大小：</td>
                          <td align="left" bgcolor="#f6f6f6" style="height: 25px; width: 482px;">
                          <table style="width: 43%; height: 24px">
                          <tr>
                          <td style="width: 40px; height: 23px;" align="center">
                              宽：</td>
                            <td style="width: 48px; height: 23px;" align="left">
                                <asp:TextBox ID="TextBox9" runat="server" Width="51px"></asp:TextBox>px</td>
                            <td style="width: 21px; height: 23px;">
                                高：</td>
                            <td style="width: 40px; height: 23px;" align="left">
                                <asp:TextBox ID="TextBox10" runat="server" Width="52px"></asp:TextBox>px</td>
                          </tr>
                          </table>
                          
                        </td>
                          <td bgcolor="#f6f6f6" style="height: 25px">
                          </td>
                      </tr>
                 <tr>
                          <td align="center" bgcolor="#f6f6f6">
                              文字说明：
                          </td>
                          <td align="left" bgcolor="#f6f6f6" height="25" style="width: 482px">
                              <asp:TextBox ID="TextBox11" runat="server" Width="301px"></asp:TextBox>
                          </td>
                          <td bgcolor="#f6f6f6">
                          </td>
              </tr>
                      <tr>
                          <td align="center" bgcolor="#f6f6f6">
                              广告位置：</td>
                          <td align="left" bgcolor="#f6f6f6" height="25" style="width: 482px">
                              <asp:TextBox ID="TextBox12" runat="server" Width="301px"></asp:TextBox></td>
                          <td bgcolor="#f6f6f6">
                          </td>
                      </tr>
            <tr>
              <td align="center" bgcolor="#F6F6F6"></td>
              <td height="25" bgcolor="#F6F6F6" align="center" style="width: 482px">&nbsp;<asp:Button ID="Button1" runat="server" Text="添　　加" Width="104px" OnClick="Button1_Click1" onmousemove=showBtnOver(this) onmouseout=showBtnOut(this)  CssClass="submitMiniGreen"/>
                 &nbsp;&nbsp; <input id="Button5" style="width: 105px" type="button" onClick="history.back()" value="返回上一级" onmousemove=showBtnOver(this) onmouseout=showBtnOut(this)  Class="submitMiniGreen"/></td>
              <td bgcolor="#F6F6F6">&nbsp;</td>
            </tr>
              <tr>
                  <td align="center" colspan="3" style="color:#ffffff; font-size:14px">
                  调用方法：请在你要调用的地方插上如下代码<br>
                  &lt;script  src="Include/Ad/调用代码.JS" type="text/jscript"&gt;&lt;/script&gt
                </td>
              </tr>
          </table>
        </asp:Panel>
                <asp:Panel ID="Panel3" width="100%" runat="server" >
                  <table width="100%" border="0" align="center" cellpadding="1" cellspacing="1" id="TABLE2">
            <tr>
              <td width="18%"  class="B topbg">设置名称</td>
              <td height="25"  class="B topbg" style="width: 482px">基本参数设置</td>
              <td width="21%"  class="B topbg">设置说明</td>
            </tr>
                      <tr>
                          <td align="center" bgcolor="#f6f6f6">
                              广告类型：</td>
                          <td align="left" bgcolor="#f6f6f6" height="25" style="width: 482px">
                              <asp:RadioButton ID="RadioButton1" runat="server" GroupName="Ad" Text="图片广告" />
                              <asp:RadioButton ID="RadioButton2" runat="server" GroupName="Ad" Text="Falsh广告" />
                              <asp:RadioButton ID="RadioButton6" runat="server" GroupName="Ad" Text="漂浮广告" />&nbsp;
                          </td>
                          <td bgcolor="#f6f6f6">
                          </td>
                      </tr>
            <tr>
              <td align="center" bgcolor="#F6F6F6">调用代码：</td>
              <td height="25" align="left" bgcolor="#F6F6F6" style="width: 482px">
                  <asp:TextBox ID="TextBox1" runat="server" Width="237px"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox1"
                      Display="Dynamic" ErrorMessage="＊不能为空"></asp:RequiredFieldValidator></td>
              <td bgcolor="#F6F6F6">&nbsp;</td>
            </tr>
                      <tr>
                          <td align="center" bgcolor="#f6f6f6">
                              图 片：</td>
                          <td align="left" bgcolor="#f6f6f6" height="25" style="width: 482px">
                            <table>
                <tr>
                <td>
                <input name="imgUrl" type="text" runat="server" id="imgUrl" style="width: 163px" />
          
                </td>
                <td>
                <iframe id="upfile" src="YX_UpFile.aspx" scrolling="no" frameborder="0" width="300px" height="25"></iframe>
                </td>
                </tr>
                </table></td>
                          <td bgcolor="#f6f6f6">
                          </td>
                      </tr>
            <tr>
              <td align="center" bgcolor="#F6F6F6" style="height: 27px">
                  链接地址：</td>
              <td align="left" bgcolor="#F6F6F6" style="height: 27px; width: 482px;">
                 <asp:TextBox ID="TextBox4" runat="server" Width="236px"></asp:TextBox>
             </td>
            
              <td bgcolor="#F6F6F6" style="height: 27px">&nbsp;</td>
            </tr>
                      <tr>
                          <td align="center" bgcolor="#f6f6f6" style="width:240px; height: 25px;">
                              广告大小：</td>
                          <td align="left" bgcolor="#f6f6f6" style="height: 25px; width: 482px;">
                          <table style="width: 43%; height: 24px">
                          <tr>
                          <td style="width: 40px; height: 23px;" align="center">
                              宽：</td>
                            <td style="width: 48px; height: 23px;" align="left">
                                <asp:TextBox ID="TextBox6" runat="server" Width="51px"></asp:TextBox>px</td>
                            <td style="width: 21px; height: 23px;">
                                高：</td>
                            <td style="width: 40px; height: 23px;" align="left">
                                <asp:TextBox ID="TextBox8" runat="server" Width="52px"></asp:TextBox>px</td>
                          </tr>
                          </table>
                          
                        </td>
                          <td bgcolor="#f6f6f6" style="height: 25px">
                          </td>
                      </tr>
                 <tr>
                          <td align="center" bgcolor="#f6f6f6">
                              文字说明：
                          </td>
                          <td align="left" bgcolor="#f6f6f6" height="25" style="width: 482px">
                              <asp:TextBox ID="TextBox3" runat="server" Width="301px"></asp:TextBox>
                          </td>
                          <td bgcolor="#f6f6f6">
                          </td>
                    </tr>
                      <tr>
                          <td align="center" bgcolor="#f6f6f6">
                              广告位置：</td>
                          <td align="left" bgcolor="#f6f6f6" height="25" style="width: 482px">
                              <asp:TextBox ID="TextBox7" runat="server" Width="301px"></asp:TextBox></td>
                          <td bgcolor="#f6f6f6">
                          </td>
                      </tr>
            <tr>
              <td align="center" bgcolor="#F6F6F6"></td>
              <td height="25" bgcolor="#F6F6F6" align="center" style="width: 482px">&nbsp;<asp:Button ID="Button3" runat="server" Text="修　　改"  OnClick="Button3_Click1" onmousemove=showBtnOver(this) onmouseout=showBtnOut(this)  CssClass="submitMiniGreen"/>
                 &nbsp;&nbsp; <input id="Button4" style="width: 105px" type="button" onClick="history.back()" value="返回上一级" onmousemove=showBtnOver(this) onmouseout=showBtnOut(this) Class="submitMiniGreen"/></td>
              <td bgcolor="#F6F6F6">&nbsp;</td>
            </tr>
               <tr>
                  <td align="center" colspan="3" style="color:#ffffff; font-size:14px">
                  调用方法：请在你要调用的地方插上如下代码<br>
                  &lt;script  src="Include/Ad/调用代码.JS" type="text/jscript"&gt;&lt;/script&gt
                 </td>
              </tr>
          </table>
        </asp:Panel>
        
        
        
 <asp:Panel ID="Panel4" width="100%" runat="server" >
                  <table width="100%" border="0" align="center" cellpadding="1" cellspacing="1" id="TABLE3">
            <tr>
              <td width="18%"  class="B topbg">设置名称</td>
              <td height="25" class="B topbg" style="width: 482px">基本参数设置</td>
              <td width="21%"  class="B topbg">设置说明</td>
            </tr>
                      <tr>
                          <td align="center" bgcolor="#f6f6f6">
                              广告类型：</td>
                          <td align="left" bgcolor="#f6f6f6" height="25" style="width: 482px">
                         
                              <asp:RadioButton ID="RadioButton12" runat="server"　GroupName="Ad" Text="幻灯片" /></td>
                          <td bgcolor="#f6f6f6">
                          </td>
                      </tr>
            <tr>
              <td align="center" bgcolor="#F6F6F6">调用代码：</td>
              <td height="25" align="left" bgcolor="#F6F6F6" style="width: 482px">
                  <asp:TextBox ID="TextBox13" runat="server" Width="237px"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox1"
                      Display="Dynamic" ErrorMessage="＊不能为空"></asp:RequiredFieldValidator></td>
              <td bgcolor="#F6F6F6">&nbsp;</td>
            </tr>
                      <tr>
                          <td align="center" bgcolor="#f6f6f6">
                              图 片：</td>
                          <td align="left" bgcolor="#f6f6f6" height="25" style="width: 482px">
                              <asp:TextBox ID="imgUrlx" runat="server" Width="432px" MaxLength="500"></asp:TextBox></td>
                          <td bgcolor="#f6f6f6">
                          </td>
                      </tr>
                      <tr>
                          <td align="center" bgcolor="#f6f6f6" style="height: 27px">
                          </td>
                          <td align="left" bgcolor="#f6f6f6" style="width: 482px; height: 27px">
                <iframe id="Iframe2" src="YX_UpFile3.aspx" scrolling="no" frameborder="0" width="300px" height="25" style="width: 343px; height: 46px"></iframe>
                          </td>
                          <td bgcolor="#f6f6f6" style="height: 27px">
                          </td>
                      </tr>
            <tr>
              <td align="center" bgcolor="#F6F6F6" style="height: 27px">
                  链接地址：</td>
              <td align="left" bgcolor="#F6F6F6" style="height: 27px; width: 482px;">
                 <asp:TextBox ID="TextBox14" runat="server" Width="236px"></asp:TextBox>
             </td>
            
              <td bgcolor="#F6F6F6" style="height: 27px">&nbsp;</td>
            </tr>
                      <tr>
                          <td align="center" bgcolor="#f6f6f6" style="width:240px; height: 25px;">
                              广告大小：</td>
                          <td align="left" bgcolor="#f6f6f6" style="height: 25px; width: 482px;">
                          <table style="width: 43%; height: 24px">
                          <tr>
                          <td style="width: 40px; height: 23px;" align="center">
                              宽：</td>
                            <td style="width: 48px; height: 23px;" align="left">
                                <asp:TextBox ID="TextBox15" runat="server" Width="51px"></asp:TextBox>px</td>
                            <td style="width: 21px; height: 23px;">
                                高：</td>
                            <td style="width: 40px; height: 23px;" align="left">
                                <asp:TextBox ID="TextBox16" runat="server" Width="52px"></asp:TextBox>px</td>
                          </tr>
                          </table>
                          
                        </td>
                          <td bgcolor="#f6f6f6" style="height: 25px">
                          </td>
                      </tr>
                 <tr>
                          <td align="center" bgcolor="#f6f6f6">
                              文字说明：
                          </td>
                          <td align="left" bgcolor="#f6f6f6" height="25" style="width: 482px">
                              <asp:TextBox ID="TextBox17" runat="server" Width="301px"></asp:TextBox>
                          </td>
                          <td bgcolor="#f6f6f6">
                          </td>
                    </tr>
                      <tr>
                          <td align="center" bgcolor="#f6f6f6">
                              广告位置：</td>
                          <td align="left" bgcolor="#f6f6f6" height="25" style="width: 482px">
                              <asp:TextBox ID="TextBox18" runat="server" Width="301px"></asp:TextBox></td>
                          <td bgcolor="#f6f6f6">
                          </td>
                      </tr>
            <tr>
              <td align="center" bgcolor="#F6F6F6"></td>
              <td height="25" bgcolor="#F6F6F6" align="center" style="width: 482px">&nbsp;<asp:Button ID="Button6" runat="server" Text="添加"  OnClick="Button6_Click" onmousemove=showBtnOver(this) onmouseout=showBtnOut(this)  CssClass="submitMiniGreen" />
                 &nbsp;&nbsp; <input id="Button7"  type="button" onClick="history.back()" value="返回上一级" onmousemove=showBtnOver(this) onmouseout=showBtnOut(this)  Class="submitMiniGreen"/></td>
              <td bgcolor="#F6F6F6">&nbsp;</td>
            </tr>
               <tr>
                  <td align="center" colspan="3" style="color:#ffffff; font-size:14px">
                  调用方法：请在你要调用的地方插上如下代码<br>
                  &lt;script  src="Include/Ad/调用代码.JS" type="text/jscript"&gt;&lt;/script&gt
                 </td>
              </tr>
          </table>
        </asp:Panel> 
        
        
        
        
        <asp:Panel ID="Panel5" width="100%" runat="server" >
                  <table width="100%" border="0" align="center" cellpadding="1" cellspacing="1" id="TABLE4">
            <tr>
              <td width="18%"  class="B topbg">设置名称</td>
              <td height="25" class="B topbg" style="width: 482px">基本参数设置</td>
              <td width="21%"  class="B topbg">设置说明</td>
            </tr>
                      <tr>
                          <td align="center" bgcolor="#f6f6f6">
                              广告类型：</td>
                          <td align="left" bgcolor="#f6f6f6" height="25" style="width: 482px">
                              <asp:RadioButton ID="RadioButton16" runat="server"　GroupName="Ad" Text="幻灯片" /></td>
                          <td bgcolor="#f6f6f6">
                          </td>
                      </tr>
            <tr>
              <td align="center" bgcolor="#F6F6F6">调用代码：</td>
              <td height="25" align="left" bgcolor="#F6F6F6" style="width: 482px">
                  <asp:TextBox ID="TextBox19" runat="server" Width="237px"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox1"
                      Display="Dynamic" ErrorMessage="＊不能为空"></asp:RequiredFieldValidator></td>
              <td bgcolor="#F6F6F6">&nbsp;</td>
            </tr>
                      <tr>
                          <td align="center" bgcolor="#f6f6f6" style="height: 27px">
                              图 片：</td>
                          <td align="left" bgcolor="#f6f6f6" style="width: 482px; height: 27px;">
                              <asp:TextBox ID="imgUrlx2" runat="server" Width="423px" MaxLength="500"></asp:TextBox></td>
                          <td bgcolor="#f6f6f6" style="height: 27px">
                          </td>
                      </tr>
                      <tr>
                          <td align="center" bgcolor="#f6f6f6" style="height: 26px">
                          </td>
                          <td align="left" bgcolor="#f6f6f6" style="width: 482px; height: 26px">
                <iframe id="Iframe3" src="YX_UpFile4.aspx" scrolling="no" frameborder="0" width="300px" height="25" style="width: 353px; height: 42px"></iframe>
                          </td>
                          <td bgcolor="#f6f6f6" style="height: 26px">
                          </td>
                      </tr>
            <tr>
              <td align="center" bgcolor="#F6F6F6" style="height: 27px">
                  链接地址：</td>
              <td align="left" bgcolor="#F6F6F6" style="height: 27px; width: 482px;">
                 <asp:TextBox ID="TextBox20" runat="server" Width="296px"></asp:TextBox>
             </td>
            
              <td bgcolor="#F6F6F6" style="height: 27px">&nbsp;</td>
            </tr>
                      <tr>
                          <td align="center" bgcolor="#f6f6f6" style="width:240px; height: 25px;">
                              广告大小：</td>
                          <td align="left" bgcolor="#f6f6f6" style="height: 25px; width: 482px;">
                          <table style="width: 43%; height: 24px">
                          <tr>
                          <td style="width: 40px; height: 23px;" align="center">
                              宽：</td>
                            <td style="width: 48px; height: 23px;" align="left">
                                <asp:TextBox ID="TextBox21" runat="server" Width="51px"></asp:TextBox>px</td>
                            <td style="width: 21px; height: 23px;">
                                高：</td>
                            <td style="width: 40px; height: 23px;" align="left">
                                <asp:TextBox ID="TextBox22" runat="server" Width="52px"></asp:TextBox>px</td>
                          </tr>
                          </table>
                          
                        </td>
                          <td bgcolor="#f6f6f6" style="height: 25px">
                          </td>
                      </tr>
                 <tr>
                          <td align="center" bgcolor="#f6f6f6">
                              文字说明：
                          </td>
                          <td align="left" bgcolor="#f6f6f6" height="25" style="width: 482px">
                              <asp:TextBox ID="TextBox23" runat="server" Width="301px"></asp:TextBox>
                          </td>
                          <td bgcolor="#f6f6f6">
                          </td>
                    </tr>
                      <tr>
                          <td align="center" bgcolor="#f6f6f6">
                              备注说明：</td>
                          <td align="left" bgcolor="#f6f6f6" height="25" style="width: 482px">
                              <asp:TextBox ID="TextBox24" runat="server" Width="301px"></asp:TextBox></td>
                          <td bgcolor="#f6f6f6">
                          </td>
                      </tr>
            <tr>
              <td align="center" bgcolor="#F6F6F6"></td>
              <td height="25" bgcolor="#F6F6F6" align="center" style="width: 482px">&nbsp;<asp:Button ID="Button8" runat="server" Text="修　　改"  OnClick="Button8_Click"  onmousemove=showBtnOver(this) onmouseout=showBtnOut(this)  CssClass="submitMiniGreen"/>
                 &nbsp;&nbsp; <input id="Button9" style="width: 105px" type="button" onClick="history.back()" value="返回上一级" onmousemove=showBtnOver(this) onmouseout=showBtnOut(this)  Class="submitMiniGreen"/></td>
              <td bgcolor="#F6F6F6">&nbsp;</td>
            </tr>
               <tr>
                  <td align="center" colspan="3" style="color:#ffffff; font-size:14px">
                  调用方法：请在你要调用的地方插上如下代码<br>
                  &lt;script  src="Include/Ad/调用代码.JS" type="text/jscript"&gt;&lt;/script&gt
                 </td>
              </tr>
          </table>
        </asp:Panel>
<asp:Panel ID="Panel6" width="100%" runat="server" >
                  <table width="100%" border="0" align="center" cellpadding="1" cellspacing="1" id="TABLE5">
            <tr>
              <td width="18%"  class="B topbg">设置名称</td>
              <td height="25"  class="B topbg" style="width: 482px">基本参数设置</td>
              <td width="21%"  class="B topbg">设置说明</td>
            </tr>
                      <tr>
                          <td align="center" bgcolor="#f6f6f6">
                              广告类型：</td>
                          <td align="left" bgcolor="#f6f6f6" height="25" style="width: 482px">
                              <asp:RadioButton ID="RadioButton9" runat="server"　GroupName="Ad" Text="对联广告" /></td>
                          <td bgcolor="#f6f6f6">
                          </td>
                      </tr>
            <tr>
              <td align="center" bgcolor="#F6F6F6">调用代码：</td>
              <td height="25" align="left" bgcolor="#F6F6F6" style="width: 482px">
                  <asp:TextBox ID="TextBox25" runat="server" Width="237px"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox25"
                      Display="Dynamic" ErrorMessage="＊不能为空"></asp:RequiredFieldValidator></td>
              <td bgcolor="#F6F6F6">&nbsp;</td>
            </tr>
                      <tr>
                          <td align="center" bgcolor="#f6f6f6" style="height: 27px">
                              图 片：</td>
                          <td align="left" bgcolor="#f6f6f6" style="width: 482px; height: 27px;">
                              <asp:TextBox ID="TextBox26" name="TextBox26" runat="server" Width="423px" MaxLength="500"></asp:TextBox></td>
                          <td bgcolor="#f6f6f6" style="height: 27px">
                          </td>
                      </tr>
                      <tr>
                          <td align="center" bgcolor="#f6f6f6" style="height: 26px">
                          </td>
                          <td align="left" bgcolor="#f6f6f6" style="width: 482px; height: 26px">
                <iframe id="Iframe4" src="YX_UpFile5.aspx" scrolling="no" frameborder="0" width="300px" height="25" style="width: 353px; height: 42px"></iframe>
                          </td>
                          <td bgcolor="#f6f6f6" style="height: 26px">
                          </td>
                      </tr>
            <tr>
              <td align="center" bgcolor="#F6F6F6" style="height: 27px">
                  链接地址：</td>
              <td align="left" bgcolor="#F6F6F6" style="height: 27px; width: 482px;">
                 <asp:TextBox ID="TextBox27" runat="server" Width="340px"></asp:TextBox>
             </td>
            
              <td bgcolor="#F6F6F6" style="height: 27px">&nbsp;</td>
            </tr>
                      <tr>
                          <td align="center" bgcolor="#f6f6f6" style="width:240px; height: 25px;">
                              广告大小：</td>
                          <td align="left" bgcolor="#f6f6f6" style="height: 25px; width: 482px;">
                          <table style="width: 43%; height: 24px">
                          <tr>
                          <td style="width: 40px; height: 23px;" align="center">
                              宽：</td>
                            <td style="width: 48px; height: 23px;" align="left">
                                <asp:TextBox ID="TextBox28" runat="server" Width="51px"></asp:TextBox>px</td>
                            <td style="width: 21px; height: 23px;">
                                高：</td>
                            <td style="width: 40px; height: 23px;" align="left">
                                <asp:TextBox ID="TextBox29" runat="server" Width="52px"></asp:TextBox>px</td>
                          </tr>
                          </table>
                          
                        </td>
                          <td bgcolor="#f6f6f6" style="height: 25px">
                          </td>
                      </tr>
                 <tr>
                          <td align="center" bgcolor="#f6f6f6">
                              文字说明：
                          </td>
                          <td align="left" bgcolor="#f6f6f6" height="25" style="width: 482px">
                              <asp:TextBox ID="TextBox30" runat="server" Width="301px"></asp:TextBox>
                          </td>
                          <td bgcolor="#f6f6f6">
                          </td>
                    </tr>
                      <tr>
                          <td align="center" bgcolor="#f6f6f6">
                              备注说明：</td>
                          <td align="left" bgcolor="#f6f6f6" height="25" style="width: 482px">
                              <asp:TextBox ID="TextBox31" runat="server" Width="301px"></asp:TextBox></td>
                          <td bgcolor="#f6f6f6">
                          </td>
                      </tr>
            <tr>
              <td align="center" bgcolor="#F6F6F6"></td>
              <td height="25" bgcolor="#F6F6F6" align="center" style="width: 482px">&nbsp;<asp:Button ID="Button10" runat="server" Text="添　　加"  OnClick="Button10_Click"  onmousemove=showBtnOver(this) onmouseout=showBtnOut(this)  CssClass="submitMiniGreen"/>
                 &nbsp;&nbsp; <input id="Button11" style="width: 105px" type="button" onClick="history.back()" value="返回上一级" onmousemove=showBtnOver(this) onmouseout=showBtnOut(this) Class="submitMiniGreen"/></td>
              <td bgcolor="#F6F6F6">&nbsp;</td>
            </tr>
               <tr>
                  <td align="center" colspan="3" style="color:#ffffff; font-size:14px">
                  调用方法：请在你要调用的地方插上如下代码<br>
                  &lt;script  src="Include/Ad/调用代码.JS" type="text/jscript"&gt;&lt;/script&gt
                 </td>
              </tr>
          </table>
        </asp:Panel>
        <asp:Panel ID="Panel7" width="100%" runat="server" >
                  <table width="100%" border="0" align="center" cellpadding="1" cellspacing="1" id="TABLE6">
            <tr>
              <td width="18%"  class="B topbg">设置名称</td>
              <td height="25"  class="B topbg" style="width: 482px">基本参数设置</td>
              <td width="21%"  class="B topbg">设置说明</td>
            </tr>
                      <tr>
                          <td align="center" bgcolor="#f6f6f6">
                              广告类型：</td>
                          <td align="left" bgcolor="#f6f6f6" height="25" style="width: 482px">
                              <asp:RadioButton ID="RadioButton3" runat="server"　GroupName="Ad" Text="对联广告" /></td>
                          <td bgcolor="#f6f6f6">
                          </td>
                      </tr>
            <tr>
              <td align="center" bgcolor="#F6F6F6">调用代码：</td>
              <td height="25" align="left" bgcolor="#F6F6F6" style="width: 482px">
                  <asp:TextBox ID="TextBox32" runat="server" Width="237px"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox32"
                      Display="Dynamic" ErrorMessage="＊不能为空"></asp:RequiredFieldValidator></td>
              <td bgcolor="#F6F6F6">&nbsp;</td>
            </tr>
                      <tr>
                          <td align="center" bgcolor="#f6f6f6" style="height: 27px">
                              图 片：</td>
                          <td align="left" bgcolor="#f6f6f6" style="width: 482px; height: 27px;">
                              <asp:TextBox ID="TextBox33" name="TextBox26" runat="server" Width="423px" MaxLength="500"></asp:TextBox></td>
                          <td bgcolor="#f6f6f6" style="height: 27px">
                          </td>
                      </tr>
                      <tr>
                          <td align="center" bgcolor="#f6f6f6" style="height: 26px">
                          </td>
                          <td align="left" bgcolor="#f6f6f6" style="width: 482px; height: 26px">
                <iframe id="Iframe5" src="YX_UpFile6.aspx" scrolling="no" frameborder="0" width="300px" height="25" style="width: 353px; height: 42px"></iframe>
                          </td>
                          <td bgcolor="#f6f6f6" style="height: 26px">
                          </td>
                      </tr>
            <tr>
              <td align="center" bgcolor="#F6F6F6" style="height: 27px">
                  链接地址：</td>
              <td align="left" bgcolor="#F6F6F6" style="height: 27px; width: 482px;">
                 <asp:TextBox ID="TextBox34" runat="server" Width="340px"></asp:TextBox>
             </td>
            
              <td bgcolor="#F6F6F6" style="height: 27px">&nbsp;</td>
            </tr>
                      <tr>
                          <td align="center" bgcolor="#f6f6f6" style="width:240px; height: 25px;">
                              广告大小：</td>
                          <td align="left" bgcolor="#f6f6f6" style="height: 25px; width: 482px;">
                          <table style="width: 43%; height: 24px">
                          <tr>
                          <td style="width: 40px; height: 23px;" align="center">
                              宽：</td>
                            <td style="width: 48px; height: 23px;" align="left">
                                <asp:TextBox ID="TextBox35" runat="server" Width="51px"></asp:TextBox>px</td>
                            <td style="width: 21px; height: 23px;">
                                高：</td>
                            <td style="width: 40px; height: 23px;" align="left">
                                <asp:TextBox ID="TextBox36" runat="server" Width="52px"></asp:TextBox>px</td>
                          </tr>
                          </table>
                          
                        </td>
                          <td bgcolor="#f6f6f6" style="height: 25px">
                          </td>
                      </tr>
                 <tr>
                          <td align="center" bgcolor="#f6f6f6">
                              文字说明：
                          </td>
                          <td align="left" bgcolor="#f6f6f6" height="25" style="width: 482px">
                              <asp:TextBox ID="TextBox37" runat="server" Width="301px"></asp:TextBox>
                          </td>
                          <td bgcolor="#f6f6f6">
                          </td>
                    </tr>
                      <tr>
                          <td align="center" bgcolor="#f6f6f6">
                              备注说明：</td>
                          <td align="left" bgcolor="#f6f6f6" height="25" style="width: 482px">
                              <asp:TextBox ID="TextBox38" runat="server" Width="301px"></asp:TextBox></td>
                          <td bgcolor="#f6f6f6">
                          </td>
                      </tr>
            <tr>
              <td align="center" bgcolor="#F6F6F6"></td>
              <td height="25" bgcolor="#F6F6F6" align="center" style="width: 482px">&nbsp;<asp:Button ID="Button12" runat="server" Text="修　　改" OnClick="Button12_Click" onmousemove=showBtnOver(this) onmouseout=showBtnOut(this)  CssClass="submitMiniGreen" />
                 &nbsp;&nbsp; <input id="Button13"  type="button" onClick="history.back()" value="返回上一级" onmousemove=showBtnOver(this) onmouseout=showBtnOut(this) Class="submitMiniGreen"/></td>
              <td bgcolor="#F6F6F6">&nbsp;</td>
            </tr>
               <tr>
                  <td align="center" colspan="3" style="color:#ffffff; font-size:14px">
                  调用方法：请在你要调用的地方插上如下代码<br>
                  &lt;script  src="Include/Ad/调用代码.JS" type="text/jscript"&gt;&lt;/script&gt
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
<Chp:ChangHope_btm ID="chp1" runat="server" />
</body>
</html>
