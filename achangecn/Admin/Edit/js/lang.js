
var lang = new Object() ;

var AvailableLangs = new Object() ;
AvailableLangs.TranslatePage = function( targetDocument ){
	var aInputs = targetDocument.getElementsByTagName("INPUT") ;
	for ( i = 0 ; i < aInputs.length ; i++ ){
		if ( aInputs[i].lang )
			aInputs[i].value = lang[ aInputs[i].lang ] ;
	}

	var aSpans = targetDocument.getElementsByTagName("SPAN") ;
	for ( i = 0 ; i < aSpans.length ; i++ ){
		if ( aSpans[i].lang )
			aSpans[i].innerText = lang[ aSpans[i].lang ] ;
	}
	
	var aOptions = targetDocument.getElementsByTagName("OPTION") ;
	for ( i = 0 ; i < aOptions.length ; i++ ){
		if ( aOptions[i].lang )
			aOptions[i].innerText = lang[ aOptions[i].lang ] ;
	}
}


//#####################################
// Toolbar Items
//#####################################

//Edit
lang["EditMenu"]				= "�༭�˵�"
lang["UnDo"]					= "����"
lang["ReDo"]					= "�ָ�"
lang["Cut"]						= "����"
lang["Copy"]					= "����"
lang["Paste"]					= "����ճ��"
lang["PasteText"]				= "���ı�ճ��"
lang["PasteWord"]				= "��Wordճ��"
lang["Delete"]					= "ɾ��"
lang["RemoveFormat"]			= "ɾ�����ָ�ʽ"
lang["SelectAll"]				= "ȫ��ѡ��"
lang["UnSelect"]				= "ȡ��ѡ��"
lang["FindReplace"]				= "�����滻..."

// Font
lang["FontMenu"]				= "����˵�"
lang["Bold"]					= "����"
lang["Italic"]					= "б��"
lang["UnderLine"]				= "�»���"
lang["StrikeThrough"]			= "�л���"
lang["SuperScript"]				= "�ϱ�"
lang["SubScript"]				= "�±�"
lang["ForeColor"]				= "������ɫ"
lang["BackColor"]				= "���屳��ɫ"
lang["Big"]						= "��������"
lang["Small"]					= "�����С"

// Paragraph
lang["ParagraphMenu"]			= "����˵�"
lang["JustifyLeft"]				= "�����"
lang["JustifyCenter"]			= "���ж���"
lang["JustifyRight"]			= "�Ҷ���"
lang["JustifyFull"]				= "���˶���"
lang["OrderedList"]				= "���"
lang["UnOrderedList"]			= "��Ŀ����"
lang["Indent"]					= "����������"
lang["Outdent"]					= "����������"
lang["Paragraph"]				= "�������"
lang["BR"]						= "���뻻�з�"
lang["ParagraphAttr"]			= "��������"

// Component
lang["ComponentMenu"]			= "����˵�"
lang["Image"]					= "������޸�ͼƬ"
lang["Flash"]					= "����FLASH����"
lang["Media"]					= "�����Զ�����ý��"
lang["File"]					= "���������ļ�"
lang["RemoteUpload"]			= "Զ���Զ��ϴ�"
lang["Fieldset"]				= "������޸���Ŀ��"
lang["Iframe"]					= "������޸���ҳ֡"
lang["HorizontalRule"]			= "����ˮƽ��"
lang["Marquee"]					= "������޸���Ļ"
lang["CreateLink"]				= "������޸ĳ�����"
lang["Unlink"]					= "ȡ�������ӻ��ǩ"
lang["Map"]						= "ͼ���ȵ�����"
lang["Anchor"]					= "��ǩ����"

// Object
lang["ObjectMenu"]				= "����Ч���˵�"
lang["BgColor"]					= "���󱳾���ɫ"
lang["BackImage"]				= "����ͼƬ"
lang["absolutePosition"]		= "���Ի����λ��"
lang["zIndexBackward"]			= "����һ��"
lang["zIndexForward"]			= "����һ��"
lang["ShowBorders"]				= "��ʾ����ָ������"
lang["Quote"]					= "������ʽ"
lang["Code"]					= "������ʽ"

// Tool
lang["ToolMenu"]				= "���߲˵�"
lang["CSS"]						= "��ʽ"
lang["Symbol"]					= "���������ַ�"
lang["Excel"]					= "����EXCEL���"
lang["Emot"]					= "�������ͼ��"
lang["EQ"]						= "������޸Ĺ�ʽ"
lang["Art"]						= "������޸�������"
lang["NowDate"]					= "���뵱ǰ����"
lang["NowTime"]					= "���뵱ǰʱ��"
lang["Page"]					= "�����ҳ��"

