<%@ page language="C#" inherits="Admin_YX_Product_AddProduct, App_Web_6gj4jtg5" enableeventvalidation="false" %> 
<%@ Register  Src="../Admin_Btm.ascx" TagName="ChangHope_btm" TagPrefix="Chp" %>
<%@ Register TagPrefix="ChangHope" TagName="ProClass" Src="~/Admin/Class_list.ascx" %>
<%@ Register TagPrefix="ChangeHope" TagName="Chklogin" Src="~/Admin/YX_CheckLogin.ascx" %>

  <ChangeHope:Chklogin _Column="2" ID="chk1" runat="server" />
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>无标题页</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" href="../style/style.css" type="text/css" />
 <script language="javascript" type="text/javascript" src="../style/JScript.js"></script>


<script language="javascript" type="text/javascript">
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
function selectPro(){
var cla=document.getElementById("classroot");
var keyword=<%=HttpUtility.UrlEncode("document.getElementById('keyword').value") %>;
//var gstate=document.getElementById('gstate').value;
var searchtype=document.getElementById('searchtype').value;
document.getElementById("form1").action="?YX_FS=Admin&classroot="+cla.value+"&keyword="+keyword+"&searchtype="+searchtype;
document.form1.submit();
}
function selectPinPai(){
var cla=document.getElementById("pinpai");
document.getElementById("form1").action="?YX_FS=Admin&PinPai="+cla.value;
document.form1.submit();
}
function load(state){ 
var drp2 = document.getElementById("DropDownList2"); 
var ilength = drp2.options.length
for(var i = 0; i < ilength; i++){
    drp2.remove(0);
} 

var oHttpReq = new ActiveXObject("MSXML2.XMLHTTP"); 
var oDoc = new ActiveXObject("MSXML2.DOMDocument"); 
oHttpReq.open("POST", "RetPinpai.aspx?state="+state, false); 
oHttpReq.send(""); 
result = oHttpReq.responseText; 
//document.write(result);
oDoc.loadXML(result); 
item1=oDoc.selectNodes("//PinPai/Table/YX_ID")
items = oDoc.selectNodes("//PinPai/Table/YX_PinPaiName"); 
var itemsLength=items.length; 
if(itemsLength<1){

var newOption1 = document.createElement("OPTION"); 
　　newOption1.text="无品牌"; 
　　newOption1.value="0"; 
　　drp2.options.add(newOption1); 
    }
    else{
　　  
    //将小类的类名和编号赋予DropDownList2  
    var newOption1 = document.createElement("OPTION"); 
　　newOption1.text="无品牌"; 
　　newOption1.value="0"; 
　　drp2.options.add(newOption1); 
     for(i=0;i<itemsLength;i++) 
　　        { 
　　        var newOption = document.createElement("OPTION"); 
　　        newOption.text=items[i].text; 
　　        newOption.value=item1[i].text; 
　　        drp2.options.add(newOption); 
　　        } 
　　}
}
</script>
<script language="javascript" type="text/javascript" src="../../include/JScript.js"></script>
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
      
   <table  align="center" cellpadding="4" cellspacing="1" border="0" width=100%  class="toptable grid">
         <tr>
          <td height="25" class="category t2" width=100>物品分类管理</td>
         <td class="category">
             <asp:HyperLink ID="HyperLink1" NavigateUrl="AddProduct.aspx?YX_FS=Admin" runat="server">[已审物品管理]</asp:HyperLink>
             <asp:HyperLink ID="HyperLink2" NavigateUrl="AddProduct.aspx?YX_FS=Admin&YX_fla=1" runat="server">[未审物品管理]</asp:HyperLink>
                        
           </td>
        </tr>
 </table>
       <asp:Panel ID="Panel1" runat="server" width="100%">
   
		  <table width="100%" height="25" border="0" cellpadding="0" cellspacing="0">
            <tr>
              <td align="center" background="../images/YX_Bg.jpg" class="style3" style="width: 100%">物品添加</td>
            </tr>
          </table>
		  <table width="100%" height="5" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td bgcolor="#FFFFFF" width="100px">选择物品类型页：</td><td bgcolor="#FFFFFF" align="left"><%=Bindzd()%></td>
  </tr>
