<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<HTML xmlns="http://www.w3.org/1999/xhtml">
<HEAD>
<TITLE>{$Hope_Title$}</TITLE>
<META http-equiv=keywords content={$Hope_KeysWord$} />
<meta name="description" content="{$Hope_SiteExc$}" />
<link rel="stylesheet" href="{$Hope_SitUrl$}{$Hope_Skin$}CSS/v2.0.css" type="text/css">
<link rel="stylesheet" href="{$Hope_SitUrl$}{$Hope_Skin$}CSS/layout.css" type="text/css">
<link rel="stylesheet" href="{$Hope_SitUrl$}{$Hope_Skin$}CSS/component.css" type="text/css">
<link rel="stylesheet" href="{$Hope_SitUrl$}{$Hope_Skin$}CSS/frontpage_v2.css" type="text/css">
<SCRIPT src="{$Hope_SitUrl$}{$Hope_Skin$}JS/yui-utilities.js" type=text/javascript></SCRIPT>
<SCRIPT src="{$Hope_SitUrl$}{$Hope_Skin$}JS/tbra.js" type=text/javascript></SCRIPT>
<SCRIPT src="{$Hope_SitUrl$}{$Hope_Skin$}JS/common.js" type=text/javascript></SCRIPT>
<SCRIPT src="{$Hope_SitUrl$}{$Hope_Skin$}JS/top_new.js" type=text/javascript></SCRIPT>
<script type=text/javascript src="{$Hope_SitUrl$}{$Hope_Skin$}JS/ad.js"></script>
</HEAD>
<BODY class="W950 CurHome">
{$Hope_Top$} 
<DIV class=L250 id=Content>

<DIV style="POSITION: relative">

<DIV style="BACKGROUND: url({$Hope_SitUrl$}{$Hope_Skin$}IMAGE/qiang.gif) no-repeat 0px 0px; LEFT: 135px; WIDTH: 45px; TEXT-INDENT: -9999px; POSITION: absolute; TOP: -130px; HEIGHT: 34px">��</DIV>
</DIV>

<SCRIPT type=text/javascript>
		HeadLineDL = {
			i: 0,
			dl: document.getElementById('HeadLines').getElementsByTagName('dl')[0],
			x: function(dt) {
				var dts = this.dl.getElementsByTagName('dt');
				for (var i = 0; i < dts.length; i++) {
					dts[i].className = dts[i].className.replace(/\s*hover/, '');
					if (dts[i] == dt) this.i = i;
				}
				dt.className += ' hover';
				
				var dds = this.dl.getElementsByTagName('dd');
				for (var i = 0; i < dds.length; i++) {
					dds[i].style.display = 'none';
				}
				var dd = dt.nextSibling;
				while (dd.nodeType != 1) {
					dd = dd.nextSibling;
				}
				dd.style.display = 'block';
			},
			init: function() {
				var dts = this.dl.getElementsByTagName('dt');
				var parse = false;
				this.dl.onmouseover = function() {parse = true};
				this.dl.onmouseout = function() {parse = false};
				for (var i = 0; i < dts.length; i++) {
					dts[i].onmouseover = function(e) {
						var ev = !e ? window.event : e;
						var t = ev.srcElement || e.target;
						HeadLineDL.x(t);
					}
				}
				this.x(dts[0]);
				setInterval(function() {
					if (parse) return;
					HeadLineDL.x(dts[++HeadLineDL.i % 6]);
				}, 5000);
			}
		}
		HeadLineDL.init();
		</SCRIPT>

<DIV class=colL>
<DIV class=openCategory id=openCategory style=" display:none; Z-INDEX: 99999; POSITION: absolute">
</DIV>

<DIV id=indexMain>

<DIV id=dcontent>

<DIV id=ad_Bulletin>

