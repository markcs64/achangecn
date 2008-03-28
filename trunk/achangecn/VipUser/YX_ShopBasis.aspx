<%@ page language="C#" autoeventwireup="true" inherits="VipUser_YX_ShopBasis, App_Web_xyjt5bop" %>

<%@ Register Assembly="Standny.WebControls" Namespace="Standny.WebControls" TagPrefix="Standny" %>
<%@ Register Src="Top_vip.ascx" TagName="Top_vip" TagPrefix="uc" %>
<%@ Register Src="Foot_vip.ascx" TagName="Foot_vip" TagPrefix="uc" %>
<%@ Register Src="Left_vip.ascx" TagName="Left_vip" TagPrefix="uc" %>
  
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >

<head id="Head1" runat="server">
<script type="text/javascript" src="Edit/editor.js" charset="gb2312"></script>

  <title>店铺管理-会员管理中心-<%=SetUrl() %></title>
    <style>
  #shopLink8 {
	background-color: #FEFAD8;
	color:#ffffff;
    }
    .s{
	background-color: #FEFAD8;
	color:#ffffff;
	}
    .tabmain {
	border-top-width: 1px;
	border-right-width: 1px;
	border-bottom-width: 1px;
	border-left-width: 1px;
	border-top-style: solid;
	border-right-style: none;
	border-bottom-style: solid;
	border-left-style: none;
	border-top-color: #DDDDDD;
	border-right-color: #DDDDDD;
	border-bottom-color: #DDDDDD;
	border-left-color: #DDDDDD;
}
.tabbot{
border-bottom-width: 1px;
	border-top-style: none;
	border-right-style: none;
	border-bottom-style: solid;
	border-left-style: none;
	border-bottom-color: #D1EBFC;
}
.tab2 {
	border-top-width: 1px;
	border-right-width: 1px;
	border-bottom-width: 1px;
	border-left-width: 1px;
	border-top-style: none;
	border-right-style: solid;
	border-bottom-style: solid;
	border-left-style: solid;
	border-top-color: #DDDDDD;
	border-right-color: #DDDDDD;
	border-bottom-color: #DDDDDD;
	border-left-color: #DDDDDD;
}
.tab3 {
	border-top-width: 1px;
	border-right-width: 1px;
	border-bottom-width: 1px;
	border-left-width: 1px;
	border-top-style: none;
	border-right-style: solid;
	border-bottom-style: solid;
	border-left-style: none;
	border-top-color: #F7F7F7;
	border-right-color: #F7F7F7;
	border-bottom-color: #F7F7F7;
	border-left-color: #F7F7F7;
}

    </style>
   
</head>

<body > <uc:Top_vip ID="top_vip1" runat=server />
    <form id="form1" runat="server"  >
   
     
<table class=user_table align=center>

    
  <tr>
    <td id=myLeft valign=top>
	<uc:Left_vip ID="left_vip2" runat=server />
	</td>
	 <TD style="width: 5px"></TD>
    <td valign=top align=left style="vertical-align:top">
   <asp:Panel ID="Panel1" runat="server"  Visible="false" valign="top">
    <table width="100%" border="0"  align="center" cellpadding="0" cellspacing="0">
  <tr>    
    <td valign="top">
	<div class="divMenu">
	<div class="DivMain">店铺管理-基本设置</div>
	<div class="divSide">
        &nbsp;</div>
	</div>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="tdMain tdSide">
  <tr>
      

    <td class="desc">店主您好！在这里您可以随时装修您的店铺。店标，介绍不要空哦，让买家感觉到你的用心，自然愿意多逛逛。</td>
    </tr>
</table>  	

