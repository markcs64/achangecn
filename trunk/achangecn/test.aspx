<%@ Page Language="C#" ContentType="text/html" ResponseEncoding="gb2312" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>�ޱ����ĵ�</title>
<link type="text/css" rel="stylesheet" href="Skin/skin5/CSS/v2.1.css" />


</head>
<body>

<DIV id=Head  style="BACKGROUND: url({$Hope_SitUrl$}{$Hope_Skin$}/IMAGES/headCap.gif) #fff repeat-x; HEIGHT: 80px;">
<DIV class=header960>
<DIV class=utility>
<SCRIPT type=text/javascript>	 
						document.write("<div style=\"float:left;font: 1em/180% arial;\"><a href=\"javascript:void(0)\" onClick=\"style.behavior='url(#default#homepage)';setHomePage('http://www.achange.cn/');\">��Ϊ��ҳ</a>&nbsp;|&nbsp;</div>");
						document.write("<div style=\"float:left;font: 1em/180% arial;\">&nbsp;<a  href=\"javascript:void(0)\" onclick=\"window.external.AddFavorite('http://www.achange.cn','������ҵ����')\" >�����ղ�</a></div>");
</SCRIPT>
<div id="login_stat">
<iframe src="{$Hope_SitUrl$}Login_Stat.aspx" class="login" frameborder="0" width="200" height="22" scrolling="no" ></iframe>
</div>
</DIV>



<DIV id="Logo"><A href="http://www.achange.cn/" ><img src="Skin/skin5/IMAGE/Logo.jpg" alt="������ҵ������" border="0" /></A></DIV>

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
  <LI><A href="http://trademanager.achange.cn/">���ｻ�׹���</A></LI>
  <LI id=AdvanceBox>

  </LI>
 </UL>
</DIV>
  
  
</DIV>
  
   
<div class=frameA id=page960>
  <div class=aliSearch>
    <ul>
      <li class=current><a onclick="changeSearchType('sell',this);" 
  href="javascript:void(0);">���Ｏ��</a> </li>
      <li><a onclick="changeSearchType('product',this);" 
  href="javascript:void(0);">��Ҫ����</a> </li>
  <li><a onclick="changeSearchType('news',this);" 
  href="javascript:void(0);">������Ѷ</a> </li>
  <li><a onclick="changeSearchType('xueyuan',this);" 
  href="javascript:void(0);">����ѧԺ</a> </li>
      <li><a onclick="changeSearchType('company',this);" 
  href="javascript:void(0);">������ҵ</a> </li>
      <li><a onclick="changeSearchType('buy',this);" 
  href="javascript:void(0);">��������</a> </li>
      <li><a href="javascript:location.href='http://tradeshow.alibaba.com/';">�ȵ���Ʒ</a> </li>
	  
    </ul>
    <div class=searchBox>
      <form name=topsearch action="Productlist.aspx" onSubmit="return checkkeyword()"  method="method" style="margin:0px">
<SELECT id=keywordtype onchange=changeClass(this.value) name=keywordtype> 
  <OPTION value=product selected>������Ʒ</OPTION> 
  <OPTION value=shop>������ҵ</OPTION> 
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
<INPUT class="buttonSkinA" style="PADDING-RIGHT: 4px; PADDING-LEFT: 4px; PADDING-BOTTOM: 1px; MARGIN: 0px -5px; FONT: bold 12px arial; PADDING-TOP: 1px" type="submit" OnClick="Verify"  value="�� ��" border=0 />
<A href="{$Hope_SitUrl$}HighlevelSearch.aspx" target=_top>[ �߼����� ]</A> 
<A href="/HELP" 
target=_blank>[ ʹ�ð��� ]</A> 
</FORM>
</div>
  </div>
  <div class=homePopSearch><strong>��������:</strong><a href="#">MP5</a> ,</div>
</div>
</DIV>
</body>
</html>
