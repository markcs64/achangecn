<%@ page language="C#" autoeventwireup="true" inherits="VipUser_YX_sell_type, App_Web_xyjt5bop" %>

<%@ Register Src="YX_proskin.ascx" TagName="YX_proskin" TagPrefix="uc2" %>

<%@ Register Src="shopclass.ascx" TagName="shopclass" TagPrefix="uc1" %>
<%@ Register Src="Top_vip.ascx" TagName="Top_vip" TagPrefix="uc" %>
<%@ Register Src="Foot_vip.ascx" TagName="Foot_vip" TagPrefix="uc" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>物品发布管理-<%= SetUrl() %></title>
    <script>
    function inner()
    {
    if(document.getElementById('CheckBox1').checked==true)
    {
        document.getElementById('num').style.display='';
        document.getElementById('lnum').style.display='';
    }
    else
    {
    document.getElementById('num').style.display='none';
    document.getElementById('lnum').style.display='none';
    }
    }
        function loadpay(id)
    {

var oHttpReq = new ActiveXObject("MSXML2.XMLHTTP"); 
var oDoc = new ActiveXObject("MSXML2.DOMDocument"); 
oHttpReq.open("POST", "RetPinpai.aspx?id="+id, false); 
oHttpReq.send(""); 
result = oHttpReq.responseText; 
oDoc.loadXML(result); 

item3 = oDoc.selectNodes("//PinPai/Table/YX_parentpath"); 

var str=item3[0].text;

forload(str,id)
   document.getElementById('yes').style.display='';
　　      document.getElementById('no').style.display='none';
    }
    
    
    function move1(){
        var m1 = document.getElementById('DropDownList2'); 
        var ilength = m1.options.length
        for(var i = 0; i < ilength; i++){
            m1.remove(0);
        } 
    }
        function move2(){
        var m2 = document.getElementById('Select1'); 
        var ilength2 = m2.options.length
        for(var j = 0; j < ilength2;j++){
            m2.remove(0);
        } 
    }
        function move3(){
        var m3= document.getElementById('Select2'); 
        var ilength4 = m3.options.length
        for(var k= 0; k < ilength4; k++){
            m3.remove(0);
        } 
    }

    function forload(str,id)
    {
        
        var a=str.split(',');
        if(a.length==4){   
         
           load(a[1],"DropDownList2",1);
           load(a[2],"Select1",2);
           load(a[3],"Select2",3);
            forcheck(a[1],0)
             forcheck(a[2],1)
              forcheck(a[3],2)
              forcheck(id,3)
        }else if(a.length==3)
        {
           load(a[1],"DropDownList2",1);
           load(a[2],"Select1",2);
           forcheck(a[1],0)
           forcheck(a[2],1)
           forcheck(id,2)
        }else if(a.length==2)
        {
           load(a[1],"DropDownList2",1);
            forcheck(a[1],0)
             forcheck(id,1)
        }
        
        
    }
    function forcheck(typeid,num){
     var va;
    if(num==0)
    {
     va=document.getElementById('classroot');
     }else if(num==1)
     {
      va=document.getElementById('DropDownList2');
     }else if(num==2)
     {
     va=document.getElementById('Select1');
     }else if(num==3)
     {
      va=document.getElementById('Select2');
     }
     var i=va.length;
    
        for(j=0;j<i;j++)
        {  
      
            if(va[j].value==typeid)
            {  
               va[j].selected=typeid;
            
            }
        }
    }
    
     function load(state,id,typeid){ 
     
    if(typeid==1)
    {
        move1();
        move2();
        move3();        
    }
    if(typeid==2)
    {
        move2();
        move3();
    }
      if(typeid==3)
    {
        move3();
    }
    if(typeid==4)
    {
    document.getElementById('yes').style.display='';
    
    }
var drp2=document.getElementById(id); 
var oHttpReq = new ActiveXObject("MSXML2.XMLHTTP"); 
var oDoc = new ActiveXObject("MSXML2.DOMDocument"); 
oHttpReq.open("POST", "RetPinpai.aspx?state="+state, false); 
oHttpReq.send(""); 
result = oHttpReq.responseText; 

oDoc.loadXML(result); 
item1=oDoc.selectNodes("//PinPai/Table/YX_ID")
items = oDoc.selectNodes("//PinPai/Table/YX_ClassName"); 
item2 = oDoc.selectNodes("//PinPai/Table/b"); 
var itemsLength=items.length; 



if(itemsLength<1){

var newOption1 = document.createElement("OPTION"); 

    }
    else{

    var newOption1 = document.createElement("OPTION"); 

var isdis=0;
     for(i=0;i<itemsLength;i++) 
　　        { 
　　        var newOption = document.createElement("OPTION"); 
　　        if(item2[i]!=null){
　　           newOption.text=items[i].text+"-->";
　　           isdis=1; 
　　        }else{
　　            newOption.text=items[i].text; 
　　           
　　        }
　　     
　　        newOption.value=item1[i].text; 
　　         
　　         
　　         drp2.options.add(newOption);  
　　     
　　        
　　        } 
　　}
　　if(itemsLength!=0)
　　{
　　 document.getElementById('yes').style.display='none';
　　 document.getElementById('no').style.display='';
　　}else{
　　     document.getElementById('yes').style.display='';
　　      document.getElementById('no').style.display='none';
　　      
　　}
}
    </script>