<table width="100%" border="0" cellspacing="0" cellpadding="0" class="tdMain">
  <tr>
    <td width="100" class="tdLeft" style="height: 54px">店铺名称：</td>
    <td colspan="2" class="tdSide" style="height: 54px">
        <asp:TextBox ID="TextBox1" runat="server" Width="293px"></asp:TextBox><span style="color:red">*</span></td>
  </tr>
  <tr>
    <td class="tdLeft">店 标：</td>
    <td class="tdSide">
        <asp:FileUpload ID="file" runat="server" class="en9pt" onChange="document.getElementById('previewImage').innerHTML = '<img src=\''+this.value+'\' width=100 height=100>';" />
      <br />
      (图片大小不超过120K，100x100像素，仅支持gif和jpg格式)<br /></td>
    <td height="100" class="tdSide" style="width: 120px"><span id="previewImage"><asp:Image ImageUrl="Image/showimg.gif"  runat="server" id="img1" /></span></td>
  </tr>
  <tr>
    <td class="tdLeft">店铺类别：</td>
    <td colspan="2" class="tdSide">        
        <asp:DropDownList ID="DropDownList1" runat="server">
        </asp:DropDownList>       
    
    	</td>
  </tr>
    <tr>
    <td class="tdLeft">品牌：</td>
    <td colspan="2" class="tdSide">        
        <asp:DropDownList ID="DropDownList3" runat="server">
      
        </asp:DropDownList> (没有可以不填)      
    
    	</td>
  </tr>
  <tr>
    <td class="tdLeft">主营项目：</td>
    <td colspan="2" class="tdSide"> 
        <asp:TextBox ID="Xiangmu" runat="server" ></asp:TextBox>
                <font color="#ff0000">（最多60字符）</font> </td>
  </tr>
  <tr>
   <td valign="top" class="tdLeft">店铺介绍：</td>
  <td colspan="2">
  
  </td>
  </tr>
  <tr>
   
    <td colspan="3" class="tdSide">
 <textarea name="content" id="content" runat="server" style="width:99%;height:250px; display:none" ></textarea>
 <script type="text/javascript">
	var oEditor = new PPEditor('content') ;
	oEditor.Create() ;
function KindSubmit() {
var Tb=document.getElementById("TextBox1");
var Xiangmu=document.getElementById("Xiangmu");
var content=document.getElementById("Xiangmu");
if(Tb.value.replace(/\s/igm,'')==""){
alert("请填写商店名称");
Tb.focus();
return false;
}
if(Xiangmu.value.replace(/\s/igm,'')==""){
alert("请填写主营项目");
Xiangmu.focus();
return false;
}
if(content.value.replace(/\s/igm,'')==""){
alert("请填写主营项目");
content.focus();
return false;
}}
</script>

        在线编辑器仅支持IE5.5及以上版本</td>
  </tr>
</table>
<div class="divFoot"><asp:Button ID="Button1" Text="更新资料" runat="server" OnClick="Button1_Click"  /></div>

        
	</td>
  </tr>
</table></asp:Panel>
        <asp:Panel ID="Panel2" runat="server" Visible="false" >
    	<div class="divMenu">
	<div class="DivMain">店铺管理-公告设置</div>
	<div class="divSide">
        &nbsp;</div>
	</div>

<TABLE cellSpacing="0" cellPadding="0" width="100%" border="0"  class="tdMain tdSide">
  <TBODY>
    <TR>
      <TD align="middle" width="100"><IMG height="56" src="http://pics.paipai.com/my/head_note.gif" width="79" vspace="5"></TD>
      <TD>店主您好！在这里您可以随时修改您的店铺公告，不要空哦！让买家感觉到你的用心，自然愿意多逛逛。</TD>
    </TR>
  </TBODY>
</TABLE>

  <TABLE cellSpacing="0" cellPadding="0" width="100%" border="0"  class="tdMain tdSide">
    <TBODY>
      <TR>
        <TD colSpan="2"><strong>请填写您的店铺公告：</strong></TD>
      </TR>
      <tr>
   
    <td colspan="3" class="tdSide"><textarea name="content1" id="content1" runat="server" style="width:99%;height:250px; display:none" >    您好，欢迎您光临我的小店""！我的拍拍小店刚刚开张，还需要您和您的朋友多多惠顾哦。希望您能找到自己喜欢的商品，谢谢光临。
            </textarea>
            <script type="text/javascript">
	var oEditor = new PPEditor('content1') ;
	oEditor.Create() ;