<DIV class=Bulletin>
<H2>���﹫��</H2>
<DIV class=listBulletin>
<P class=Pic><script src="Include/Ad/taobao_index_left_top_inform.JS" type="text/jscript"></script></P>
<UL style="padding-top:6px;">{#Hope_Article*1,6,12,34,0,0,62#} 
</UL>

</DIV>
</DIV>

<DIV class=AD_banner>
<div class="focusPic " id=focusPic>
<script language="JavaScript">
document.write('<DIV class=focusPicNum>');
for (i=1;i<num_pic+1;i++ )
{
document.write('<A href=javascript:setFocus1('+i+');><IMG height=13 src='+focusPicNumSrc+'/num_0'+i+'off.gif width=21 hspace=2 border=0 name=fi_'+i+'></A>');
}
document.write('</DIV>');
document.write('<a id=PicLink href="javascript:goUrl()"><img src="'+imgUrl[1]+'" width=445  name=imgInit height="180" border="0" style="FILTER: revealTrans(duration=2,transition=6)"></a>');
document.images.imgInit.src=imgUrl[1];
</script>
</div>		

</DIV>
</DIV>
<DIV class=winstyle2>
<DIV id=alltype_title>
<UL>
<LI class=alltype>ȫ����Ʒ���</LI>
<LI class=addProducts>
<A href="vipuser/YX_sell.aspx" target=_parent>������Ʒ</A></LI>
</UL>
</DIV>
<DIV class=todaysnew>
<H4>���¶�̬</H4>
<DIV class=section>
<DIV class=live>
<SCRIPT language=javascript type=text/javascript>
var timer;           //��ʱ������
var amount = 2;      //�ٶȱ�����Ĭ��ֵΪ2
var stoped = false;
function initMarquee(marId){
	if(document.getElementById(marId)){
		if ((navigator.appName == "Microsoft Internet Explorer") && (parseInt(navigator.appVersion) >= 3)){		
		   document.getElementById(marId).scrollAmount=document.getElementById(marId).clientWidth;
		 }
		 else{
		   document.getElementById(marId).scrollAmount=amount;
		 }		 
	}
}
/**
 * ��ʼ������ͬʱ�����ʱ��
 * marId marquee�����id
 */		
function startMarquee(marId){
    var marObj = document.getElementById(marId);
    marObj.scrollAmount = amount;
    marObj.start(); 
    clearTimeout(timer);  
    stoped = true;
    marObj.onscroll=function(){scrolling(this);};
}
/**
 * ��������
 * �ѳ�ʼ�ٶ��趨�����ʹ��marquee���￪ʼ�ͳ����������ݣ�
 * Ȼ�󽫳�ʼ״̬�����ض�ʱ����ٿ�ʼ����
 * marObj marquee����
 * waitTime ��ʼ״̬����ʱ��
 */		
function scrollMarquee(marObj, waitTime){	
	if(!stoped && marObj.scrollLeft <= marObj.clientWidth){
	   marObj.stop();	     
	   timer = setTimeout("startMarquee('"+marObj.id+"')", waitTime);
	}
}
function scrolling(marObj){	 
	marObj.stop();
	marObj.scrollAmount = amount;
	marObj.start();
 
}
</SCRIPT>

<MARQUEE id=sellleads onmouseover=this.stop() onscroll="scrollMarquee(this, 1500)" onmouseout=scrolling(this) width="100%">

</MARQUEE>



<SCRIPT language=javascript type=text/javascript> 
initMarquee("sellleads");     
</SCRIPT>
</DIV></DIV><A class=more href="">More</A> </DIV>
<DIV class=categorylist>
<DIV class="two column">

{#Hope_ProClassList*2,16,2,0,<IMG src="{$Hope_SitUrl$}{$Hope_Skin$}image/side_bg_04.gif">,bigclassname,classname,2,26#}
</DIV>
</DIV></DIV>

</DIV>
<DIV id=rightbox>
<DIV class="tabsH format3" id=productCycle>
<H3>���¶�̬</H3>

<DIV class=leadsCycle>
<DIV class="column">
<H2><A href="">�����׳�</A></H2>
<UL>
  <LI> </LI>
</UL>

<H2><A href="">��������</A></H2>
<UL>
  <LI> </LI>
</UL>
  </DIV>

</DIV>

<DIV class="box s">

<H2><A href="">�����Ƽ�</A></H2>
</DIV>
</DIV>

<DIV class=bigBuyer><STRONG>��������</STRONG> 

</DIV>

<DIV class="tabsH format3" id=productCycle>
<H3>����ѧԺ</H3>

<DIV class=leadsCycle>


</DIV>

<DIV class="tabsH_bottom"></DIV>
</DIV>

<DIV class="win winHomeB">
<H3>�������</H3>
<DIV class=box> 
</DIV>
</DIV>

<DIV class="win winHomeB">
<H3>��ȫ�������н�</H3>
<DIV class=box 
style="PADDING-RIGHT: 0px; PADDING-LEFT: 0px; BACKGROUND: white; PADDING-BOTTOM: 0px; PADDING-TOP: 0px">
<DIV class=s style="PADDING-RIGHT: 10px; PADDING-LEFT: 120px; BACKGROUND: url({$Hope_Skin$}IMAGES/safecenter.gif) #173763 no-repeat left bottom; PADDING-BOTTOM: 10px; COLOR: white; PADDING-TOP: 10px; HEIGHT: 60px"></DIV>
<DIV class=s style="PADDING-RIGHT: 8px; PADDING-LEFT: 8px; PADDING-BOTTOM: 8px; LINE-HEIGHT: 18px; PADDING-TOP: 8px">  </DIV>
  </DIV>
</DIV>

</DIV>
{$Hope_Bottom$}
</BODY>
</HTML>