// Form
lang["FormMenu"]				= "���˵�"
lang["FormText"]				= "���������"
lang["FormTextArea"]			= "����������"
lang["FormRadio"]				= "���뵥ѡť"
lang["FormCheckbox"]			= "���븴ѡť"
lang["FormDropdown"]			= "����������"
lang["FormButton"]				= "���밴ť"

// Table
lang["TableMenu"]				= "���˵�"
lang["TableInsert"]				= "������..."
lang["TableProp"]				= "�������..."
lang["TableCellProp"]			= "��Ԫ������..."
lang["TableCellSplit"]			= "��ֵ�Ԫ��..."
lang["TableRowProp"]			= "���������..."
lang["TableRowInsertAbove"]		= "�����У����Ϸ���"
lang["TableRowInsertBelow"]		= "�����У����·���"
lang["TableRowMerge"]			= "�ϲ��У����·���"
lang["TableRowSplit"]			= "�����"
lang["TableRowDelete"]			= "ɾ����"
lang["TableColInsertLeft"]		= "�����У�����ࣩ"
lang["TableColInsertRight"]		= "�����У����Ҳࣩ"
lang["TableColMerge"]			= "�ϲ��У����Ҳࣩ"
lang["TableColSplit"]			= "�����"
lang["TableColDelete"]			= "ɾ����"

// File&View
lang["FileMenu"]				= "�ļ���ͼ�˵�"
lang["Refresh"]					= "�½�"
lang["ModeCode"]				= "����״̬"
lang["ModeEdit"]				= "�༭״̬"
lang["ModeText"]				= "�ı�״̬"
lang["ModeView"]				= "Ԥ��״̬"
lang["SizePlus"]				= "���߱༭��"
lang["SizeMinus"]				= "��С�༭��"
lang["Print"]					= "��ӡ"
lang["ZoomMenu"]				= "���Ų˵�"
lang["Maximize"]				= "ȫ���༭"
lang["Minimize"]				= "ȫ������"
lang["Save"]					= "���沢����"

// Help
lang["Help"]					= "�鿴ʹ�ð���"
lang["About"]					= "����eWebEditor"
lang["Site"]					= "eWebEditorվ��"

// Combo
lang["FontName"]				= "<option selected>����</option><option value='����'>����</option><option value='����'>����</option><option value='����_GB2312'>����</option><option value='����_GB2312'>����</option><option value='����'>����</option><option value='��Բ'>��Բ</option><option value='Arial'>Arial</option><option value='Arial Black'>Arial Black</option><option value='Arial Narrow'>Arial Narrow</option><option value='Brush Script MT'>Brush Script MT</option><option value='Century Gothic'>Century Gothic</option><option value='Comic Sans MS'>Comic Sans MS</option><option value='Courier'>Courier</option><option value='Courier New'>Courier New</option><option value='MS Sans Serif'>MS Sans Serif</option><option value='Script'>Script</option><option value='System'>System</option><option value='Times New Roman'>Times New Roman</option><option value='Verdana'>Verdana</option><option value='Wide Latin'>Wide Latin</option><option value='Wingdings'>Wingdings</option>"
lang["FontSize"]				= "<option selected>�ֺ�</option><option value='7'>һ��</option><option value='6'>����</option><option value='5'>����</option><option value='4'>�ĺ�</option><option value='3'>���</option><option value='2'>����</option><option value='1'>�ߺ�</option>"
lang["FormatBlock"]				= "<option selected>������ʽ</option><option value='&lt;P&gt;'>��ͨ</option><option value='&lt;H1&gt;'>����һ</option><option value='&lt;H2&gt;'>�����</option><option value='&lt;H3&gt;'>������</option><option value='&lt;H4&gt;'>������</option><option value='&lt;H5&gt;'>������</option><option value='&lt;H6&gt;'>������</option><option value='&lt;p&gt;'>����</option><option value='&lt;dd&gt;'>����</option><option value='&lt;dt&gt;'>���ﶨ��</option><option value='&lt;dir&gt;'>Ŀ¼�б�</option><option value='&lt;menu&gt;'>�˵��б�</option><option value='&lt;PRE&gt;'>�ѱ��Ÿ�ʽ</option>"
lang["ZoomSelect"]				= "����������"