</script>
  <DIV style="text-align:center">请您在保存前使用预览查看效果，以免由于您的代码错误导致店铺显示不正常。<BR>

    
    <asp:Button ID="Button7" runat="server"  value="预 览" Text=" 预 览 " OnClick="Button7_Click"/>
    
   <asp:Button ID="Button2" runat="server" Text="提交信息" OnClick="Button2_Click" />
  
        在线编辑器仅支持IE5.5及以上版本</DIV></td>
  </tr>
    
    </TBODY>
  </TABLE>

        </asp:Panel>
         <asp:Panel ID="Panel3" runat="server" Visible="false" >
      
<div class="DivMain">店铺管理-顶部广告设置</div>
  <TABLE cellSpacing="0" cellPadding="0" width="100%" border="0"  class="tdMain tdSide">
    <TBODY>
      <TR>
        <TD height='25px' style="background-color:#F7F7F7; " ><strong>是否显示店铺栏广告</strong></TD>
      </TR>
      <TR>
        <TD height="40">
          
            <INPUT type="radio" runat="server" value="1" id="bannerradio1" name="banner_display_radio" checked>
          是
          <INPUT type="radio" value="0" runat="server" id="bannerradio2" name="banner_display_radio" >
          否      &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;
            &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;
            &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;
            （如果选否，您的店铺通栏广告区域将不显示）</TD>
      </TR>
      <TR>
        <TD vAlign="top" height='25px' style="background-color:#F7F7F7; "><strong>店铺通栏广告代码</strong></TD>
      </TR>
      <TR>
        <TD vAlign="top"><DIV>(注意：店铺通栏广告内容的高度为120px，超出部分将被隐藏)<BR>
                <TABLE cellSpacing="0" cellPadding="0" width="100%" border="0">
                  <TBODY>
                    <TR>
                      <TD><TABLE cellSpacing="0" cellPadding="0" width="100%" border="0">
                          <TBODY>
                            <TR>
                            <td>&nbsp;&nbsp;&nbsp;</td>
                              <TD width="10%" align=left>
                              <input type="hidden" id="banermode" name="banermode" value="0" />
                                  <INPUT onclick="setBanner(1,2)" type="button" value="简单模式" id="BtnSimple">
                                 
                                  </TD>
                                   <td  align="left">  <INPUT type="button" onclick="setBanner(2,1)" value="高级模式" id="BtnNormal"></td>
                          
                            </TR>
                          </TBODY>
                      </TABLE></TD>
                    </TR>
                    <TR>
                      <TD id="td_2">
                    
                    </TD>
                    </TR>
                    <TR id="baner1" style="display:">
                      <TD id="td_1"><TABLE cellSpacing="0" cellPadding="0" width="100%" border="0">
                          <TBODY>
                            <TR>
                              <TD colSpan="2" height="25" align="center"><DIV>
                                 
                             <table width="97%" border="0" style="border: 1px solid #DDDDDD; " align="center">
                            
                                <tr>
                                <td>预览:(提示：请输入文字看看！)</td>
                              </tr>
                              <tr>
                                <td  style="background-image: url(image/BgBanners.jpg);" height="98px" valign="middle">
                           <table width="100%" border="0" height="95px">
                          <tr>
                            <td width="220px">&nbsp;</td><td ><div id="sname" style="font-size:14px; font-weight:bold">
                              </div></td>
                          </tr>
                           <tr>
                         <td valign="bottom"  colspan="2" style="padding-left:60px"><div id="xz"></div></td>
                          </tr>
                        </table>

                              </tr>
                            </table>
                              </DIV></TD>
                            </TR>
                           
                            <TR>
                              <TD width="16%" height="25">招牌文字：</TD>
                              <TD width="84%" height="25"><INPUT id="zpwz" onkeyup="document.getElementById('sname').innerText=this.value" maxlength="30"  size="60" name="zpwz" runat="server">
                               </TD>
                            </TR>
                             <script language="javascript">
                                document.getElementById("sname").innerText=document.getElementById("zpwz").value;
                            </script>
                            <TR>
                              <TD height="25">联系方式：</TD>
                              <TD height="25"><INPUT id="lxfs" onkeyup="document.getElementById('xz').innerText=this.value+document.getElementById('xcy').value" maxLength="60" size="60"  name="lxfs" runat="server">
                               </TD>
                            </TR>
                             
                            <TR>
                              <TD height="25">宣传语：</TD>
                              <TD height="25"><INPUT id="xcy" onkeyup="document.getElementById('xz').innerText=document.getElementById('lxfs').value+this.value" size="60" value="慢慢挑，慢慢选！" runat="server" name="xcy">
                              </TD>
                            </TR>
                             <script language="javascript">
                                document.getElementById("xz").innerText=document.getElementById("lxfs").value+" "+document.getElementById("xcy").value;
                            </script>
                          </TBODY>
                      </TABLE></TD>
                    </TR>
                    <tr id="baner2" style="display:none"><td>
                    <textarea name="content2" id="content2" runat="server" style="width:99%;height:250px; display:none" ></textarea>
                       <script language="javascript">
	        var oEditor = new PPEditor('content2') ;
	        oEditor.Create() ;
         function setBanner(n1,n2)
            {
             var b1=document.getElementById("baner"+n1);
             var b2=document.getElementById("baner"+n2);
             var b3=document.getElementById("banermode");
             b1.style.display="";
             b2.style.display="none";
             b3.value=(n1-1);
              }
         </script>
                    </td></tr>
                  </TBODY>
                </TABLE>
        </DIV>  <DIV style="text-align:center">请您在保存前使用预览查看效果，以免由于您的代码错误导致店铺显示不正常。<BR>
    应用简单模式将会覆盖高级模式的编辑成果，请知晓并做好备份。<BR>
    <BR>
    <INPUT type="hidden" value="0" name="previewType">
     <asp:Button ID="Button9" runat="server"  value="预 览" Text=" 预 览 " OnClick="Button7_Click"/>
    
      <asp:Button ID="Button3" runat="server" Text="更  新" OnClick="Button3_Click" />
  </DIV></TD>
      </TR>
    </TBODY>
  </TABLE>



        </asp:Panel>
         <asp:Panel ID="Panel4" runat="server"   Visible="false">
         <DIV>
 	<div class="DivMain">店铺管理-风格设置</div>