</head>
<body>
<uc:Top_vip ID="top_vip1" runat="server" />
    <form id="form1" action="YX_sell_type.aspx" runat="server" onsubmit="return Validator.Validate(document.getElementById('form1'),2)">
    <div>
       
 <asp:Panel ID="selectype" Visible="false" runat="server" HorizontalAlign="Center">
   <DIV class="main">
<DIV id="menu">
<UL id="menu_head">
  <LI class=li_now><IMG hspace="10" src="../images/upload_btn_will_01.gif" 
  align="absMiddle">选择易出方式 </LI>
  <LI class="li_now"><IMG hspace=10 src="../images/upload_btn_here_02.gif" 
  align="absMiddle">选择物品分类 </LI>
  <LI><IMG hspace="10" src="../images/upload_btn_will_03.gif" 
  align="absMiddle">填写物品详情 </LI></UL>
</DIV></DIV>
<DIV class="mai">
<DIV id="DIV2">发布您的物品请先阅读。</DIV></DIV>
<DIV class="maaains">
<UL style="text-align:center;PADDING-LEFT: 20px; MARGIN-BOTTOM: 5px">
  <LI>选择分类<BR /> <%=ss() %>
  <select style='width:180px;' size="14" id="DropDownList2" runat="server" name="DropDownList2" onchange="load(this.options[this.selectedIndex].value,'Select1',2)">
  </select>
   <select style='width:180px;' size="14" id="Select1" runat="server" name="Select1" onchange="load(this.options[this.selectedIndex].value,'Select2',3)">
  </select>
   <select style='width:180px;' size=14 id="Select2" runat="server" name="Select2" onchange="load(this.options[this.selectedIndex].value,'Select2',4)">
  </select>
  
  </LI>
  </UL>
</DIV>
<DIV class="main">
<DIV id="DIV3" style="display:none"><asp:Label ID="Error" runat="server"></asp:Label></DIV>
<div id="uselist">
曾经使用过的类目：<asp:DropDownList ID="ddl" runat="server" Width="120px" onchange="loadpay(this.options[this.selectedIndex].value)"></asp:DropDownList> 
</div>
</DIV>
    <asp:HiddenField ID="HiddenField1" runat="server" /> 
    <div id=yes style="display:none">
    <asp:Button id="nextID"  runat="server" Text=" 继 续>" OnClick="nextID_Click" /></div>
    <div id=no>
    <asp:Button id="Button2"  runat="server" Enabled=false Text=" 继 续>" OnClick="nextID_Click" />
    </div>
</asp:Panel>


 
        <asp:Panel ID="insertpro" Visible="false" runat="server">
       <asp:Panel ID="fs" runat="server" HorizontalAlign="center">
          <DIV class="main">
            <DIV id="menu">
            <UL id=menu_head>
              <LI><IMG hspace="10" src="../images/upload_btn_will_01.gif" 
              align="absMiddle">选择易出方式 </LI>
              <LI class="li_now"><IMG hspace="10" src="../images/upload_btn_will_02.gif" 
              align="absMiddle">选择物品分类 </LI>
              <LI><IMG hspace="10" src="../images/upload_btn_here_03.gif" 
              align="absMiddle">填写物品详情 </LI></UL>
            </DIV>
        </DIV>

