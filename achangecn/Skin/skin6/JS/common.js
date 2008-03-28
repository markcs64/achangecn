
var wangwangInstalled=false;try{if(!wangwangInstalled){var obj=new ActiveXObject("WangWangX.WangWangObj");if(obj){wangwangInstalled=true;delete obj;}}}catch(e){}
try{if(!wangwangInstalled){var mimetype=navigator.mimeTypes["application/ww-plugin"];if(mimetype){plugin=mimetype.enabledPlugin
if(plugin){document.write('<embed id="chk_ww" name="chk_ww" type="application/ww-plugin" width="1" height="1" hidden="true" />');wangwangInstalled=document.getElementById("chk_ww").isInstalled(0);}}}}catch(e){}
var exitpop=false;function PopPage(strURL,name,width,height,left,top)
{if(width==null)width=800;if(height==null)height=500;if(left==null)left=(screen.width-width)/2;if(top==null)top=(screen.height-height)/2;temp="width="+width+",height="+height+",left="+left+",top="+top+",scrollbars=1,toolbar=no,location=no,directories=no,status=no,resizable=no";w=window.open(strURL,name,temp);w.focus();}
function openThisAbout()
{temp="width=618,height=400,left=0,top=0,scrollbars=yes,toolbar=no,location=no,directories=no,status=no,resizable=no";window.open("/home/about/about_taobao.html","",temp);}
function GetCookie(cookiename)
{var thebigcookie=document.cookie;var firstchar=thebigcookie.indexOf(cookiename);if(firstchar!=-1){firstchar+=cookiename.length+1;lastchar=thebigcookie.indexOf(";",firstchar);if(lastchar==-1)lastchar=thebigcookie.length;return unescape(thebigcookie.substring(firstchar,lastchar));}
return"";}
function setCookie(cookiename,cookievalue,cookieexpdate,domainname)
{document.cookie=cookiename+"="+cookievalue
+"; domain="+domainname
+"; path="+"/"
+"; expires="+cookieexpdate.toGMTString();}
function unloadpopup(cookiename,popurl,popwidth,popheight,domainname,tr)
{try{if(!tr)
return;if(GetCookie(cookiename)=="")
{var expdate=new Date();expdate.setTime(expdate.getTime()+1*(24*60*60*1000));setCookie(cookiename,"yes",expdate,domainname);if(exitpop)
{w=window.open(popurl,cookiename,"width="+popwidth+",height="+popheight+",scrollbars=1,toolbar=yes,location=yes,menubar=yes,status=yes,resizable=yes");w.focus;}}}catch(e){}}
function setCheckboxes(theForm,elementName,isChecked)
{var chkboxes=document.forms[theForm].elements[elementName];var count=chkboxes.length;if(count)
{for(var i=0;i<count;i++)
{chkboxes[i].checked=isChecked;}}
else
{chkboxes.checked=isChecked;}
return true;}
var imageObject;function ResizeImage(obj,MaxW,MaxH)
{if(obj!=null)imageObject=obj;var state=imageObject.readyState;if(state!='complete'){setTimeout("ResizeImage(null,"+MaxW+","+MaxH+")",50);return;}
var oldImage=new Image();oldImage.src=imageObject.src;var dW=oldImage.width;var dH=oldImage.height;if(dW>MaxW||dH>MaxH){a=dW/MaxW;b=dH/MaxH;if(b>a)a=b;dW=dW/a;dH=dH/a;}
if(dW>0&&dH>0){imageObject.width=dW;imageObject.height=dH;}}
function GetExCookie(cookiename){var thebigcookie=document.cookie;var firstchar=thebigcookie.indexOf(cookiename+"=");if(firstchar!=-1){firstchar+=cookiename.length+1;lastchar=thebigcookie.indexOf(";",firstchar);if(lastchar==-1)lastchar=thebigcookie.length;return unescape(thebigcookie.substring(firstchar,lastchar));}
return"";}
function setExCookie(cookiename,cookievalue,cookieexpdate,domainname){document.cookie=cookiename+"="+cookievalue
+"; domain="+domainname
+"; path="+"/"
+"; expires="+cookieexpdate.toGMTString();}
function $c(type,id,parent){var el=null;if(document.createElementNS){el=document.createElementNS("http://www.w3.org/1999/xhtml",type);}else{el=document.createElement(type);}
if(typeof parent!="undefined"){parent.appendChild(el);}
if(typeof id!="undefined"){el.id=id;}
return el;}
function loc(u){var d=new Date();var t=d.getMilliseconds();if(u.indexOf('?')>=0)u+='&t='+t;else u+='?t='+t;window.location=u;}
function floc(u,target){u=u.unescapeHTML();var id='loc_form_tmp';var f=$(id);if(!f){f=$c('form',id,document.body);}
if(!target)target='';f.target=target;f.action=u;f.method='get';if(u.indexOf('?')>=0){var t=u.split('?')[1];var ts=t.split('&');if(ts&&ts.length>0){for(var i=0;i<ts.length;++i){var tss=ts[i].split('=');if(tss&&tss.length==2){var h=$c('input');h.type='hidden';h.name=tss[0];h.value=tss[1];f.appendChild(h);}}}}
f.submit();}
var abCookieName='ab';var abNum=GetExCookie(abCookieName);if(!abNum||abNum<=0){abNum=parseInt(Math.random()*100);var t=new Date();t.setTime(t.getTime()+1000*60*60*24*30);document.cookie=abCookieName+'='+abNum+';expires='+t.toGMTString();}
function selectAll(name){var es=document.getElementsByTagName('input');for(var k=0;k<es.length;++k){var e=es[k];if(e.type&&e.type.toUpperCase()=='CHECKBOX'&&e.name==name){e.checked=true;}}}
function reverseSelect(name){var es=document.getElementsByTagName('input');for(var k=0;k<es.length;++k){var e=es[k];if(e.type&&e.type.toUpperCase()=='CHECKBOX'&&e.name==name){e.checked=!e.checked;}}}
function gotoPage(id){var jumpto=$(id);var tpage=getInt(jumpto.getAttribute('tpage'));var page=getInt(jumpto.getAttribute('page'));var newPage=parseInt(jumpto.value);if(isNaN(newPage))newPage=page;var msg=jumpto.getAttribute('msg');if(newPage>tpage||newPage<1){if(msg)alert(msg);}else if(newPage!=page){var link=jumpto.getAttribute('lk').replace('page=9999','page='+newPage);if(link.indexOf('javascript:')==0){link=link.substring(11);eval(link);}else{loc(link);}}}
function gotoPageDelegate(e){if(!e)var e=event;var o=e.target||e.srcElement;var c=e.keyCode;if(c==13){gotoPage(o.id);return stopEvent(e);}}
function getSelectCount(name){var es=document.getElementsByTagName('input');var count=0;for(var i=0;i<es.length;++i){var e=es[i];if(e.type&&e.type.toUpperCase()=='CHECKBOX'&&e.name==name&&e.checked){count++;}}
return count;}
function isPrice(a){var regex=/^([0-9]+|[0-9]{1,3}(,[0-9]{3})*)(\.[0-9]{0,2})?$/;return regex.test(a);}
function trim(s){return s.replace(/(^\s+)|(\s+$)/g,'');}
function unescapeHTML(s){s=s.replace(/&nbsp;/g,' ');s=s.replace(/&lt;/g,'<');s=s.replace(/&gt;/g,'>');s=s.replace(/&amp;/g,'&');s=s.replace(/&quot;/g,'"');return s;}
function escapeHTML(s){s=s.replace(/&/g,'&amp;');s=s.replace(/ /g,'&nbsp;');s=s.replace(/</g,'&lt;');s=s.replace(/>/g,'&gt;');s=s.replace(/\"/g,'&quot;');return s;}
if(!String.prototype.trim){String.prototype.trim=function(){return trim(this);}}
if(!String.prototype.escapeHTML){String.prototype.escapeHTML=function(){return escapeHTML(this);}}
if(!String.prototype.unescapeHTML){String.prototype.unescapeHTML=function(){return unescapeHTML(this);}}
function byteLength(str){var len=0;for(var i=0;i<str.length;i++){if(str.charCodeAt(i)>255){len+=2;}else{len++;}}
return len;}
if(!String.prototype.byteLength){String.prototype.byteLength=function(){return byteLength(this);}}
function getInt(o,d){if(!d)d=0;o=parseInt(o);if(isNaN(o))o=d;return o;}
function getFloat(o,d){if(!d)d=0.0;o=parseFloat(o);if(isNaN(o))o=d;return o;}
function addEvent(el,evname,func){if(el.attachEvent){el.attachEvent("on"+evname,func);}else if(el.addEventListener){el.addEventListener(evname,func,true);}else{el["on"+evname]=func;}}
function removeEvent(el,evname,func){if(el.detachEvent){el.detachEvent("on"+evname,func);}else if(el.removeEventListener){el.removeEventListener(evname,func,true);}else{el["on"+evname]=null;}}
function stopEvent(ev){ev||(ev=window.event);if(document.all&&window.event){ev.cancelBubble=true;ev.returnValue=false;}else{ev.preventDefault();ev.stopPropagation();}
return false;}
function mergeTemplate(template,context){for(var k in context){for(var i=0;i<100;++i){if(template.search('var_'+k+'_')!=-1){template=template.replace('var_'+k+'_',context[k]);}else{break;}}
for(var i=0;i<100;++i){if(template.search('{'+k+'}')!=-1){template=template.replace('{'+k+'}',context[k]);}else{break;}}}
return template;}
function getTemplate(id){var e=$(id);if(!e)return'';var s=e.innerHTML;if(!s)return'';return s.replace('<!--','').replace('-->','');}
function $(){var elements=new Array();for(var i=0;i<arguments.length;i++){var element=arguments[i];if(typeof element=='string')
element=document.getElementById(element);if(arguments.length==1)
return element;elements.push(element);}
return elements;}
if(!Array.prototype.push){Array.prototype.push=function(){var startLength=this.length;for(var i=0;i<arguments.length;i++)
this[startLength+i]=arguments[i];return this.length;}}
function isArrayEmpty(oArray)
{var empty=true;if(oArray)
{for(var k in oArray){empty=false;break;}}
return empty;}
document.getElementsByIdRegex=function(r,ele){if(!ele)ele=document;var children=ele.getElementsByTagName('*')||ele.all;var elements=new Array();var reg=new RegExp(r);for(var i=0;i<children.length;i++){var child=children[i];var id=child.id;if(id){try{if(id.match(reg)){elements.push(child);}}catch(e){}}}
return elements;}
function getFormElement(fid,fname){var f=$(fid);if(!f)f=document.forms[fid];if(!f)return false;var e=new Array();for(var i=0;i<f.elements.length;++i){var ee=f.elements.item(i);if(ee&&ee.name&&ee.name==fname){e.push(ee);}}
if(e.length==1)return e[0];if(e.length==0)return false;return e;}
function jsEncode(str){if(!str){return'';}
return encodeURIComponent(str);}
function jsDecode(str){return decodeURIComponent(str);}
function serializerForm(fname){var f=$(fname)||document.forms[fname];if(!f)return'';var s=''
for(var i=0;i<f.elements.length;++i){var e=f[i];if(!e.name)continue;var name=e.name;var value=null;if(e.tagName.toLowerCase()=='textarea'){value=e.value||e.innerHTML;}else if(e.tagName.toLowerCase()=='select'){if(!e.options[e.selectedIndex])continue;value=e.options[e.selectedIndex].value;}else if(e.tagName.toLowerCase()=='input'){switch(e.type.toLowerCase()){case'submit':case'hidden':case'password':case'text':value=e.value;break;case'checkbox':case'radio':if(!e.checked)continue;value=e.value;break;default:continue;}}
s+=e.name+'='+jsEncode(value)+'&';}
return s;}
function utf8(wide){var c,s;var enc='';var i=0;while(i<wide.length){c=wide.charCodeAt(i++);if(c>=0xDC00&&c<0xE000){continue;}
if(c>=0xD800&&c<0xDC00){if(i>=wide.length){continue;}
s=wide.charCodeAt(i++);if(s<0xDC00||c>=0xDE00){continue;}
c=((c-0xD800)<<10)+(s-0xDC00)+0x10000;}
if(c<0x80){enc+=String.fromCharCode(c);}else if(c<0x800){enc+=String.fromCharCode(0xC0+(c>>6),0x80+(c&0x3F));}else if(c<0x10000){enc+=String.fromCharCode(0xE0+(c>>12),0x80+(c>>6&0x3F),0x80+(c&0x3F));}else{enc+=String.fromCharCode(0xF0+(c>>18),0x80+(c>>12&0x3F),0x80+(c>>6&0x3F),0x80+(c&0x3F));}}
return enc;}
var hexchars="0123456789ABCDEF";var okURIchars="ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789_-";function toHex(n){return hexchars.charAt(n>>4)+hexchars.charAt(n&0xF);}
function encodeURIComponentNew(s){var s=utf8(s);var c;var enc='';for(var i=0;i<s.length;i++){if(okURIchars.indexOf(s.charAt(i))==-1)
enc+='%'+toHex(s.charCodeAt(i));else
enc+=s.charAt(i);}
return enc;}
if(encodeURIComponent){}else{function encodeURIComponent(s){return encodeURIComponentNew(s);}}
function getDocumentWidth(){var contentWidth;if(window.innerHeight){contentWidth=window.innerWidth-6;}else if(document.documentElement.clientWidth){contentWidth=document.documentElement.clientWidth;}else{contentWidth=document.body.clientWidth;}
return contentWidth;}
function getDocumentHeight(){var contentHeight;if(window.innerHeight){contentHeight=window.innerHeight-6;}else if(document.documentElement.clientHeight){contentHeight=document.documentElement.clientHeight;}else{contentHeight=document.body.clientHeight;}
return contentHeight;}
function getAvailableHeight(obj,calBrother,calParent){if(obj.parentNode&&obj.parentNode.tagName&&obj.parentNode.tagName.toLowerCase()!='html'){var y;if(calParent){if(obj.parentNode.style&&obj.parentNode.style.height){y=obj.parentNode.style.height.toLowerCase().split('px')[0];}else{y=obj.parentNode.offsetHeight;}}else{y=getDocumentHeight()-findPosY(obj.parentNode);}
if(!calBrother)return y;var brothers=obj.parentNode.childNodes;var b;for(var i=0;i<brothers.length;i++){b=brothers[i];if(b!=obj&&b.nodeType==1&&!(b.style&&b.style.display&&b.style.display=='none')&&b.tagName.toLowerCase()!='script'&&b.tagName.toLowerCase()!='style'){if(b.innerHTML!=''){y-=b.offsetHeight;}}}
return y;}else{return null}}
function findPosX(obj)
{var curleft=0;if(obj.offsetParent){while(obj.offsetParent){curleft+=obj.offsetLeft
obj=obj.offsetParent;}}
else if(obj.x)
curleft+=obj.x;return curleft;}
function findPosY(obj)
{var curtop=0;if(obj.offsetParent){while(obj.offsetParent){curtop+=obj.offsetTop
obj=obj.offsetParent;}}
else if(obj.y)
curtop+=obj.y;return curtop;}
function clipOverHeight(ele){if(getBodyElement().offsetHeight>getDocumentHeight()&&ele.style.height){var temp=ele.style.height.split('px')[0]-(getBodyElement().offsetHeight-getDocumentHeight());if(temp>0){ele.style.height=temp+'px';}}}
function filterEnterKey(e){if(!e)e=event;if(!e)return;if(e.keyCode&&e.keyCode==13){return stopEvent(e);}}
var nick=GetExCookie('_nk_');var tracenick=GetExCookie('tracknick');var myString=new String(nick);var rExp=/\\u/g;nick=unescape(myString.replace(rExp,"%u"));myString=new String(tracenick);tracenick=unescape(myString.replace(rExp,"%u"));window.onerror=function(sMsg,sUrl,sLine){return false;}