</DIV>
<TABLE cellSpacing="0" cellPadding="0" border="0" >
  <TBODY>
    <TR>
      <TD align="middle" width="100"><IMG height="56" src="http://pics.paipai.com/my/head_note.gif" width="79" vspace="5"></TD>
      <TD>店主您好！在这里您可以为您的店铺选择合适风格。</TD>
    </TR>
  </TBODY>
</TABLE>
<script language="javascript">
function choocimg(id)
{
var preview=document.getElementById("style_preview");
preview.innerHTML="<img src=../YX_Image/ShopTemplate/preview"+id+".gif >";

}
</script>
<%=fg()%>
  <TABLE cellSpacing="0" cellPadding="0" width="100%" border="0">
    <TBODY>
      <TR>
        <TD vAlign="top"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong> 选择店铺风格模板：</strong>
            <asp:DropDownList ID="DropDownList2" runat="server">
            </asp:DropDownList>&nbsp;<asp:Button ID="Button8" runat="server" Text="确  定" OnClick="Button8_Click" />
          <BR>  
          <BR>
          <DIV id="style_detail">青青世界：清纯而又有底蕴，一个未知、精彩的宽阔世界。适合书籍等商品类别。</DIV></TD>
        <TD align="middle" width="180"><strong>店铺风格预览</strong>
            <DIV id="style_preview"> <asp:Image ID="Image1" runat="server" /></DIV>
           </TD>
      </TR>
    </TBODY>
  </TABLE>


        </asp:Panel>
        <asp:Panel ID="Panel5" runat="server" Visible="false">
        

  <DIV style="background-image:url(Image/my_left_head.gif); height:24px; ">
    <DIV style="font-size:14px; color:#000000; font-weight:bold; padding-top:4px">店铺管理-友情链接</DIV>
  </DIV>
  <TABLE cellSpacing="0" cellPadding="0" width="100%" border="0"  class="tdMain tdSide">
    <TBODY>
      <TR>
        <TD align="middle" width="100"><IMG height="56" src="http://pics.paipai.com/my/head_note.gif" width="79" vspace="5"></TD>
        <TD>店主您好！在这里您可以添加30个友情链接！和其他店主交换友情链接，会让您的生意变得更好！</TD>
      </TR>
    </TBODY>
  </TABLE>
  <script language="javascript">
