<%@ Page Language="C#" ContentType="text/html" ResponseEncoding="gb2312" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>�ޱ����ĵ�</title>
</head>
<body>








<DIV id=Head> 
<DIV id=HeadTop>
<DIV id=Logo><a href="{$Hope_SitUrl$}" target=_top><img src="{$Hope_SitUrl$}{$Hope_Skin$}IMAGE/Logo.jpg"/></a></DIV>
<DIV id=HeadNavBar>
<UL>
  <LI class=NoSep><A href="../ProClass_list.aspx" 
  target=_parent>��Ҫ����</A> </LI>
  <LI><A href="/vipuser/YX_sell.aspx" 
  target=_parent>��Ҫ�׳�</A> </LI>
  <LI><A id=MyTaoBao 
  href="/vipuser/default_vip.aspx" 
  target=_top>��Ա����</A> </LI>
  <LI><A href="/bbs" target=_top>��������</A> </LI>
  <LI><A href="/help" target=_top>��������</A>  </LI>
  <LI id=AdvanceBox>

  </LI></UL></DIV></DIV>
<DIV id=QuickLinks>
<UL>
  <LI><iframe src="{$Hope_SitUrl$}Login_Stat.aspx"  frameborder="0" width="200" height="25" scrolling="no" ></iframe>
 <!-- <script language="javascript" src="{$Hope_SitUrl$}Login_Stat.aspx" charset="utf-8" ></script>--></LI>
  <LI><A href="Hotsell.aspx" target=_parent>�ȵ���Ʒ</A> </LI>
  <LI><A href="Shop.aspx" target=_parent>������ҵ</A> </LI>
  <LI><A href="News/" target=_parent>������Ѷ</A> </LI>
  <LI><A href="HighlevelSearch.aspx" target=_parent>�߼�����</A> </LI></UL></DIV>
<DIV class=hidden id=IptvCompanion>���ּ�--ѡ����Ŀ / ȷ����--�� / ���--���� / �Ҽ�--ǰ�� / 
��ҳ--���ּ�0</DIV>

<DIV id=ChannelMenu>
<UL id=ChannelMenuItems>
  <LI id=MenuHome><A href="{$Hope_SitUrl$}default.aspx" 
  target=_top><SPAN>��ҳ</SPAN></A> </LI>
  <LI id=MenuMarket><A 
  href="{$Hope_SitUrl$}ProClass_list.aspx" 
  target=_top><SPAN>���Ｏ��</SPAN></A> </LI>
  <LI id=kk2><A 
  href="{$Hope_SitUrl$}browse_offer.aspx" 
  target=_top><SPAN>��Ҫ����</SPAN></A> </LI>
  <LI id=MenuMall><A 
  href="{$Hope_SitUrl$}shop.aspx" 
  target=_top><SPAN>������ҵ</SPAN></A> </LI>
  <LI id=MenuSecondHand><A 
  href="{$Hope_SitUrl$}Productlist.aspx?distype=6" 
  target=_top><SPAN>��������</SPAN></A> </LI>
  <LI id=MenuSale><A 
  href="Hotsell.aspx" 
  target=_top><SPAN>�ȵ���Ʒ</SPAN></A> </LI>
  <LI id=MenuInfo>
  <UL>
    <LI id=MenuDigital><A 
    href="{$Hope_SitUrl$}Productlist.aspx?classid=14" 
    target=_top><SPAN>�ֻ�����</SPAN></A> </LI>
    <LI id=MenuLady><A 
    href="{$Hope_SitUrl$}Productlist.aspx?classid=1" 
    target=_top><SPAN>Ů����Ʒ</SPAN></A> </LI>
    <LI id=MenuMan><A 
    href="{$Hope_SitUrl$}Productlist.aspx?classid=23" 
    target=_top><SPAN>������Ʒ</SPAN></A> </LI>
    <LI id=MenuSport><A 
    href="{$Hope_SitUrl$}Productlist.aspx?classid=19" 
    target=_top><SPAN>�˶���Ʒ</SPAN></A> </LI>
    <LI id=MenuLife><A 
    href="{$Hope_SitUrl$}Productlist.aspx?classid=21" 
    target=_top><SPAN>�Ҿ���Ʒ</SPAN></A> </LI>
    <LI id=MenuBaby><A 
    href="{$Hope_SitUrl$}Productlist.aspx?classid=26" 
    target=_top><SPAN>����</SPAN></A> </LI>
    <LI id=MenuCulture><A 
    href="{$Hope_SitUrl$}Productlist.aspx?classid=6" 
    target=_top><SPAN>Ӱ���鼮</SPAN></A> </LI>
    <LI id=MenuGame><A 
    href="{$Hope_SitUrl$}Productlist.aspx?classid=13" 
    target=_top><SPAN>��Ϸ</SPAN></A> </LI>
    <LI id=MenuLottery><A 
    href="{$Hope_SitUrl$}Productlist.aspx?classid=2" 
    target=_top><SPAN>��������</SPAN></A> </LI>