<table class="main" border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td width="20%">
        <asp:Image ID="Image1" runat="server"  /></td>
    <td><DIV id=warn>发布您的物品请先阅读禁止交易和限制交易的物品规则，重复发布物品处理规则。</DIV></td>
  </tr>
</table>
</asp:Panel>
<br>
<script language="javascript" src="../include/yz.js"></script>
<table class=main border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td width="140" class="td_01">物品信息编辑</td>
    <td colspan="2" class="td_01">　</td>
  </tr>
  <tr>
    <td class="td_02"><span class="fontOrange font14">*</span> 物品类目：</td>
    <td class="td_03" colspan="2" >
        <asp:Label ID="classroot" runat="server"></asp:Label>
        <asp:HiddenField ID="yx_classid" runat="server" />
        <asp:HiddenField ID="action" runat="server" Value="savepro" />
        <asp:HiddenField ID="yx_gmfs" runat="server" />
        <asp:HyperLink ID="HyperLink1" runat="server">[更改类目]</asp:HyperLink>
	</td>
  </tr>
  <asp:Panel ID="sx" Visible="false" runat="server">
  <tr id = "tr_classattr">
     <td valign="top" class="td_02" style="padding-top:20px"><span class="fontOrange font14">*</span> 物品属性：
	 </td>
     <td colspan="2" class="td_03 goodDesc" style="line-height:25px">
         <%=product_sx() %>
     </td>
  </tr>
   </asp:Panel>
  <asp:Panel ID="pp" Visible="false" runat="server">
    <tr id = "tr1">
     <td valign="top" class="td_02" style="padding-top:20px"><span class="fontOrange font14">*</span> 物品品牌：
	 </td>
     <td colspan="2" class="td_03 goodDesc" style="line-height:25px">
         <%=product_pp()%>
     </td>
  </tr> 
  </asp:Panel>
  <tr>
    <td class="td_02" ><span class="fontOrange font14">*</span> 物品名称：</td>
    <td class="td_03" style="height: 65px"><input name="sTitle" id="sTitle" dataType="Require" min="3" max="10"  msg="请填写物品名称" type="text" maxlength="60" size="60"><br>
    物品标题请限定在30个汉字内（60个字符）。怎样给物品拟个好标题？ </td>
   	<td rowspan="2" align="center" class="td_03"><div id="previewImage"></div></td>
  </tr>  
  <tr>
    <td class="td_02">图片上传：</td>
    <td class="td_03" style="height: 65px">
      <asp:FileUpload ID="photo" name="photo"  runat="server" require="true" datatype="Filter" msg="请选择要上传的物品图片，现暂时只支持jpg\gif图片文件" accept="jpg, gif" onchange="document.getElementById('previewImage').innerHTML = '预览<br> <img src=\''+this.value+'\' width=100 align=absmiddle>';" Width="350px" />
      <br>有图片的物品最受欢迎！图片限定120k内，jpg或gif格式，请确保图片在<br>
浏览器中可以正常打开。如何在物品描述里插入图片，需要注意些什么？
  
	</td>
 </tr>		
    <tr>
    <td class="td_02">物品说明：</td>
    <td class="td_03" colspan=2>
<script type="text/javascript" src="Edit/editor.js" charset="gb2312"></script>
<textarea name="content" id="content" style="width:100%;height:250px;"></textarea>
<script type="text/javascript">
	var oEditor = new PPEditor('content') ;
	oEditor.Create() ;
</script>
在线编辑器仅支持IE5.5及以上版本，如果看不到在线编辑器，<a href=http://www.microsoft.com/downloads/details.aspx?FamilyID=1e1550cb-5e5d-48f5-b02b-20b602228de6&displaylang=zh-cn target=_blank>请点击升级浏览器。</a>
	</td>
 </tr>	
</table>
<table class=main border="0" align="center" cellpadding="0" cellspacing="0">
 <tr id = "chosestyle">
    <td width="143" class="td_02">皮肤风格选择：</td>
    <td class="td_03">
                <uc2:YX_proskin id="YX_proskin1" runat="server"></uc2:YX_proskin>
	</td>
 </tr>