function checkusername()
{
var shopusername=document.getElementById("shopusername");
if(shopusername.value.replace(/^\s+|\s+$/igm,'')==""){
alert("该项不能为空");
return false;
shopusername.focus();
}
}
function CheckAll(form)  {
  for (var i=0;i<form.elements.length;i++)    {
    var e = form.elements[i];
    if (e.name != 'chkall')       e.checked = form.chkall.checked; 
   }
  }
 </script>
  <DIV  class="tdMain tdSide">对方帐号：
      <asp:TextBox ID="shopusername" runat="server"></asp:TextBox>
      <asp:Button ID="Button4"
          runat="server" Text="添  加" OnClick="Button4_Click" OnClientClick="return checkusername()" />
   
      <BR>
      <DIV>
          (输入对方帐号，即可直接添加店铺)</DIV>
  </DIV>
  <TABLE cellSpacing="0" cellPadding="0" width="100%" border="0"  class="tdMain tdSide">
    <TBODY>
      <TR>
        <TD style="background-color:#F7F7F7; height:25px; color:#FF4E00"  ><strong style="color:#000000">店铺名</strong>(注：您最多可以添加30个友情链接，当前添加了<asp:Label ID="Label1"
                runat="server" Text="Label"></asp:Label>个。)</TD>
      </TR>
    </TBODY>
  </TABLE>
            <asp:DataList ID="DataList2" Width='100%' runat="server" OnDeleteCommand="DataList2_DeleteCommand" DataKeyField="YX_ID">
             <HeaderTemplate>
  <TABLE cellSpacing="0" cellPadding="0" width="100%" border="0" class="tdMain tdSide" >
  <TBODY>
    <TR style="background-color:#F7F7F7; height:25px" >
    <Td>选择</TD>
      <TD align="middle">编号</TD>
      <TD>店铺名称</TD>
      <TD>会员帐号</TD>
      <TD>标志</TD>
      <TD> </TD>
      <TD> </TD>
    </TR>

  </HeaderTemplate>
  <ItemTemplate>
    <TR style="height:25px">
      <Td><input type=checkbox name="YX_CH"  value='<%#Eval("YX_Id")%>'/></TD>
      <TD align="middle" style="background-color:#F7F7F7" class="tab3"><%#Eval("YX_Id")%></TD>
      <TD class="tab3">
         <%#Eval("YX_Webname") %>
     </TD>
      <TD class="tab3"> <%#Eval("YX_SetUsername") %></TD>
      <TD class="tab3"><img src="../<%#Eval("YX_logo") %>" height=50px width=100px /></TD>
      <TD class="tab3">
  
     <IMG height="10" hspace="3" src="Image/qmanage_pic_delete.gif" width="9"><asp:LinkButton ID="LinkButton2" runat="server" Text="删除"  CommandName="Delete" OnClientClick="return confirm('您确定要删除吗？');" /> </A></TD>
      <TD class="tab3"> </TD>
    </TR>
    