</UL></LI></UL>
<DIV id=SearchBox>
<DIV id=SearchInnerBox>
<DIV id=SearchHome>
<DIV id=SearchForm>
<form name=topsearch action="Productlist.aspx" onSubmit="return checkkeyword()"  method="method" style="margin:0px">
<SELECT id=keywordtype onchange=changeClass(this.value) name=keywordtype> 
  <OPTION value=product selected>������Ʒ</OPTION> 
  <OPTION value=shop>��������</OPTION> 
  <OPTION value=nick>��������</OPTION> 
  <OPTION value=info>������Ѷ</OPTION> 
</SELECT> 
<input type="hidden" value="0" name=SearchKind>
<input type="hidden" value="" name=SearchText>
<INPUT class=findInto id=keyword name=keyword> 
<span id=proclass>
                      <!--       #begin           -->
                      {$Hope_ClassName$}
                      <!--        #end          -->
</span>
<span id=newclass style="display:none">
                      <!--       #begin           -->
                      {#Hope_ArticleBigClass*62#}
                      <!--        #end          -->
</span>
<button type="submit"  OnClick="Verify" />�� ��</BUTTON> 
<A href="{$Hope_SitUrl$}HighlevelSearch.aspx" target=_top>[ �߼����� ]</A> 
<A href="/HELP" 
target=_blank>[ ʹ�ð��� ]</A> 
</FORM>

  

<script language="javascript">
function changeClass(str){
	if(str=="product"){
		document.topsearch.action='Productlist.aspx';
		document.getElementById("proclass").style.display="";
		document.getElementById("newclass").style.display="none";
	}else if (str=="shop"){
		document.topsearch.action='shop_search.aspx'
		document.getElementById("proclass").style.display="";
		document.getElementById("newclass").style.display="none";
	}else if (str=="nick"){
		document.topsearch.action='shop_search.aspx'
		document.getElementById("proclass").style.display="";
		document.getElementById("newclass").style.display="none";
	}else if (str=="info"){
		document.topsearch.action='News/search.aspx'
		document.getElementById("proclass").style.display="none";
		document.getElementById("newclass").style.display="";
	}
}
function checkkeyword(){
	if(document.topsearch.keyword.value==""){
		alert("�����������ؼ���");
		document.topsearch.keyword.focus();
		return false;
	}
	document.topsearch.SearchText.value=document.topsearch.keyword.value;
	
}
</SCRIPT>
</DIV>
<DIV id=HotKeywords>
<UL>
  <LI class=B><A href="#" 
  target=_blank>��������</A>�� </LI>
  <LI><A 
  href="{$Hope_SitUrl$}Productlist.aspx?keyword=mp3" 
  target=_blank>mp3</A> </LI>
  <LI><A 
  href="{$Hope_SitUrl$}Productlist.aspx?keyword=ŮЬ" 
  target=_blank>ŮЬ</A> </LI>
  <LI><A 
  href="{$Hope_SitUrl$}Productlist.aspx?keyword=�ֻ�" 
  target=_blank>�ֻ�</A> </LI>
  <LI><A 
  href="{$Hope_SitUrl$}Productlist.aspx?keyword=�Ȼ���" 
  target=_blank>�Ȼ���</A> </LI>
  <LI><A 
  href="{$Hope_SitUrl$}Productlist.aspx?keyword=ħ������" 
  target=_blank>ħ������</A> </LI>
  <LI><A 
  href="{$Hope_SitUrl$}Productlist.aspx?keyword=�ڴ�" 
  target=_blank>�ڴ�</A> </LI>
  <LI><A 
  href="{$Hope_SitUrl$}Productlist.aspx?keyword=��������" 
  target=_blank>��������</A> </LI>
  <LI><A 
  href="{$Hope_SitUrl$}Productlist.aspx?keyword=�ű�����" 
  target=_blank>�ű�����</A> </LI>
  <LI><A 
  href="{$Hope_SitUrl$}Productlist.aspx?keyword=�ؼۻ�Ʊ" 
  target=_blank>�ؼۻ�Ʊ</A> </LI>
  <LI><A 
  href="{$Hope_SitUrl$}Productlist.aspx?keyword=����ȹ" 
  target=_blank>����ȹ</A> </LI>
  <LI><A 
  href="{$Hope_SitUrl$}Productlist.aspx?keyword=ɳ̲��" 
  target=_blank>ɳ̲��</A> </LI>
  <LI><A 
  href="{$Hope_SitUrl$}Productlist.aspx?keyword=��ɹ˪" 
  target=_blank>��ɹ˪</A> </LI>
  <LI><A 
  href="{$Hope_SitUrl$}Productlist.aspx?keyword=�������" 
  target=_blank>�������</A> </LI>
  <LI><A 
  href="{$Hope_SitUrl$}Productlist.aspx?keyword=ɳ��" 
  target=_blank>ɳ��</A> 
</LI></UL></DIV></DIV></DIV></DIV>








</body>
</html>