</table>
<table class=main border="0" align="center" cellpadding="0" cellspacing="0">
   <tr>
      <td width="140" class="td_01">物品基本信息</td>
      <td colspan="3" class="td_01">　</td>
   </tr>
   <tr>
      <td class="td_02"><span class="fontOrange font14">*</span> 物品数量：</td>
      <td width="225" class="td_03">
         <asp:TextBox ID="dwNum" Text=1 runat="server" require = "true"  datatype="Number" msg="物品数量必须是数字" ></asp:TextBox>件</td>
        <td  class="td_02">有效期：</td>
        <td class="td_03">
	        <select name="dwValidDuration" class="select_span">
			   <option value="7" checked>7</option>
			  <option value="14">14</option>
			  <option value="21" >21</option>
			  <option value="30">30</option>
			  <option value="60" >60</option>
			  <option value="120">120</option>
			  <option value="360" >360</option>
		    </select>天
		</td>
   </tr>
       <script src="../Include/area.js" language=javascript></script>
    <script language="javascript">
function window.onload()
{
   province(0);
   cityName(document.form1.prov.value,0);//设置初始值
}
</script>
   <tr>
        <td class="td_02"><span class="fontOrange font14">*</span> 所 在 地：</td>
        <td class="td_03"><select  id="prov" name="prov" datatype="Range"  msg="请选择物品所在地" min="1" max="30000000"  require="true" onChange="cityName(document.form1.prov.options[document.form1.prov.selectedIndex].value)">
<option value="0">请选择</option>
</select>
<select name="city" id="city">
</select></td>
	    <td class="td_02">发  票：</td>
        <td class="td_03">
          <input name="cInvoiceType" type="radio" value="1" > 有
          <input name="cInvoiceType" type="radio" value="2" checked > 无
        </td>
    </tr>
    <tr>
        <td class="td_02"><span class="fontOrange font14">*</span> 新旧程度：</td>
        <td class="td_03">
		  <input name="cNewType" type="radio" value="1"  checked >全新
          <input name="cNewType" type="radio" value="2" >  二手
          <input name="cNewType" type="radio" value="3">  陈列品
		</td>
        <td class="td_02">保  修：
		</td>
        <td class="td_03">
	      <input name="cRepairType" type="radio" value="1"  />有
          <input name="cRepairType" type="radio" value="2"   checked  />无
        </td>
  </tr>
  <tr>
        <td class="td_02"><span class="fontOrange font14">*</span> 自定义分类：</td>
        <td colspan="3" class="td_03">
         <uc1:shopclass ID="Shopclass1" runat="server" />
		</td>
  </tr>
    <tr>
        <td class="td_02"><span class="fontOrange font14">*</span> 上架时间：</td>
        <td colspan="3" class="td_03">
		   <input type=radio name=pro_sjsj value=0 checked />立即上架  <input type=radio name=pro_sjsj value=1 />放入仓库
		</td>
  </tr>
</table>
<table class=main border="0" align="center" cellpadding="0" cellspacing="0" >
     <tr>
	    <td width="140" class="td_01">交易条件</td>
        <td class="td_01">　</td>
     </tr>
     <tr>
        <td class="td_02"><span class="fontOrange font14">*</span> 交易方式：</td>
        <td class="td_03">
            <%=Transactions()%>
			</td>
	 </tr>
     <tr>
        <td class="td_02"><span class="fontOrange font14">*</span> 运费承担：</td>
        <td class="td_03">
        	<input name="cTransportType" type="radio"  value="1" onclick="document.getElementById('cdcf').innerText=''"> 卖家承担运费 
	 		<input name="cTransportType" type="radio" value="2" checked onclick="document.getElementById('cdcf').innerHTML='平邮：<input name=dwNormalMailPrice type=text require = true datatype=Range min=0.01 max=1000000 msg=[平邮费]金额必须是0.01～1000000之间的数字 size=10 value=0.00> 元 	快递：<input name=dwExpressMailPrice type=text require = true datatype=Range min=0.01 max=1000000 msg=[快递费]金额必须是0.01～1000000之间的数字  size=10 value=0.00>'"> 买家承担运费<br>
	 		
	 			<div id=cdcf>平邮：<input name="dwNormalMailPrice" type="text" require = "true" datatype="Range" min="0.01" max="1000000" msg="[平邮费] 金额必须是0.01～1000000之间的数字;"   size="10" value="0.00"> 元 
			快递：<input name="dwExpressMailPrice" type="text" require = "true" datatype="Range" min="0.01" max="1000000" msg="[快递费] 金额必须是0.01～1000000之间的数字;"   size="10" value="0.00"> 元 
			</div>
		</td>
      </tr>
      <asp:Panel ID="aprice" runat="server" Visible="false">
      <tr>
        <td class="td_02"><span class="fontOrange font14">*</span> 一 口 价：</td>
        <td class="td_03">
		 现价(必填)：<input name="dwPrice_bin" id="dwPrice_bin" type="text" size="10"  require = "true" datatype="Range" min="0.01" max="1000000" msg="[一 口 价] 金额必须是0.01～1000000之间的数字；" >  元　