// Status Bar Button
lang["StatusModeCode"]			= "����"
lang["StatusModeEdit"]			= "���"
lang["StatusModeText"]			= "�ı�"
lang["StatusModeView"]			= "Ԥ��"




//#####################################
// Dialog
//#####################################


// About Dialog
lang["DlgAbout"]				= "���� - eWebEditor"
lang["DlgAboutVersion"]			= "�汾"
lang["DlgAboutLicense"]			= "��Ȩ����"
lang["DlgAboutInfo"]			= "�������eWebEditor���߱༭������Ϣ������ʣ�"

// Anchor Dialog
lang["DlgAnchor"]				= "��ǩ����"
lang["DlgAnchorNoName"]			= "��������ǩ���ƣ�"
lang["DlgAnchorNoSelected"]		= "����ѡ��һ����ǩ��"
lang["DlgAnchorName"]			= "��ǩ����"
lang["DlgAnchorOther"]			= "��ҳ������ǩ"

// BackImage Dialog
lang["DlgBkImg"]				= "����ͼ����"
lang["DlgBkImgSource"]			= "ͼƬ��Դ"
lang["DlgBkImgCancelBg"]		= "ȡ������ͼ"
lang["DlgBkImgEffect"]			= "��ʾЧ��"
lang["DlgBkImgRepeat"]			= "ƽ�̷�ʽ"
lang["DlgBkImgRepeatR"]			= "�������"
lang["DlgBkImgRepeatNo"]		= "��ƽ��"
lang["DlgBkImgRepeatX"]			= "����"
lang["DlgBkImgRepeatY"]			= "����"
lang["DlgBkImgAttach"]			= "�����̶�"
lang["DlgBkImgAttachScroll"]	= "����"
lang["DlgBkImgAttachFixed"]		= "�̶�"

// BackImage Dialog System Image
lang["DlgBkImgSnow"]			= "ѩ��"
lang["DlgBkImgNature"]			= "��Ȼ"
lang["DlgBkImgClear"]			= "����"
lang["DlgBkImgGlacier"]			= "����"
lang["DlgBkImgFiesta"]			= "����"
lang["DlgBkImgBirthday"]		= "����"
lang["DlgBkImgCitrus"]			= "��Ҷ"
lang["DlgBkImgHearts"]			= "����"
lang["DlgBkImgFlower"]			= "�ʻ�"
lang["DlgBkImgGathering"]		= "����"
lang["DlgBkImgChristmas"]		= "ʥ����"
lang["DlgBkImgIvy"]				= "������"
lang["DlgBkImgTech"]			= "������"
lang["DlgBkImgMaize"]			= "��ɫ����"
lang["DlgBkImgGrid"]			= "��ɫ����"

// Emot Dialog
lang["DlgEmot"]					= "�������ͼ��"

// Fieldset Dialog
lang["DlgFs"]					= "��Ŀ������"
lang["DlgFsFieldset"]			= "��Ŀ����"
lang["DlgFsLegend"]				= "�������"

// File Dialog
lang["DlgFile"]					= "�ļ�����"
lang["DlgFileSource"]			= "�ļ���Դ"

// Find/Replace Dialog
lang["DlgFR"]					= "���� / �滻"
lang["DlgFRNoKey"]				= "�������������"
lang["DlgFRRestart"]			= "������ɣ��Ƿ�Ҫ�Ӷ�����ʼ����������"
lang["DlgFRNoFound"]			= "Ҫ���ҵ�����û���ҵ�"
lang["DlgFRReplaceOK"]			= "���ı����滻�ɹ�"
lang["DlgFRSearchKey"]			= "��ѯ����"
lang["DlgFRReplaceKey"]			= "�滻����"
lang["DlgFRMatchCase"]			= "���ִ�Сд"
lang["DlgFRMatchWord"]			= "ȫ��ƥ��"
lang["DlgFRFindNext"]			= "������һ��"
lang["DlgFRReplace"]			= "�滻"
lang["DlgFRReplaceAll"]			= "ȫ���滻"

// Flash Dialog
lang["DlgFlash"]				= "Flash��������"
lang["DlgFlashSource"]			= "Flash��Դ"
lang["DlgFlashEffect"]			= "��ʾЧ��"
lang["DlgFlashWidth"]			= "��ʾ���"
lang["DlgFlashHeight"]			= "��ʾ�߶�"

// Fullscreen Dialog
lang["DlgFullscreen"]			= "eWebEditor - ȫ���༭"

