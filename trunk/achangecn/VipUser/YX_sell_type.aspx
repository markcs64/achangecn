<%@ page language="C#" autoeventwireup="true" inherits="VipUser_YX_sell_type, App_Web_xyjt5bop" %>

<%@ Register Src="YX_proskin.ascx" TagName="YX_proskin" TagPrefix="uc2" %>

<%@ Register Src="shopclass.ascx" TagName="shopclass" TagPrefix="uc1" %>
<%@ Register Src="Top_vip.ascx" TagName="Top_vip" TagPrefix="uc" %>
<%@ Register Src="Foot_vip.ascx" TagName="Foot_vip" TagPrefix="uc" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>��Ʒ��������-<%= SetUrl() %></title>
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
����      document.getElementById('no').style.display='none';
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
����        { 
����        var newOption = document.createElement("OPTION"); 
����        if(item2[i]!=null){
����           newOption.text=items[i].text+"-->";
����           isdis=1; 
����        }else{
����            newOption.text=items[i].text; 
����           
����        }
����     
����        newOption.value=item1[i].text; 
����         
����         
����         drp2.options.add(newOption);  
����     
����        
����        } 
����}
����if(itemsLength!=0)
����{
���� document.getElementById('yes').style.display='none';
���� document.getElementById('no').style.display='';
����}else{
����     document.getElementById('yes').style.display='';
����      document.getElementById('no').style.display='none';
����      
����}
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
  align="absMiddle">ѡ���׳���ʽ </LI>
  <LI class="li_now"><IMG hspace=10 src="../images/upload_btn_here_02.gif" 
  align="absMiddle">ѡ����Ʒ���� </LI>
  <LI><IMG hspace="10" src="../images/upload_btn_will_03.gif" 
  align="absMiddle">��д��Ʒ���� </LI></UL>
</DIV></DIV>
<DIV class="mai">
<DIV id="DIV2">����������Ʒ�����Ķ���</DIV></DIV>
<DIV class="maaains">
<UL style="text-align:center;PADDING-LEFT: 20px; MARGIN-BOTTOM: 5px">
  <LI>ѡ�����<BR /> <%=ss() %>
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
����ʹ�ù�����Ŀ��<asp:DropDownList ID="ddl" runat="server" Width="120px" onchange="loadpay(this.options[this.selectedIndex].value)"></asp:DropDownList> 
</div>
</DIV>
    <asp:HiddenField ID="HiddenField1" runat="server" /> 
    <div id=yes style="display:none">
    <asp:Button id="nextID"  runat="server" Text=" �� ��>" OnClick="nextID_Click" /></div>
    <div id=no>
    <asp:Button id="Button2"  runat="server" Enabled=false Text=" �� ��>" OnClick="nextID_Click" />
    </div>
</asp:Panel>


 
        <asp:Panel ID="insertpro" Visible="false" runat="server">
       <asp:Panel ID="fs" runat="server" HorizontalAlign="center">
          <DIV class="main">
            <DIV id="menu">
            <UL id=menu_head>
              <LI><IMG hspace="10" src="../images/upload_btn_will_01.gif" 
              align="absMiddle">ѡ���׳���ʽ </LI>
              <LI class="li_now"><IMG hspace="10" src="../images/upload_btn_will_02.gif" 
              align="absMiddle">ѡ����Ʒ���� </LI>
              <LI><IMG hspace="10" src="../images/upload_btn_here_03.gif" 
              align="absMiddle">��д��Ʒ���� </LI></UL>
            </DIV>
        </DIV>

<table class="main" border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td width="20%">
        <asp:Image ID="Image1" runat="server"  /></td>
    <td><DIV id=warn>����������Ʒ�����Ķ���ֹ���׺����ƽ��׵���Ʒ�����ظ�������Ʒ�������</DIV></td>
  </tr>