</ItemTemplate>

<FooterTemplate>
</TBODY>
</table>
</FooterTemplate>
            </asp:DataList>
   <Standny:WebPager ID="WebPager2" runat="server" PageSize=10 OnPageChanged="WebPager2_PageChanged">
      </Standny:WebPager>
<DIV class="tab2">
  <INPUT onclick="CheckAll(this.form)" type="checkbox" value="0" name="chkall">
  全选　
    <asp:Button ID="Button6" runat="server" Text=" 删  除 " OnClick="Button6_Click" />
</DIV>
        </asp:Panel>
<asp:Panel ID="Panel6" runat="server" Visible="false">
<TABLE  cellSpacing="0" cellPadding="0" width="100%" border="0" id="menu">
  <TBODY>
    <TR>
     <td width="200" class=menuHere><a href="YX_ShopBasis.aspx?Action=6">自定义分类</a></TD>
      <TD width="3"></TD>
       <td width="200"class=menuWill ><a href="YX_ShopBasis.aspx?Action=7">商品归类</A></TD>
        <TD width="3"></TD>
       <td class=menuWill><a href="YX_ShopBasis.aspx?Action=8">查看未分类商品</A></TD>
    </TR>
  </TBODY>
</TABLE>
<TABLE cellSpacing="0" cellPadding="0" width="100%" border="0" class="tab2">
  <TBODY>
    <TR class=tabmain >
      <TD align="middle" width="100"><IMG height="56" src="Image/head_note.gif" width="79" vspace="5"></TD>
      <TD>店主您好！在这里您可以自定义分类，方便买家挑选商品。</TD>
    </TR>
    
  </TBODY>
</TABLE>

  <asp:DataList ID="DataList1" runat="server"  BorderStyle="None" Width="100%" OnEditCommand="DataList1_EditCommand" DataKeyField="YX_ShopClassId" OnDeleteCommand="DataList1_DeleteCommand">
  <HeaderTemplate>
  <TABLE cellSpacing="0" cellPadding="0" width='100%'  border="0" class="tdMain tdSide" >
  <TBODY>
    <TR style="background-color:#F7F7F7; height:25px" >
      <TD align="middle">编号</TD>
      <TD>分类名称</TD>
      <TD>分类顺序</TD>
      <TD>商品数量</TD>
      <TD> </TD>
      <TD> </TD>
    </TR>

  </HeaderTemplate>
<ItemTemplate>
    <TR style="height:25px">
      <TD align="middle" style="background-color:#F7F7F7" class="tab3"><%#Eval("YX_ShopClassId")%></TD>
      <TD class="tab3">
          <asp:TextBox ID="shopname" runat="server" Text='<%#Eval("YX_Shopname") %>'></asp:TextBox>
     </TD>
      <TD class="tab3"> <asp:TextBox ID="shoporder" Width="30px" runat="server" Text='<%#Eval("YX_Shoporder") %>'></asp:TextBox></TD>
      <TD class="tab3"><%#ChangeHope.ChangHope_Product.GetProductNum(Convert.ToInt32(Eval("YX_Shopclassid"))) %></TD>
      <TD class="tab3">
     <IMG height="10" hspace="3" src="Image/qmanage_pic_modify.gif" width="11"> <asp:LinkButton ID="LinkButton1" runat="server" Text="修改" CommandName="Edit" /> 
     <IMG height="10" hspace="3" src="Image/qmanage_pic_delete.gif" width="9"><asp:LinkButton ID="LinkButton2" runat="server" Text="删除"  CommandName="Delete" OnClientClick="return confirm('您确定要删除吗？');" /> </A></TD>
      <TD class="tab3"> </TD>
    </TR>
    