// Hyperlink Dialog
lang["DlgHylnk"]				= "������������"
lang["DlgHylnkNoUrl"]			= "���ӵ�ַ����Ϊ��"
lang["DlgHylnkLegend"]			= "����������Ϣ"
lang["DlgHylnkProtocol"]		= "��������"
lang["DlgHylnkTarget"]			= "����Ŀ��"
lang["DlgHylnkTargetNone"]		= "Ĭ��(��)"
lang["DlgHylnkTargetSelf"]		= "��ͬ���"
lang["DlgHylnkTargetTop"]		= "��ҳ"
lang["DlgHylnkTargetBlank"]		= "�½�����"
lang["DlgHylnkTargetParent"]	= "�����"
lang["DlgHylnkUrl"]				= "���ӵ�ַ"
lang["DlgHylnkAnchor"]			= "��ǩ����"
lang["DlgHylnkAnchorNone"]		= "Ĭ��(��)"

// Iframe Dialog
lang["DlgIframe"]				= "��ҳ֡����"
lang["DlgIframeProperty"]		= "��������"
lang["DlgIframeUrl"]			= "��ҳ��ַ"
lang["DlgIframeScroll"]			= "�� �� ��"
lang["DlgIframeYes"]			= "��"
lang["DlgIframeNo"]				= "��"
lang["DlgIframeBorder"]			= "�� �� ��"
lang["DlgIframeMarginHeight"]	= "���±߾�"
lang["DlgIframeMarginWidth"]	= "���ұ߾�"
lang["DlgIframeWidth"]			= "֡ �� ��"
lang["DlgIframeHeight"]			= "֡ �� ��"

// Image Dialog
lang["DlgImg"]					= "ͼƬ����"
lang["DlgImgErrBorColor"]		= "��ʾ��\n\n��Ч�ı߿���ɫֵ��"
lang["DlgImgSource"]			= "ͼƬ��Դ"
lang["DlgImgEffect"]			= "��ʾЧ��"
lang["DlgImgAlt"]				= "˵������"
lang["DlgImgBorder"]			= "�߿��ϸ"
lang["DlgImgBorderColor"]		= "�߿���ɫ"
lang["DlgImgSpecEffect"]		= "����Ч��"
lang["DlgImgAlpha1"]			= "��͸��"
lang["DlgImgAlpha2"]			= "����͸��"
lang["DlgImgAlpha3"]			= "����͸��"
lang["DlgImgBlur1"]				= "ģ��Ч��"
lang["DlgImgBlur2"]				= "�綯ģ��"
lang["DlgImgWave"]				= "���Ҳ���"
lang["DlgImgGray"]				= "�ڰ���Ƭ"
lang["DlgImgChroma"]			= "��ɫ͸��"
lang["DlgImgDropShadow"]		= "Ͷ����Ӱ"
lang["DlgImgShadow"]			= "��Ӱ"
lang["DlgImgGlow"]				= "����"
lang["DlgImgFlipv"]				= "��ֱ��ת"
lang["DlgImgFliph"]				= "���ҷ�ת"
lang["DlgImgGrays"]				= "���Ͳ�ɫ"
lang["DlgImgXray"]				= "X����Ƭ"
lang["DlgImgInvert"]			= "��Ƭ"
lang["DlgImgWidth"]				= "ͼƬ���"
lang["DlgImgHeight"]			= "ͼƬ�߶�"
lang["DlgImgVSpace"]			= "���¼��"
lang["DlgImgHSpace"]			= "���Ҽ��"
lang["DlgImgPreview"]			= "Ԥ��"

// Map Dialog
lang["DlgMap"]					= "ͼ���ȵ�����"
lang["DlgMapNew"]				= "�½�"
lang["DlgMapDesc"]				= "˫���ɱ༭����"

// Marquee Dialog
lang["DlgMarquee"]				= "��Ļ����"
lang["DlgMarqueeText"]			= "�ı�"
lang["DlgMarqueeBehavior"]		= "����"
lang["DlgMarqueeScroll"]		= "������"
lang["DlgMarqueeSlide"]			= "�õ�Ƭ"
lang["DlgMarqueeAlternate"]		= "����"

// Media Dialog
lang["DlgMedia"]				= "ý���ļ�����"
lang["DlgMediaSource"]			= "ý���ļ���Դ"
lang["DlgMediaEffect"]			= "����Ч��"
lang["DlgMediaWidth"]			= "���ſ��"
lang["DlgMediaHeight"]			= "���Ÿ߶�"