</table>
</asp:Panel>
<br>
<script language="javascript" src="../include/yz.js"></script>
<table class=main border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td width="140" class="td_01">��Ʒ��Ϣ�༭</td>
    <td colspan="2" class="td_01">��</td>
  </tr>
  <tr>
    <td class="td_02"><span class="fontOrange font14">*</span> ��Ʒ��Ŀ��</td>
    <td class="td_03" colspan="2" >
        <asp:Label ID="classroot" runat="server"></asp:Label>
        <asp:HiddenField ID="yx_classid" runat="server" />
        <asp:HiddenField ID="action" runat="server" Value="savepro" />
        <asp:HiddenField ID="yx_gmfs" runat="server" />
        <asp:HyperLink ID="HyperLink1" runat="server">[������Ŀ]</asp:HyperLink>
	</td>
  </tr>
  <asp:Panel ID="sx" Visible="false" runat="server">
  <tr id = "tr_classattr">
     <td valign="top" class="td_02" style="padding-top:20px"><span class="fontOrange font14">*</span> ��Ʒ���ԣ�
	 </td>
     <td colspan="2" class="td_03 goodDesc" style="line-height:25px">
         <%=product_sx() %>
     </td>
  </tr>
   </asp:Panel>
  <asp:Panel ID="pp" Visible="false" runat="server">
    <tr id = "tr1">
     <td valign="top" class="td_02" style="padding-top:20px"><span class="fontOrange font14">*</span> ��ƷƷ�ƣ�
	 </td>
     <td colspan="2" class="td_03 goodDesc" style="line-height:25px">
         <%=product_pp()%>
     </td>
  </tr> 
  </asp:Panel>
  <tr>
    <td class="td_02" ><span class="fontOrange font14">*</span> ��Ʒ���ƣ�</td>
    <td class="td_03" style="height: 65px"><input name="sTitle" id="sTitle" dataType="Require" min="3" max="10"  msg="����д��Ʒ����" type="text" maxlength="60" size="60"><br>
    ��Ʒ�������޶���30�������ڣ�60���ַ�������������Ʒ����ñ��⣿ </td>
   	<td rowspan="2" align="center" class="td_03"><div id="previewImage"></div></td>
  </tr>  
  <tr>
    <td class="td_02">ͼƬ�ϴ���</td>
    <td class="td_03" style="height: 65px">
      <asp:FileUpload ID="photo" name="photo"  runat="server" require="true" datatype="Filter" msg="��ѡ��Ҫ�ϴ�����ƷͼƬ������ʱֻ֧��jpg\gifͼƬ�ļ�" accept="jpg, gif" onchange="document.getElementById('previewImage').innerHTML = 'Ԥ��<br> <img src=\''+this.value+'\' width=100 align=absmiddle>';" Width="350px" />
      <br>��ͼƬ����Ʒ���ܻ�ӭ��ͼƬ�޶�120k�ڣ�jpg��gif��ʽ����ȷ��ͼƬ��<br>
������п��������򿪡��������Ʒ���������ͼƬ����Ҫע��Щʲô��
  
	</td>
 </tr>		
    <tr>
    <td class="td_02">��Ʒ˵����</td>
    <td class="td_03" colspan=2>
<script type="text/javascript" src="Edit/editor.js" charset="gb2312"></script>
<textarea name="content" id="content" style="width:100%;height:250px;"></textarea>
<script type="text/javascript">
	var oEditor = new PPEditor('content') ;
	oEditor.Create() ;
</script>
���߱༭����֧��IE5.5�����ϰ汾��������������߱༭����<a href=http://www.microsoft.com/downloads/details.aspx?FamilyID=1e1550cb-5e5d-48f5-b02b-20b602228de6&displaylang=zh-cn target=_blank>���������������</a>
	</td>
 </tr>	
</table>
<table class=main border="0" align="center" cellpadding="0" cellspacing="0">
 <tr id = "chosestyle">
    <td width="143" class="td_02">Ƥ�����ѡ��</td>
    <td class="td_03">
                <uc2:YX_proskin id="YX_proskin1" runat="server"></uc2:YX_proskin>
	</td>
 </tr>