</table>

		  <table width="100%" height="446" border="0" align="center" cellpadding="1" cellspacing="1" id="TABLE1" >
            <tr>
              <td align="center" bgcolor="#3270C5" class="F" style="width: 132px">设置名称</td>
              <td height="25" align="center" bgcolor="#3270C5" class="F" style="width: 189px">基本参数设置</td>
              <td width="21%" align="center" bgcolor="#3270C5" class="F">设置说明</td>
            </tr>
            <tr>
              <td align="right" bgcolor="#F6F6F6" style="width: 132px">所属分类：</td>
              <td height="25" align="left" bgcolor="#F6F6F6" style="width: 189px"><%=ss() %></td>
              <td bgcolor="#F6F6F6">&nbsp;</td>
            </tr>
             <tr>
                  <td align="right" bgcolor="#f6f6f6" style="width: 132px">
                      物品品牌：</td>
                  <td align="left" bgcolor="#f6f6f6" height="25">
                      <asp:DropDownList ID="DropDownList2" runat="server" Width="99px"  >
                      <asp:ListItem Selected="true" Text="无分类" Value="0"></asp:ListItem>
                      </asp:DropDownList>
                     </td>
                  <td bgcolor="#f6f6f6">
                  </td>
              </tr>
            <tr>
              <td align="right" bgcolor="#F6F6F6" style="width: 132px; height: 26px;">物品编码：</td>
              <td align="left" bgcolor="#F6F6F6" style="width: 189px; height: 26px">
                <asp:TextBox ID="CH1" runat="server" Width="208px"></asp:TextBox>
              </td>
              <td bgcolor="#F6F6F6" style="height: 26px">&nbsp;</td>
            </tr>
            <tr>
              <td align="right" bgcolor="#F6F6F6" style="width: 132px; height: 25px;">物品名称：</td>
              <td align="left" bgcolor="#F6F6F6" style="height: 25px">
              <asp:TextBox ID="CH2" runat="server" Width="209px"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="CH2"
                      ErrorMessage="该项必须填写"></asp:RequiredFieldValidator></td>
              <td bgcolor="#F6F6F6" style="height: 25px">&nbsp;</td>
            </tr>
            <tr>
              <td align="right" bgcolor="#F6F6F6" style="width: 132px; height: 25px;">关键字：</td>
              <td align="left" bgcolor="#F6F6F6" style="width: 189px; height: 34px"><asp:TextBox ID="CH3" runat="server" Width="240px"></asp:TextBox></td>
              <td bgcolor="#F6F6F6" style="height: 25px">&nbsp;以便显示相关物品</td>
            </tr>
         
            <tr>
              <td align="right" bgcolor="#F6F6F6" style="width: 132px">
                  标 识：</td>
              <td height="25" align="left" bgcolor="#F6F6F6" >
                 
                  <input id="CH14" type="checkbox" runat="server" style="border:0" name="CH5 "/>热卖物品
                  <input id="CH16" type="checkbox" runat="server" style="border:0" name="CH5" />特价物品
                  <input id="CH15" type="checkbox" runat="server" style="border:0" name="CH5" />推荐物品<input id="CH17" type="checkbox" runat="server" style="border:0" name="CH5" />首页推荐</td>
              <td bgcolor="#F6F6F6">&nbsp;
            </td>
            </tr> <tr>
              <td align="right" bgcolor="#F6F6F6" style="width: 132px">物品赠送积分：</td>
              <td height="25" align="left" bgcolor="#F6F6F6" >
                 <asp:TextBox ID="JF" runat="server" Width="80px"></asp:TextBox>
                  分 <asp:RegularExpressionValidator ID="RegularExpressionValidator_jf" runat="server" ControlToValidate="JF"
                        ErrorMessage="该项必须是数字" ValidationExpression="[-]?\d+[.]?\d*$"></asp:RegularExpressionValidator></td>
              <td bgcolor="#F6F6F6">&nbsp;
            </td>
            </tr>
            <tr>
              <td align="right" bgcolor="#F6F6F6" style="width: 132px">缩微图地址：</td>
              <td height="25" align="left" valign="middle" bgcolor="#F6F6F6" style="width: 189px">
                <table>
                <tr>
                <td>
                <input name="imgUrl" type="text" id="imgUrl" style="width: 163px" />
          
                </td>
                <td>
                <iframe id="upfile" src="YX_UpFile.aspx" scrolling="no" frameborder="0" width="300px" height="25"></iframe>
                </td>
                </tr>
                </table></td>
              <td bgcolor="#F6F6F6">&nbsp;</td>
            </tr>
            <tr>
              <td align="right" bgcolor="#F6F6F6" style="width: 132px">详细图地址：</td>
              <td height="25" align="left" bgcolor="#F6F6F6" style="width: 189px"> <table>
                <tr>
                <td>
                <input name="imgUrl2" type="text" id="Text1" style="width: 163px" />
          
                </td>
                <td>
                <iframe id="Iframe1" src="YX_UpFile2.aspx" scrolling="no" frameborder="0" width="300px" height="25"></iframe>
                </td>
                </tr>
                </table></td>
              <td bgcolor="#F6F6F6">&nbsp;</td>
            </tr>
           
            <tr>
              <td align="right" bgcolor="#F6F6F6" style="height: 113px; width: 132px;">物品简介：</td>
              <td align="left" bgcolor="#F6F6F6" style="height: 113px; width: 189px;"><asp:TextBox ID="CH6" runat="server" Height="105px" TextMode="MultiLine"
                      Width="272px"></asp:TextBox></td>
              <td bgcolor="#F6F6F6" style="height: 113px">&nbsp;</td>
            </tr>
            <tr>
              <td align="right" bgcolor="#F6F6F6" style="height: 300px; width: 132px;">详细说明：</td>
              <td bgcolor="#F6F6F6" style="height: 264px; width: 189px;">
          
                       </td>
              <td bgcolor="#F6F6F6" style="height: 264px">&nbsp;</td>
            </tr>
              
            <tr>
              <td align="right" bgcolor="#F6F6F6" style="width: 132px">物品重量：</td>
              <td height="25" align="left" bgcolor="#F6F6F6" style="width: 189px"><asp:TextBox ID="CH8" Text=0 runat="server" Width="45px"></asp:TextBox>Kg</td>
              <td bgcolor="#F6F6F6"><asp:RegularExpressionValidator ID="RegularExpressionValidator8" runat="server" ControlToValidate="CH8"
                        ErrorMessage="该项必须是数字" ValidationExpression="[-]?\d+[.]?\d*$"></asp:RegularExpressionValidator>&nbsp;</td>
            </tr>
              <tr>
                  <td align="right" bgcolor="#f6f6f6" style="height: 27px; width: 132px;">计量单位：</td>
                <td align="left" bgcolor="#f6f6f6" style="height: 27px; width: 189px;"><asp:TextBox ID="CH9" runat="server" Width="45px"></asp:TextBox></td>
                  <td bgcolor="#f6f6f6" style="height: 27px">                  </td>
              </tr>
              <tr>
                <td align="right" bgcolor="#f6f6f6" style="width: 132px">使用虚拟币：</td>
                <td height="25" align="left" bgcolor="#f6f6f6" style="width: 189px"><input type="radio" id="Tr" name="Tr" runat="server" value="1" style="border:0px"　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　 />是
                    <input type="radio" id="Fr" name="Tr" runat="server" value="0" style="border:0px" checked />否（此功能暂时没有开通）</td>
                <td bgcolor="#f6f6f6"></td>
              </tr>
              <tr>
                <td align="right" bgcolor="#f6f6f6" style="width: 132px; height: 27px;">虚拟币的数量：</td>
                <td align="left" bgcolor="#f6f6f6" style="width: 189px; height: 27px;"><asp:TextBox ID="CH10" Text=0 runat="server" Width="51px"></asp:TextBox>（此功能暂时没有开通）</td>
                <td bgcolor="#f6f6f6" style="height: 27px"><asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="CH10"
                        ErrorMessage="该项必须是数字" ValidationExpression="[-]?\d+[.]?\d*$"></asp:RegularExpressionValidator></td>
              </tr>
              <tr>
                <td align="right" bgcolor="#f6f6f6" style="height: 27px; width: 132px;">物品星级：</td>
                <td align="left" bgcolor="#f6f6f6" style="height: 27px; width: 189px;"><select id="CH11" name="CH11" runat="server"> 
                <option value="5" >
                         ★ ★ ★ ★ ★
                        </option>
                         <option  value="4" selected="selected">
                       ★ ★ ★ ★
                       </option> 
                      <option  value="3">
                       ★ ★ ★
                      </option> 
                     <option value="2">
                     ★ ★
                     </option>
                    <option  value="1">
                    ★
                    </option>                     
                    </select></td>
                <td bgcolor="#f6f6f6" style="height: 27px"></td>
              </tr>
              <tr>
                <td align="right" bgcolor="#f6f6f6" style="width: 132px">库存数量：</td>
                <td height="25" align="left" bgcolor="#f6f6f6" style="width: 189px"><asp:TextBox ID="CH12" Text="0" runat="server" Width="78px"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="CH12"
                        ErrorMessage="该项必须是数字" ValidationExpression="[-]?\d+[.]?\d*$"></asp:RegularExpressionValidator></td>
                <td bgcolor="#f6f6f6"></td>
              </tr>   
              <tr>
                <td align="right" bgcolor="#f6f6f6" style="width: 189px; height: 24px;">
                    本商城价格：</td>
                <td align="left" bgcolor="#f6f6f6" style="width: 189px; height: 24px;"><asp:TextBox ID="CH13" runat="server" Width="105px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="CH13"
                        ErrorMessage="该项不能为空" Display="Dynamic"></asp:RequiredFieldValidator>  <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="CH13"
                        ErrorMessage="该项必须是数字" ValidationExpression="[-]?\d+[.]?\d*$" Display="Dynamic"></asp:RegularExpressionValidator></td>
                <td bgcolor="#f6f6f6" style="height: 24px">
                    <span style="color: #ff0033">必须为数字（也可以是团购价，以此价进行运算）</span></td>
              </tr>
              <tr>
                <td align="right" bgcolor="#f6f6f6" style="width: 132px">等级折扣：</td>
                <td height="25" align="left" bgcolor="#f6f6f6" >
                 <asp:Panel ID="Panel3" runat="server" Width="100%">
                  </asp:Panel>
                </td>               
                <td bgcolor="#f6f6f6">
                    为10时不打折，必须填写数字,
                 
                    </td>
              </tr>
              <tr>
                <td align="left" bgcolor="#f6f6f6" style="width: 400px; background-color: #ffffff;" colspan="3">
                    扩展物品属性：（请在左边填写要显示的字段名称，右边显示字段的值）</td>
               <td height="25" align="left" bgcolor="#f6f6f6" colspan="3" > 
                     </td>
                <td bgcolor="#f6f6f6" colspan="1"></td>
              </tr>
              <tr>
                  <td align="right" bgcolor="#f6f6f6" colspan="1" style="width: 151px; background-color: #ffffff; height: 27px;">
                      <asp:TextBox ID="zdname1" runat="server" Width="95px"></asp:TextBox></td>
                  <td align="left" bgcolor="#f6f6f6" colspan="1" style="height: 27px">
                      <asp:TextBox ID="zdvalue1" runat="server" Width="500px"></asp:TextBox></td>
                  <td bgcolor="#f6f6f6" colspan="1" style="height: 27px">
                      扩展属性1</td>
              </tr>
               <tr>
                  <td align="right" bgcolor="#f6f6f6" colspan="1" style="width: 151px; background-color: #ffffff">
                      <asp:TextBox ID="zdname2" runat="server" Width="95px"></asp:TextBox></td>
                  <td align="left" bgcolor="#f6f6f6" colspan="1" height="25">
                      <asp:TextBox ID="zdvalue2" runat="server" Width="500px"></asp:TextBox></td>
                  <td bgcolor="#f6f6f6" colspan="1">
                      扩展属性2</td>
              </tr>
               <tr>
                  <td align="right" bgcolor="#f6f6f6" colspan="1" style="width: 151px; background-color: #ffffff">
                      <asp:TextBox ID="zdname3" runat="server" Width="95px"></asp:TextBox></td>
                  <td align="left" bgcolor="#f6f6f6" colspan="1" height="25">
                      <asp:TextBox ID="zdvalue3" runat="server" Width="500px"></asp:TextBox></td>
                  <td bgcolor="#f6f6f6" colspan="1">
                      扩展属性3</td>
              </tr>
               <tr>
                  <td align="right" bgcolor="#f6f6f6" colspan="1" style="width: 151px; background-color: #ffffff">
                      <asp:TextBox ID="zdname4" runat="server" Width="95px"></asp:TextBox></td>
                  <td align="left" bgcolor="#f6f6f6" colspan="1" height="25">
                      <asp:TextBox ID="zdvalue4" runat="server" Width="500px"></asp:TextBox></td>
                  <td bgcolor="#f6f6f6" colspan="1">
                      扩展属性4</td>
              </tr>
               <tr>
                  <td align="right" bgcolor="#f6f6f6" colspan="1" style="width: 151px; background-color: #ffffff">
                      <asp:TextBox ID="zdname5" runat="server" Width="94px"></asp:TextBox></td>
                  <td align="left" bgcolor="#f6f6f6" colspan="1" height="25">
                      <asp:TextBox ID="zdvalue5" runat="server" Width="500px"></asp:TextBox></td>
                  <td bgcolor="#f6f6f6" colspan="1">
                      扩展属性5</td>
              </tr>
               <tr>
                  <td align="right" bgcolor="#f6f6f6" colspan="1" style="width: 151px; background-color: #ffffff">
                      <asp:TextBox ID="zdname6" runat="server" Width="95px"></asp:TextBox></td>
                  <td align="left" bgcolor="#f6f6f6" colspan="1" height="25">
                      <asp:TextBox ID="zdvalue6" runat="server" Width="500px"></asp:TextBox></td>
                  <td bgcolor="#f6f6f6" colspan="1">
                      扩展属性6</td>
              </tr>
               <tr>
                  <td align="right" bgcolor="#f6f6f6" colspan="1" style="width: 151px; background-color: #ffffff">
                      <asp:TextBox ID="zdname7" runat="server" Width="95px"></asp:TextBox></td>
                  <td align="left" bgcolor="#f6f6f6" colspan="1" height="25">
                      <asp:TextBox ID="zdvalue7" runat="server" Width="499px"></asp:TextBox></td>
                  <td bgcolor="#f6f6f6" colspan="1">
                      扩展属性7</td>
              </tr>
               <tr>
                  <td align="right" bgcolor="#f6f6f6" colspan="1" style="width: 151px; background-color: #ffffff; height: 28px;">
                      <asp:TextBox ID="zdname8" runat="server" Width="95px"></asp:TextBox></td>
                  <td align="left" bgcolor="#f6f6f6" colspan="1" style="height: 28px">
                      <asp:TextBox ID="zdvalue8" runat="server" TextMode="MultiLine" Width="499px"></asp:TextBox></td>
                  <td bgcolor="#f6f6f6" colspan="1" style="height: 28px">
                      扩展属性8</td>
              </tr>
               <tr>
                  <td align="right" bgcolor="#f6f6f6" colspan="1" style="width: 151px; background-color: #ffffff">
                      <asp:TextBox ID="zdname9" runat="server" Width="94px"></asp:TextBox></td>
                  <td align="left" bgcolor="#f6f6f6" colspan="1" height="25">
                      <asp:TextBox ID="zdvalue9" runat="server" TextMode="MultiLine" Width="500px"></asp:TextBox></td>
                  <td bgcolor="#f6f6f6" colspan="1">
                      扩展属性9</td>
              </tr>
              <tr>
                  <td align="right" bgcolor="#f6f6f6" colspan="1" style="width: 151px; background-color: #ffffff">
                      <asp:TextBox ID="zdname10" runat="server" Width="95px"></asp:TextBox></td>
                  <td align="left" bgcolor="#f6f6f6" colspan="1" height="25">
                      <asp:TextBox ID="zdvalue10" runat="server" TextMode="MultiLine" Width="500px"></asp:TextBox></td>
                  <td bgcolor="#f6f6f6" colspan="1">
                      扩展属性10</td>
              </tr>
            <tr>
              <td align="right" bgcolor="#F6F6F6" style="width: 132px"></td>
              <td height="25" bgcolor="#F6F6F6" align="center" >&nbsp;<asp:Button ID="Button1" runat="server" Text="添   加" Width="104px" OnClick="Button1_Click" />
                  <input type="button" Width="104px" value="返回上一级" onClick="history.back()" /></td>
              <td bgcolor="#F6F6F6">&nbsp;</td>
            </tr>
              <tr>
                  <td align="center" colspan="3">
                    <Chp:ChangHope_btm ID="chp" runat="server" />                  </td>
              </tr>
          </table> 
		</asp:Panel>
		
        <asp:Panel ID="Panel2" runat="server" width="100%">