</ItemTemplate>

<FooterTemplate>
</TBODY>
</table>
</FooterTemplate>
      </asp:DataList>
<div class="tdMain tdSide" >
       <Standny:WebPager ID="WebPager1" runat="server" PageSize="10" OnPageChanged="WebPager1_PageChanged">
      </Standny:WebPager>
    分类名称：<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
    分类序号：<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
    <asp:Button ID="Button5" runat="server" Text="提交" OnClick="Button5_Click" />
    </div>
    </asp:Panel>
    <asp:Panel ID="Panel7" runat="server" Height="50px" Width="100%" Visible="false">    
<TABLE  cellSpacing="0" cellPadding="0" width="100%" border="0" id="menu">
  <TBODY>
    <TR>
     <td width="200"   class=menuWill><a href="YX_ShopBasis.aspx?Action=6">自定义分类</a></TD>
      <TD width="3"></TD>
       <td width="200" class=menuHere><a href="YX_ShopBasis.aspx?Action=7">商品归类</A></TD>
        <TD width="3"></TD>
       <td class=menuWill><a href="YX_ShopBasis.aspx?Action=8">查看未分类商品</A></TD>
    </TR>
  </TBODY>
</TABLE>
<TABLE cellSpacing="0" cellPadding="0" width="100%" border="0" class="tdMain tdSide" >
  <TBODY>
    <TR class=tabmain >
      <TD align="middle" width="100"><IMG height="56" src="Image/head_note.gif" width="79" vspace="5"></TD>
      <TD>店主您好！在这里您可以自定义分类，方便买家挑选商品。</TD>
    </TR>
    
  </TBODY>
</TABLE>

  <asp:DataList ID="DataList3" runat="server" Width="100%" OnEditCommand="DataList3_EditCommand" OnItemDataBound="DataList3_ItemDataBound" DataKeyField="YX_Id" OnDeleteCommand="DataList3_DeleteCommand">
  <HeaderTemplate>
  <TABLE cellSpacing="0" cellPadding="0" width="100%" border="0" class="tdMain tdSide"  >
  <TBODY>
    <TR style="background-color:#F7F7F7; height:25px" >
      <TD align="middle">编号</TD>
       <TD>商品名称</TD>
      <TD>商品类型</TD>
      <TD>价格</TD>
      <TD>所属分类</TD>
      <TD>操作</TD>
      <TD> </TD>
    </TR>

  </HeaderTemplate>
<ItemTemplate>
    <TR style="height:25px">
      <TD align="middle" style="background-color:#F7F7F7" class="tab3"><%#Eval("YX_ID") %></TD>
      <TD class="tab3">
         <%#Eval("YX_ProductName") %>
     </TD>
      <TD class="tab3"><%#productstat(Convert.ToInt32(Eval("YX_zt")))%></TD>
       
      <TD class="tab3"> <%#Eval("YX_ProPrice","{0:C2}")%></TD>
        <TD class="tab3"> <asp:DropDownList ID="DropDownList4" runat="server">
      
        </asp:DropDownList> </TD>
      <TD class="tab3">
     <IMG height="10" hspace="3" src="Image/qmanage_pic_modify.gif" width="11"> <asp:LinkButton ID="LinkButton1" runat="server" Text="修改分类" CommandName="Edit" /> 
     <IMG height="10" hspace="3" src="Image/qmanage_pic_modify.gif" width="9"><a href=yx_editsell_type.aspx?YX_id=<%#Eval("YX_ID") %>>修改商品 </A></TD>
      <TD class="tab3"> </TD>
    </TR>
    
</ItemTemplate>

<FooterTemplate>
</TBODY>
</table>
</FooterTemplate>
      </asp:DataList>
      <div class="tdMain tdSide" >
       <Standny:WebPager ID="WebPager3" runat="server" Width="50%" InputHeight="12"  InfoText="false" JumpButton="false"  PageSize="10" OnPageChanged="WebPager1_PageChanged">
      </Standny:WebPager>