</table>
<table class=main border="0" align="center" cellpadding="0" cellspacing="0">
   <tr>
      <td width="140" class="td_01">��Ʒ������Ϣ</td>
      <td colspan="3" class="td_01">��</td>
   </tr>
   <tr>
      <td class="td_02"><span class="fontOrange font14">*</span> ��Ʒ������</td>
      <td width="225" class="td_03">
         <asp:TextBox ID="dwNum" Text=1 runat="server" require = "true"  datatype="Number" msg="��Ʒ��������������" ></asp:TextBox>��</td>
        <td  class="td_02">��Ч�ڣ�</td>
        <td class="td_03">
	        <select name="dwValidDuration" class="select_span">
			   <option value="7" checked>7</option>
			  <option value="14">14</option>
			  <option value="21" >21</option>
			  <option value="30">30</option>
			  <option value="60" >60</option>
			  <option value="120">120</option>
			  <option value="360" >360</option>
		    </select>��
		</td>
   </tr>
       <script src="../Include/area.js" language=javascript></script>
    <script language="javascript">
function window.onload()
{
   province(0);
   cityName(document.form1.prov.value,0);//���ó�ʼֵ
}
</script>
   <tr>
        <td class="td_02"><span class="fontOrange font14">*</span> �� �� �أ�</td>
        <td class="td_03"><select  id="prov" name="prov" datatype="Range"  msg="��ѡ����Ʒ���ڵ�" min="1" max="30000000"  require="true" onChange="cityName(document.form1.prov.options[document.form1.prov.selectedIndex].value)">
<option value="0">��ѡ��</option>
</select>
<select name="city" id="city">
</select></td>
	    <td class="td_02">��  Ʊ��</td>
        <td class="td_03">
          <input name="cInvoiceType" type="radio" value="1" > ��
          <input name="cInvoiceType" type="radio" value="2" checked > ��
        </td>
    </tr>
    <tr>
        <td class="td_02"><span class="fontOrange font14">*</span> �¾ɳ̶ȣ�</td>
        <td class="td_03">
		  <input name="cNewType" type="radio" value="1"  checked >ȫ��
          <input name="cNewType" type="radio" value="2" >  ����
          <input name="cNewType" type="radio" value="3">  ����Ʒ
		</td>
        <td class="td_02">��  �ޣ�
		</td>
        <td class="td_03">
	      <input name="cRepairType" type="radio" value="1"  />��
          <input name="cRepairType" type="radio" value="2"   checked  />��
        </td>
  </tr>
  <tr>
        <td class="td_02"><span class="fontOrange font14">*</span> �Զ�����ࣺ</td>
        <td colspan="3" class="td_03">
         <uc1:shopclass ID="Shopclass1" runat="server" />
		</td>
  </tr>
    <tr>
        <td class="td_02"><span class="fontOrange font14">*</span> �ϼ�ʱ�䣺</td>
        <td colspan="3" class="td_03">
		   <input type=radio name=pro_sjsj value=0 checked />�����ϼ�  <input type=radio name=pro_sjsj value=1 />����ֿ�
		</td>
  </tr>