<table width="100%" height="25" border="0" cellpadding="2" cellspacing="2">
            <tr>
              <td align="left"class="style3" > 
                 <%=ss2() %>
               <input type=button value=品牌查询 onclick='selectPinPai()' onmousemove=showBtnOver(this) onmouseout=showBtnOut(this) Class="submitMiniGreen">
                关键字:<input type=text name=keyword id=keyword/>
                查询类别：<select name=searchtype><option value=1 selected>全部</option><option value=2>ID号</option><option value=3>物品名称</option><option value=4>用户帐号</option><option value=5>已审物品</option><option value=6>未审物品</option><option value=7>热卖</option><option value=8>推荐</option><option value=9>特价</option><option value=10>首显</option></select>
                <%=ss1() %>
                <input type=button value=查询 onclick='selectPro()' onmousemove=showBtnOver(this) onmouseout=showBtnOut(this) Class="submitMiniGreen" >               </td>  
            </tr>
          </table>
		
<table width="100%" border="0" cellspacing="0" cellpadding="0" align="center">
  <tr>
    <td width="100%">
	<asp:DataGrid ID="dg1" AutoGenerateColumns="False" PageSize="20"  runat="server" CellPadding="0" CellSpacing="0"  Width="100%" AllowPaging="True" OnItemDataBound="dg1_ItemDataBound" >
                   <HeaderStyle Height="25px"  CssClass="topbg"  HorizontalAlign="Center" />
                  
                 <ItemStyle BackColor="#F6F6F6" Height="25px" HorizontalAlign="Center" />
                   <Columns>
               <asp:TemplateColumn HeaderText="选   择">
                <ItemTemplate >
				
				 <input id="YX_CH" name="YX_CH" type="checkbox" style="border:0 " value="<%#Eval("YX_ID") %>" />
				
                </ItemTemplate>
                      <HeaderStyle CssClass="B" />
             </asp:TemplateColumn>
              <asp:TemplateColumn HeaderText="I  D">
                <ItemTemplate >
				<%#Eval("YX_ID") %>
                </ItemTemplate>
                      <HeaderStyle CssClass="B" />
             </asp:TemplateColumn>
			      <asp:TemplateColumn HeaderText="所属分类">
                <ItemTemplate >
				<%#Ret_name(Convert.ToInt16(Eval("YX_Class")))%>			
                </ItemTemplate>
                      <HeaderStyle CssClass="B" />
             </asp:TemplateColumn>
               <asp:TemplateColumn HeaderText="品牌名称">
                <ItemTemplate >
				<%#Ret_PinPai(Convert.ToInt16(Eval("YX_PinPai")))%>			
                </ItemTemplate>
                      <HeaderStyle CssClass="B" />
             </asp:TemplateColumn>
             <asp:TemplateColumn HeaderText="物品名称">
                <ItemTemplate >
				
			<a href="../../ShowProduct.aspx?YX_MID=<%#Eval("YX_ID")%>"><%#Eval("YX_ProductName")%></a>
				
             </ItemTemplate>
                 <HeaderStyle CssClass="B" />
             </asp:TemplateColumn>
                          <asp:TemplateColumn HeaderText="归属者">
                <ItemTemplate >
				
			<%#Ret_User(Convert.ToInt32(Eval("yx_userid")))%>
				
             </ItemTemplate>
                 <HeaderStyle CssClass="B" />
             </asp:TemplateColumn>
			  <asp:TemplateColumn HeaderText="状　　态">
                <ItemTemplate >
				<%# Ret_stat(Convert.ToInt16(DataBinder.Eval(Container.DataItem, "YX_Sm")), "热")%>
				<%# Ret_stat(Convert.ToInt16(DataBinder.Eval(Container.DataItem, "YX_Veri")), "审核")%>
			    <%# Ret_stat(Convert.ToInt16(DataBinder.Eval(Container.DataItem, "YX_TPrice")), "特")%>
				<%# Ret_stat(Convert.ToInt16(DataBinder.Eval(Container.DataItem, "YX_Tj")), "推")%>
				<%# Ret_stat(Convert.ToInt16(DataBinder.Eval(Container.DataItem, "YX_Display")), "首显")%></a>
				
                </ItemTemplate>
                  <HeaderStyle CssClass="B" />
             </asp:TemplateColumn>
              <asp:TemplateColumn HeaderText="库　　存">
                <ItemTemplate >				
				<%#DataBinder.Eval(Container.DataItem, "YX_KcNum")%>	
                </ItemTemplate>
                  <HeaderStyle CssClass="B" />
             </asp:TemplateColumn>
             <asp:TemplateColumn HeaderText="操　　作">
                <ItemTemplate >
				<a href="Edit_Num.aspx?YX_FS=Admin_KC&YX_MID=<%#DataBinder.Eval(Container.DataItem, "YX_ID")%>" title="管理物品库存"> 库存管理</a>
				<a href="YX_Edit_Pro.aspx?YX_MID=<%#DataBinder.Eval(Container.DataItem, "YX_ID")%>&YX_ID=<%#Eval("YX_Class") %>"><img src="../../Skin/skin5/IMAGES/icon_edit.gif" style="border:0" alt="编辑" /></a>
				<a target="_blank" href="../../ShowProduct.aspx?YX_MID=<%#DataBinder.Eval(Container.DataItem, "YX_ID")%>"><img src="../../Skin/skin5/IMAGES/icon_view.gif" style="border:0" alt="预览" /></a>
				
				 <a href="Edit_Num.aspx?YX_FS=Del&YX_MID=<%#DataBinder.Eval(Container.DataItem, "YX_ID")%>" onClick="return isdel()"><img src="../../Skin/skin5/IMAGES/no.gif" style="border:0" alt="删除" /></a>
				
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
              </asp:DropDownList> <input id="chkall" type="checkbox" onClick="CheckAll(this.form)" style="border:0 " />全选</td>
                <td align="left" bgcolor="#e7e7e7" colspan="2">
                    <asp:DropDownList ID="DropDownList1" runat="server">
                   <asp:ListItem Value="0">-批量审核(本页)-</asp:ListItem>  
                       <asp:ListItem Value="10">-批量解除审核(本页)-</asp:ListItem>               
                     <asp:ListItem Value="1">-批量删除(本页)-</asp:ListItem>           
                     <asp:ListItem Value="2">-批量热卖(本页)-</asp:ListItem>
                     <asp:ListItem Value="3">-批量解除热卖(本页)-</asp:ListItem>
                      <asp:ListItem Value="4">-批量特价(本页)-</asp:ListItem>
                     <asp:ListItem Value="5">-批量解除特价(本页)-</asp:ListItem>
                       <asp:ListItem Value="6">-批量推荐 (本页)-</asp:ListItem>
                     <asp:ListItem Value="7">-批量解除推荐 (本页)-</asp:ListItem>
                       <asp:ListItem Value="8">-全部删除-</asp:ListItem>     
                        <asp:ListItem Value="9">-全部审核-</asp:ListItem>   
                    </asp:DropDownList>
                </td>
                <td align="center" style="width: 50px"><asp:Button ID="Button2" runat="server" Text="执行操作" OnClientClick="return isExc()" OnClick="Button2_Click" onmousemove=showBtnOver(this) onmouseout=showBtnOut(this)  CssClass="submitMiniGreen"  />
                </td>
            </tr>
        </table></td>
  </tr>

</table>
        </asp:Panel>
   
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