</div>
    
    </asp:Panel>
    <asp:Panel ID="Panel8" runat="server" Height="50px" Width="100%" Visible="false">    
<TABLE  cellSpacing="0" cellPadding="0" width="100%" border="0" id="menu">
  <TBODY>
    <TR>
     <td width="200"   class=menuWill><a href="YX_ShopBasis.aspx?Action=6">自定义分类</a></TD>
      <TD width="3"></TD>
       <td width="200" class=menuWill><a href="YX_ShopBasis.aspx?Action=7">商品归类</A></TD>
        <TD width="3"></TD>
       <td class=menuHere><a href="YX_ShopBasis.aspx?Action=8">查看未分类商品</A></TD>
    </TR>
  </TBODY>
</TABLE>
<TABLE cellSpacing="0" cellPadding="0" width="100%" border="0" class="tdMain tdSide" >
  <TBODY>
    <TR class=tabmain >
      <TD align="middle" width="100"><IMG height="56" src="Image/head_note.gif" width="79" vspace="5"></TD>
      <TD>店主您好！在这里您可以自定义分类，方便买家挑选商品。</TD>
    </TR>
    
  </TBODY>
</TABLE>

  <asp:DataList ID="DataList4" runat="server" Width="100%" OnEditCommand="DataList3_EditCommand" OnItemDataBound="DataList3_ItemDataBound" DataKeyField="YX_Id" OnDeleteCommand="DataList3_DeleteCommand">
  <HeaderTemplate>
  <TABLE cellSpacing="0" cellPadding="0" width="100%" border="0" class="tdMain tdSide"  >
  <TBODY>
    <TR style="background-color:#F7F7F7; height:25px" >
      <TD align="middle">编号</TD>
       <TD>商品名称</TD>
      <TD>商品类型</TD>
      <TD>价格</TD>
      <TD>所属分类</TD>
      <TD>操作</TD>
      <TD> </TD>
    </TR>

  </HeaderTemplate>
<ItemTemplate>
    <TR style="height:25px">
      <TD align="middle" style="background-color:#F7F7F7" class="tab3"><%#Eval("YX_ID") %></TD>
      <TD class="tab3">
         <%#Eval("YX_ProductName") %>
     </TD>
      <TD class="tab3"><%#productstat(Convert.ToInt32(Eval("YX_zt")))%></TD>
       
      <TD class="tab3"> <%#Eval("YX_ProPrice","{0:C2}")%></TD>
        <TD class="tab3"> <asp:DropDownList ID="DropDownList4" runat="server">
      
        </asp:DropDownList> </TD>
      <TD class="tab3">
     <IMG height="10" hspace="3" src="Image/qmanage_pic_modify.gif" width="11"> <asp:LinkButton ID="LinkButton1" runat="server" Text="修改分类" CommandName="Edit" /> 
     <IMG height="10" hspace="3" src="Image/qmanage_pic_modify.gif" width="9"><a href=yx_editsell_type.aspx?YX_id=<%#Eval("YX_ID") %>>修改商品 </A></TD>
      <TD class="tab3"> </TD>
    </TR>
    
</ItemTemplate>

<FooterTemplate>
</TBODY>
</table>
</FooterTemplate>
      </asp:DataList>
      <div class="tdMain tdSide" >
       <Standny:WebPager ID="WebPager4" runat="server" Width="50%" InputHeight="12"  InfoText="false" JumpButton="false"  PageSize="10" OnPageChanged="WebPager1_PageChanged">
      </Standny:WebPager>
</div>
    
    </asp:Panel>
    </td>
  </tr>
</table>


 
<% skin(); %>
     <script language="javascript">document.getElementById('manageShopItem').style.display="";</script> 
    </form>

    <uc:Foot_vip ID="foot_vip3" runat=server />
</body>
</html>