// SelColor Dialog
lang["DlgSelCor"]				= "��ɫѡ��"
lang["DlgSelCorForecolor"]		= "����ǰ��ɫ"
lang["DlgSelCorBackcolor"]		= "���屳��ɫ"
lang["DlgSelCorBgcolor"]		= "���󱳾�ɫ"
lang["DlgSelCorSel"]			= "ѡ��ɫ��"
lang["DlgSelCorBase"]			= "��ɫ"
lang["DlgSelCorLight"]			= "����"
lang["DlgSelCorCode"]			= "����"

// Symbol Dialog
lang["DlgSymbol"]				= "�����������"
lang["DlgSymbolSpecial"]		= "����"
lang["DlgSymbolInterpunction"]	= "���"
lang["DlgSymbolMath"]			= "��ѧ"
lang["DlgSymbolUnit"]			= "��λ"
lang["DlgSymbolNumber"]			= "����"
lang["DlgSymbolSpell"]			= "ƴ��"
lang["DlgSymbolPreview"]		= "Ԥ��"

// Table Dialog
lang["DlgTab"]					= "�������"
lang["DlgTabInvalidRow"]		= "��Ч������������Ҫ1�У�"
lang["DlgTabInvalidCol"]		= "��Ч������������Ҫ1�У�"
lang["DlgTabInvalidWidth"]		= "��Ч�ı���ȣ�"
lang["DlgTabInvalidHeight"]		= "��Ч�ı��߶ȣ�"
lang["DlgTabRowsCols"]			= "����С"
lang["DlgTabRows"]				= "�������"
lang["DlgTabCols"]				= "�������"
lang["DlgTabLayout"]			= "��񲼾�"
lang["DlgTabBorder"]			= "�߿��ϸ"
lang["DlgTabCellspacing"]		= "��Ԫ���"
lang["DlgTabCellpadding"]		= "��Ԫ�߾�"
lang["DlgTabSize"]				= "���ߴ�"
lang["DlgTabChkWidth"]			= "ָ�����Ŀ��"
lang["DlgTabChkHeight"]			= "ָ�����ĸ߶�"
lang["DlgTabStyle"]				= "�����ʽ"
lang["DlgTabBorderStyle"]		= "�߿���ʽ"
lang["DlgTabBgImage"]			= "����ͼƬ"

// Table Cell/Row Dialog
lang["DlgTabCelErrWidth"]		= "��Ч�Ŀ�ȣ�"
lang["DlgTabCelErrHeight"]		= "��Ч�ĸ߶ȣ�"
lang["DlgTabCelLayout"]			= "����"
lang["DlgTabCelHAlign"]			= "ˮƽ����"
lang["DlgTabCelVAlign"]			= "��ֱ����"
lang["DlgTabCelSize"]			= "�ߴ�"
lang["DlgTabCelChkWidth"]		= "ָ�����"
lang["DlgTabCelChkHeight"]		= "ָ���߶�"
lang["DlgTabCelStyle"]			= "��ʽ"
lang["DlgTabCelBorderStyle"]	= "�߿���ʽ"
lang["DlgTabCelBgImage"]		= "����ͼƬ"

// Table Cell Split Dialog
lang["DlgCelSpt"]				= "��Ԫ����"
lang["DlgCelSptCols"]			= "����"
lang["DlgCelSptRows"]			= "����"
lang["DlgCelSptErrRowCol"]		= "��Ч�����������������1��"
lang["DlgCelSptSplitCol"]		= "���Ϊ��"
lang["DlgCelSptSplitRow"]		= "���Ϊ��"

// Dialog Button
lang["DlgBtnClose"]				= "�ر�"
lang["DlgBtnOK"]				= "ȷ��"
lang["DlgBtnCancel"]			= "ȡ��"
lang["DlgBtnGoto"]				= "ת��"
lang["DlgBtnDel"]				= "ɾ��"

// Dialog Common
lang["DlgComTable"]				= "���"
lang["DlgComTableCell"]			= "��Ԫ��"
lang["DlgComTableRow"]			= "�����"
lang["DlgComSet"]				= "����"
lang["DlgComBody"]				= "��ҳ"
lang["DlgComDefault"]			= "Ĭ��"
lang["DlgComUploading"]			= "...�ϴ���...��ȴ�..."
lang["DlgComInsert"]			= "����"
lang["DlgComModify"]			= "�޸�"
lang["DlgComTitle"]				= "����"
lang["DlgComContent"]			= "����"
lang["DlgComOther"]				= "����"
lang["DlgComNone"]				= "��"
lang["DlgComPx"]				= "����"
lang["DlgComPer"]				= "�ٷֱ�"
lang["DlgComAttribute"]			= "����"