</table>
<table class=main border="0" align="center" cellpadding="0" cellspacing="0" >
     <tr>
	    <td width="140" class="td_01">��������</td>
        <td class="td_01">��</td>
     </tr>
     <tr>
        <td class="td_02"><span class="fontOrange font14">*</span> ���׷�ʽ��</td>
        <td class="td_03">
            <%=Transactions()%>
			</td>
	 </tr>
     <tr>
        <td class="td_02"><span class="fontOrange font14">*</span> �˷ѳе���</td>
        <td class="td_03">
        	<input name="cTransportType" type="radio"  value="1" onclick="document.getElementById('cdcf').innerText=''"> ���ҳе��˷� 
	 		<input name="cTransportType" type="radio" value="2" checked onclick="document.getElementById('cdcf').innerHTML='ƽ�ʣ�<input name=dwNormalMailPrice type=text require = true datatype=Range min=0.01 max=1000000 msg=[ƽ�ʷ�]��������0.01��1000000֮������� size=10 value=0.00> Ԫ 	��ݣ�<input name=dwExpressMailPrice type=text require = true datatype=Range min=0.01 max=1000000 msg=[��ݷ�]��������0.01��1000000֮�������  size=10 value=0.00>'"> ��ҳе��˷�<br>
	 		
	 			<div id=cdcf>ƽ�ʣ�<input name="dwNormalMailPrice" type="text" require = "true" datatype="Range" min="0.01" max="1000000" msg="[ƽ�ʷ�] ��������0.01��1000000֮�������;"   size="10" value="0.00"> Ԫ 
			��ݣ�<input name="dwExpressMailPrice" type="text" require = "true" datatype="Range" min="0.01" max="1000000" msg="[��ݷ�] ��������0.01��1000000֮�������;"   size="10" value="0.00"> Ԫ 
			</div>
		</td>
      </tr>
      <asp:Panel ID="aprice" runat="server" Visible="false">
      <tr>
        <td class="td_02"><span class="fontOrange font14">*</span> һ �� �ۣ�</td>
        <td class="td_03">
		 �ּ�(����)��<input name="dwPrice_bin" id="dwPrice_bin" type="text" size="10"  require = "true" datatype="Range" min="0.01" max="1000000" msg="[һ �� ��] ��������0.01��1000000֮������֣�" >  Ԫ��
<asp:CheckBox ID="CheckBox1" runat="server" onclick="inner()"/>�Ƿ��Ź� &nbsp;&nbsp;&nbsp;<asp:Label runat=server ID="lnum" Text="�Ź���������" style="display:none" /><input name ="num" id="num" type="text" size="2"  style="display:none" /></td>
      </tr>  
          <tr>
        <td class="td_02">����Ȩ�����ã�</td>
        <td class="td_03">����������ƣ�
			<input id="dwOpNum" name="dwOpNum" type="text"   value="0" size="8" require = "true" datatype="Number" msg="��Ʒ��������������" > ��<span id="buyerLimitErr" style="color:red"></span>&nbsp;&nbsp;&nbsp;&nbsp;ͬһ��ҹ������Ʒ���������ޣ�0����ʾ�����ƣ�
		</td>
      </tr>
      </asp:Panel>

      <asp:Panel ID="Auction" runat="server" Visible="false">
      <tr id="Auction">
        <td class="td_02"><span class="fontOrange font14">*</span> �� �� �ۣ�</td>
        <td class="td_03"><input name="dwPrice_auc" id = "dwPrice_auc" type="text"  require = "true" datatype="Range" min="0.01" max="1000000" msg="[�� �� ��] ��������0.01��1000000֮������֣�"  size="10" > Ԫ&nbsp;&nbsp;&nbsp;&nbsp; ���ļ۾��������Խ��ܵ���ͼ۸���������á�</td>
      </tr>
      <tr id="Rate">
        <td class="td_02"><span class="fontOrange font14">*</span> ��ͼӼ۷��ȣ�</td>
        <td class="td_03"><input name="dwPriceToAdd" type="text" require = "true" datatype="Range" min="0.01" max="1000000" msg="[��ͼӼ۷���] ��������0.01��1000000֮������֣�"    value="" size="10"  > Ԫ<br>
        </td>
      </tr>
      </asp:Panel>
</table>
	<div class=main style="text-align:center">
      <br>  <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="ȷ�������ύ >>" />
        
        
        <br><br>
	</div>

   
       </asp:Panel>
<asp:panel runat="server"  ID="panel3" Visible="false" width="100%" HorizontalAlign="Center"> 
<table width="60%" border="0" >
  <tr>
    <td align="center"><img src="../images/success.gif" width="41" align="center" height="39" />&nbsp;&nbsp;<div class=divfont14>��ϲ������Ʒ�����ɹ���</div></td>
  </tr>
  <tr>
    <td align="center" style="line-height:20px">
    <b>����Խ��еĲ���</b><br>    
        <asp:HyperLink ID="HyperLink2" runat="server">�鿴��Ʒ����>></asp:HyperLink><br>
        <a href="YX_sell.aspx">������������Ʒ>></a><br>
         <a href="selling_commodity.aspx"> �׳��е���Ʒ�б� >></a></td>
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

