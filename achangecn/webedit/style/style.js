
config.StyleUploadDir = "uploadfile/";
config.InitMode = "EDIT";
config.AutoDetectPasteFromWord = "1";
config.BaseUrl = "1";
config.BaseHref = "";
config.AutoRemote = "0";
config.ShowBorder = "0";
config.StateFlag = "1";
config.AutoDetectLanguage = "1";
config.DefaultLanguage = "zh-cn";
config.AllowBrowse = "0";

function showToolbar(){

	document.write ("<table border=0 cellpadding=0 cellspacing=0 width='100%' class='Toolbar' id='eWebEditor_Toolbar'><tr><td><div class=yToolbar><DIV CLASS=TBHandle></DIV><SELECT CLASS=TBGen onchange=\"format('FormatBlock',this[this.selectedIndex].value);this.selectedIndex=0\">"+lang["FormatBlock"]+"</SELECT><SELECT CLASS=TBGen onchange=\"format('fontname',this[this.selectedIndex].value);this.selectedIndex=0\">"+lang["FontName"]+"</SELECT><SELECT CLASS=TBGen onchange=\"format('fontsize',this[this.selectedIndex].value);this.selectedIndex=0\">"+lang["FontSize"]+"</SELECT><DIV CLASS=Btn TITLE='"+lang["Bold"]+"' onclick=\"format('bold')\"><IMG CLASS=Ico SRC='buttonimage/bold.gif'></DIV><DIV CLASS=Btn TITLE='"+lang["Italic"]+"' onclick=\"format('italic')\"><IMG CLASS=Ico SRC='buttonimage/italic.gif'></DIV><DIV CLASS=Btn TITLE='"+lang["UnderLine"]+"' onclick=\"format('underline')\"><IMG CLASS=Ico SRC='buttonimage/underline.gif'></DIV><DIV CLASS=TBSep></DIV><DIV CLASS=Btn TITLE='"+lang["JustifyLeft"]+"' onclick=\"format('justifyleft')\"><IMG CLASS=Ico SRC='buttonimage/justifyleft.gif'></DIV><DIV CLASS=Btn TITLE='"+lang["JustifyCenter"]+"' onclick=\"format('justifycenter')\"><IMG CLASS=Ico SRC='buttonimage/justifycenter.gif'></DIV><DIV CLASS=Btn TITLE='"+lang["JustifyRight"]+"' onclick=\"format('justifyright')\"><IMG CLASS=Ico SRC='buttonimage/justifyright.gif'></DIV><DIV CLASS=Btn TITLE='"+lang["JustifyFull"]+"' onclick=\"format('JustifyFull')\"><IMG CLASS=Ico SRC='buttonimage/justifyfull.gif'></DIV></div></td></tr><tr><td><div class=yToolbar><DIV CLASS=TBHandle></DIV><DIV CLASS=Btn TITLE='"+lang["UnDo"]+"' onclick=\"goHistory(-1)\"><IMG CLASS=Ico SRC='buttonimage/undo.gif'></DIV><DIV CLASS=Btn TITLE='"+lang["ReDo"]+"' onclick=\"goHistory(1)\"><IMG CLASS=Ico SRC='buttonimage/redo.gif'></DIV><DIV CLASS=TBSep></DIV><DIV CLASS=Btn TITLE='"+lang["OrderedList"]+"' onclick=\"format('insertorderedlist')\"><IMG CLASS=Ico SRC='buttonimage/insertorderedlist.gif'></DIV><DIV CLASS=Btn TITLE='"+lang["UnOrderedList"]+"' onclick=\"format('insertunorderedlist')\"><IMG CLASS=Ico SRC='buttonimage/insertunorderedlist.gif'></DIV><DIV CLASS=Btn TITLE='"+lang["Indent"]+"' onclick=\"format('indent')\"><IMG CLASS=Ico SRC='buttonimage/indent.gif'></DIV><DIV CLASS=Btn TITLE='"+lang["Outdent"]+"' onclick=\"format('outdent')\"><IMG CLASS=Ico SRC='buttonimage/outdent.gif'></DIV><DIV CLASS=TBSep></DIV><DIV CLASS=Btn TITLE='"+lang["ForeColor"]+"' onclick=\"showDialog('selcolor.htm?action=forecolor', true)\"><IMG CLASS=Ico SRC='buttonimage/forecolor.gif'></DIV><DIV CLASS=Btn TITLE='"+lang["BgColor"]+"' onclick=\"showDialog('selcolor.htm?action=bgcolor', true)\"><IMG CLASS=Ico SRC='buttonimage/bgcolor.gif'></DIV><DIV CLASS=Btn TITLE='"+lang["BackColor"]+"' onclick=\"showDialog('selcolor.htm?action=backcolor', true)\"><IMG CLASS=Ico SRC='buttonimage/backcolor.gif'></DIV><DIV CLASS=TBSep></DIV><DIV CLASS=TBSep></DIV><DIV CLASS=TBSep></DIV><DIV CLASS=Btn TITLE='"+lang["Fieldset"]+"' onclick=\"showDialog('fieldset.htm', true)\"><IMG CLASS=Ico SRC='buttonimage/fieldset.gif'></DIV><DIV CLASS=Btn TITLE='"+lang["HorizontalRule"]+"' onclick=\"format('InsertHorizontalRule')\"><IMG CLASS=Ico SRC='buttonimage/inserthorizontalrule.gif'></DIV><DIV CLASS=Btn TITLE='"+lang["CreateLink"]+"' onclick=\"createLink()\"><IMG CLASS=Ico SRC='buttonimage/createlink.gif'></DIV><DIV CLASS=Btn TITLE='"+lang["Unlink"]+"' onclick=\"format('UnLink')\"><IMG CLASS=Ico SRC='buttonimage/unlink.gif'></DIV><DIV CLASS=TBSep></DIV><DIV CLASS=Btn TITLE='"+lang["Symbol"]+"' onclick=\"showDialog('symbol.htm', true)\"><IMG CLASS=Ico SRC='buttonimage/symbol.gif'></DIV></div></td></tr></table>");

}