// Dialog Align
lang["DlgAlign"]				= "���뷽ʽ"
lang["DlgAlignLeft"]			= "�����"
lang["DlgAlignRight"]			= "�Ҷ���"
lang["DlgAlignCenter"]			= "���ж���"
lang["DlgAlignFull"]			= "���˶���"
lang["DlgAlignTop"]				= "����"
lang["DlgAlignMiddle"]			= "�в�"
lang["DlgAlignBottom"]			= "�ײ�"
lang["DlgAlignAbsmiddle"]		= "���Ծ���"
lang["DlgAlignAbsbottom"]		= "���Եײ�"
lang["DlgAlignBaseline"]		= "����"
lang["DlgAlignTexttop"]			= "�ı�����"

// Dialog Color
lang["DlgColor"]				= "��ɫ����"
lang["DlgColorBorder"]			= "�߿���ɫ"
lang["DlgColorBg"]				= "������ɫ"

// Dialog From
lang["DlgFromFile"]				= "�ϴ�"
lang["DlgFromUrl"]				= "����"
lang["DlgFromSys"]				= "ϵͳ"

// Dialog Line
lang["DlgLineSolid"]			= "ʵ��"
lang["DlgLineDotted"]			= "����"
lang["DlgLineDashed"]			= "���ۺ�"
lang["DlgLineDouble"]			= "˫��"
lang["DlgLineGroove"]			= "����"
lang["DlgLineRidge"]			= "͹��"
lang["DlgLineInset"]			= "Ƕ��"
lang["DlgLineOutset"]			= "����"




//#####################################
// Message
//#####################################
lang["ErrNoLinkField"]			= "���ô����봫����ò���ID�������ص����ݱ���ID��"
lang["ErrInvalidStyle"]			= "���ô����봫����Ч����ʽ����"
lang["ErrUploadInvalidExt"]		= "��ʾ��\n\n��ѡ��һ����Ч���ļ���\n֧�ֵĸ�ʽ��"
lang["ErrUploadInvalidFile"]	= "��ѡ����Ч���ϴ��ļ���"
lang["ErrUploadSizeLimit"]		= "���ϴ����ļ��ܴ�С�������������"
lang["ErrParam"]				= "����������ã�"

lang["MsgPasteWordConfirm"]		= "��Ҫճ�������ݺ����Ǵ�Word�п������ģ��Ƿ�Ҫ�����Word��ʽ��ճ����"
lang["MsgNotCompatiblePaste"]	= "�˹���Ҫ��IE5.5�汾���ϣ��㵱ǰ���������֧�֣��Ƿ񰴳���ճ�����У�"
lang["MsgOnlyInEditMode"]		= "��ת��Ϊ�༭״̬�����ʹ�ñ༭���ܣ�"
lang["MsgCanotSetInViewMode"]	= "Ԥ��ʱ���������ñ༭�����ݡ�"
lang["MsgNotCompatibleHtml"]	= "HTML�༭ģʽ��ҪIE5.5�汾���ϵ�֧�֣�"
lang["MsgNotCompatibleFunc"]	= "�˹�����ҪIE5.5�汾���ϵ�֧�֣�"
lang["MsgHtmlToText"]			= "���棡�л������ı�ģʽ�ᶪʧ�����е�HTML��ʽ����ȷ���л���"
lang["MsgHylnkLimit"]			= "����ֻ����ͼƬ���ı�"
lang["MsgMapLimit"]				= "�ȵ�����ֻ��������ͼƬ"
lang["MsgRemoteUploading"]		= "...Զ���ļ��ռ���...��ȴ�..."
lang["MsgNotParagraph"]			= "��������ֻ��Ӧ���ڶ��䣬������ѡ��һ�����䣡"

lang["HtmlQuote"]				= "����������Ƭ�Σ�"
lang["HtmlCode"]				= "�����Ǵ���Ƭ�Σ�"

// Check Color
lang["ErrColorBorder"]			= "��Ч�ı߿���ɫֵ��"
lang["ErrColorBg"]				= "��Ч�ı�����ɫֵ��"
lang["ErrColorInvalid"]			= "��Ч����ɫֵ��"




//#####################################
// Context Menu
//#####################################
lang["CMenuImg"]				= "ͼƬ����..."
lang["CMenuParagraph"]			= "��������..."




//#####################################
// Dialog UI (Pixles)
//#####################################
lang["UIMenuWidth"]				= 150