<asp:CheckBox ID="CheckBox1" runat="server" onclick="inner()"/>是否团购 &nbsp;&nbsp;&nbsp;<asp:Label runat=server ID="lnum" Text="团购数量限制" style="display:none" /><input name ="num" id="num" type="text" size="2"  style="display:none" /></td>
      </tr>  
          <tr>
        <td class="td_02">购买权限设置：</td>
        <td class="td_03">购买件数限制：
			<input id="dwOpNum" name="dwOpNum" type="text"   value="0" size="8" require = "true" datatype="Number" msg="物品数量必须是数字" > 件<span id="buyerLimitErr" style="color:red"></span>&nbsp;&nbsp;&nbsp;&nbsp;同一买家购买该物品的数量上限（0件表示不限制）
		</td>
      </tr>
      </asp:Panel>

      <asp:Panel ID="Auction" runat="server" Visible="false">
      <tr id="Auction">
        <td class="td_02"><span class="fontOrange font14">*</span> 起 拍 价：</td>
        <td class="td_03"><input name="dwPrice_auc" id = "dwPrice_auc" type="text"  require = "true" datatype="Range" min="0.01" max="1000000" msg="[起 拍 价] 金额必须是0.01～1000000之间的数字；"  size="10" > 元&nbsp;&nbsp;&nbsp;&nbsp; 起拍价就是您可以接受的最低价格，请谨慎设置。</td>
      </tr>
      <tr id="Rate">
        <td class="td_02"><span class="fontOrange font14">*</span> 最低加价幅度：</td>
        <td class="td_03"><input name="dwPriceToAdd" type="text" require = "true" datatype="Range" min="0.01" max="1000000" msg="[最低加价幅度] 金额必须是0.01～1000000之间的数字；"    value="" size="10"  > 元<br>
        </td>
      </tr>
      </asp:Panel>
</table>
	<div class=main style="text-align:center">
      <br>  <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="确认无误，提交 >>" />
        
        
        <br><br>
	</div>

   
       </asp:Panel>
<asp:panel runat="server"  ID="panel3" Visible="false" width="100%" HorizontalAlign="Center"> 
<table width="60%" border="0" >
  <tr>
    <td align="center"><img src="../images/success.gif" width="41" align="center" height="39" />&nbsp;&nbsp;<div class=divfont14>恭喜您，物品发布成功！</div></td>
  </tr>
  <tr>
    <td align="center" style="line-height:20px">
    <b>你可以进行的操作</b><br>    
        <asp:HyperLink ID="HyperLink2" runat="server">查看物品详情>></asp:HyperLink><br>
        <a href="YX_sell.aspx">继续发布新物品>></a><br>
         <a href="selling_commodity.aspx"> 易出中的物品列表 >></a></td>
  </tr>
  <tr>
    <td><table width="100%" height="62px" border="0" align="center">
      <tr>
        <td>&nbsp;</td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
  </tr>
</table>

</asp:panel>
<%--<script language=javascript>
  forload()
</script>--%>
<!--</div>-->
    </form>
   <uc:Foot_vip ID="foot_vip" runat="server" /> 
</body>
</html>

