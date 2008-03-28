<%@ Page Language="C#" AutoEventWireup="true" ValidateRequest="false" CodeFile="SetUp.aspx.cs" Inherits="setUp_SetUp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>易想多用户商城V2008_2.0安装</title>
    <link rel="stylesheet" type="text/css" href="images/css.css"/>
<style type="text/css">
<!--
body {
	background-color: #989898;
}
-->
</style>
</head>
<body  leftmargin="0" topmargin="0" bottommargin="0px" >
    <form id="form1" runat="server">
    <div style="text-align: center">
    <asp:Panel ID="Panel1" runat="server">
    <table id="__01" width="700" height="532" border="0" cellpadding="0" cellspacing="0" align="center" style="margin-top:20px;">
	<tr>
		<td width="22" rowspan="4">
			<img src="images/22_01.gif" width="22" height="532" alt=""></td>
		<td colspan="2">
			<img src="images/22_02.gif" width="657" height="17" alt=""></td>
		<td width="21" rowspan="4">
			<img src="images/22_03.gif" width="21" height="532" alt=""></td>
	</tr>
	<tr>
		<td height="85" colspan="2" background="images/22_04.gif" valign="top"><table width="100%" border="0" cellpadding="0" cellspacing="0">
          <tr>
            <td width="32%" height="57"><img src="images/logo.gif" width="206" height="55" border="0" usemap="#Map3"></td>
            <td width="68%" valign="middle">
                <strong>易想多用户商城V2008_2.0</strong></td>
          </tr>
          <tr>
            <td height="23" colspan="2" valign="bottom" style="text-indent:10px; color:#FFFFFF">
                第一步：欢迎安装易想多用户商城仿淘宝版(.net Framework 2.0)</td>
          </tr>
        </table></td>
	</tr>
	<tr>
		<td width="257">
			<img src="images/22_05.gif" alt="" width="257" height="373" border="0" usemap="#Map2"></td>
	  <td width="400" valign="top" bgcolor="#FFFFFF"><table width="100%" border="0" cellpadding="0" cellspacing="0">
		  <!--DWLayoutTable-->
          <tr>
            <td height="11" colspan="3"><img src="images/22_06.gif" width="400" height="11"></td>
          </tr>
          <tr>
            <td height="24" style="width: 23px">&nbsp;</td>
            <td valign="top"><DIV align="left" style="text-align: center">本向导将协助您一步步的安装和初始化系统</DIV></td>
            <td>&nbsp;</td>
          </tr>
          <tr>
            <td height="254" style="width: 23px"></td>
            <td valign="top" style=" line-height:180%"><DIV align="left" style="text-align: left">
                &nbsp; &nbsp; &nbsp; &nbsp; 强烈建议您在运行本向导前仔细阅读程序包中的《安装说明》文档, 如果您已经阅读过, 请点击下一步。</DIV></td>
            <td></td>
          </tr>
          
        </table>
	      <table width="100%" border="0" cellpadding="0" cellspacing="0">
            <tr>
              <td width="19%" style="height: 26px"><div align="right"></div></td>
              <td style="height: 26px" colspan="2">
                  <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="images/next.gif" OnClick="ImageButton1_Click" /></td>
              <td width="30%" style="height: 26px">
                  &nbsp;</td>
            </tr>
          </table></td>
	</tr>
	<tr>
		<td colspan="2">
			<img src="images/22_07.gif" alt="" width="657" height="57" border="0" usemap="#Map"></td>
	</tr>
</table>
<!-- End ImageReady Slices -->
<map name="Map"><area shape="rect" coords="104,6,203,21" href="http://www.changehope.com" target="_blank">
</map>
<map name="Map2"><area shape="rect" coords="71,325,206,341" href="http://www.changehope.com" target="_blank">
<area shape="rect" coords="71,349,203,362" href="http://bbs.changehope.com" target="_blank">
</map>
<map name="Map3"><area shape="rect" coords="5,2,197,53" href="http://www.changehope.com" target="_blank">
</map>
</asp:Panel>
        <asp:Panel ID="Panel7" runat="server">
            <table id="Table6" width="700" height="532" border="0" cellpadding="0" cellspacing="0" align="center" style="margin-top:20px;">
	<tr>
		<td width="22" rowspan="4">
			<img src="images/22_01.gif" width="22" height="532" alt=""></td>
		<td colspan="2">
			<img src="images/22_02.gif" width="657" height="17" alt=""></td>
		<td width="21" rowspan="4">
			<img src="images/22_03.gif" width="21" height="532" alt=""></td>
	</tr>
	<tr>
		<td height="85" colspan="2" background="images/22_04.gif" valign="top"><table width="100%" border="0" cellpadding="0" cellspacing="0">
          <tr>
            <td width="32%" height="57"><img src="images/logo.gif" width="206" height="55" border="0" usemap="#Map3"></td>
            <td width="68%" valign="middle"><strong>易想多用户商城V2008_2.0</strong></td>
          </tr>
          <tr>
            <td height="23" colspan="2" valign="bottom" style="text-indent:10px; color:#FFFFFF">
                第二步：安装环境检测(.net Framework 2.0)</td>
          </tr>
        </table></td>
	</tr>
	<tr>
		<td width="257">
			<img src="images/22_05.gif" alt="" width="257" height="373" border="0" usemap="#Map2"></td>
	  <td width="400" valign="top" bgcolor="#FFFFFF"><table width="100%" border="0" cellpadding="0" cellspacing="0">
		  <!--DWLayoutTable-->
          <tr>
            <td height="11" colspan="3"><img src="images/22_06.gif" width="400" height="11"></td>
          </tr>
          <tr>
            <td height="24" style="width: 23px">&nbsp;</td>
            <td valign="top"><DIV align="left" style="text-align: center">本向导将协助您一步步的安装和初始化系统</DIV></td>
            <td>&nbsp;</td>
          </tr>
          <tr>
            <td height="254" style="width: 23px"></td>
            <td valign="top" style=" line-height:180%"><DIV align="left" style="text-align: left">
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;环境检测结果如下：<br />
                <br />
                <br />
                <table align="center" border="0"
                    bordercolor="#ffffff" cellpadding="1" cellspacing="0" width="99%">
                    <tr height="18">
                        <td align="left" class="tt2" height="20">
                            &nbsp;服务器IIS版本：</td>
                        <td  height="18">
                            <asp:Label ID="SERVER_SOFTWARE" runat="server"></asp:Label></td>
                    </tr>
                    <tr height="18">
                        <td align="left" class="tt2" height="20">
                            &nbsp;.NET解释引擎版本：</td>
                        <td  height="18">
                            <asp:Label ID="runtime" runat="server"></asp:Label></td>
                    </tr>
                    <tr height="18">
                        <td align="left" class="tt2" height="20">
                            &nbsp;服务器操作系统：</td>
                        <td  height="18">
                            <asp:Label ID="OS" runat="server"></asp:Label></td>
                    </tr>
                    <tr height="18">
                        <td align="left" class="tt2" height="20">
                            FSO文件操作组件：</td>
                        <td  height="18">
                            <asp:Label ID="fso" runat="server"></asp:Label></td>
                    </tr>
                    <tr height="18">
                        <td align="left" class="tt2">
                            ASPUpload上传组件：</td>
                        <td  style="height: 20px">
                            <asp:Label ID="aspupload" runat="server"></asp:Label></td>
                    </tr>
                </table>
            </DIV>
                如果您的主机环境与系统要求不符，请与主机服务商联系！</td>
            <td></td>
          </tr>
          
        </table>
	      <table width="100%" border="0" cellpadding="0" cellspacing="0">
            <tr>
                <td style="height: 26px" width="19%">
                </td>
              <td width="19%" style="height: 26px"><div align="right"><asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/YX_SetUp/images/back.gif" OnClick="ImageButton2_Click" />&nbsp;</div></td>
              <td width="26%" style="height: 26px">
                  <asp:ImageButton ID="ImageButton13" runat="server" ImageUrl="images/skip.gif" OnClick="ImageButton13_Click" /></td>
              <td width="25%" style="height: 26px">
                  <asp:ImageButton ID="ImageButton14" runat="server" ImageUrl="images/next.gif" OnClick="ImageButton14_Click" /></td>
              <td width="30%" style="height: 26px">
                  &nbsp;</td>
            </tr>
          </table></td>
	</tr>
	<tr>
		<td colspan="2">
			<img src="images/22_07.gif" alt="" width="657" height="57" border="0" usemap="#Map"></td>
	</tr>
</table>
<!-- End ImageReady Slices -->
<map name="Map"><area shape="rect" coords="104,6,203,21" href="http://www.changehope.com" target="_blank">
</map>
<map name="Map2"><area shape="rect" coords="71,325,206,341" href="http://www.changehope.com" target="_blank">
<area shape="rect" coords="71,349,203,362" href="http://bbs.changehope.com" target="_blank">
</map>
<map name="Map3"><area shape="rect" coords="5,2,197,53" href="http://www.changehope.com" target="_blank">
</map>
        </asp:Panel> 
        <asp:Panel ID="Panel2" runat="server">
            <table id="Table1" width="700" height="532" border="0" cellpadding="0" cellspacing="0" align="center" style="margin-top:20px;">
	<tr>
		<td width="22" rowspan="4">
			<img src="images/22_01.gif" width="22" height="532" alt=""></td>
		<td colspan="2">
			<img src="images/22_02.gif" width="657" height="17" alt=""></td>
		<td width="21" rowspan="4">
			<img src="images/22_03.gif" width="21" height="532" alt=""></td>
	</tr>
	<tr>
		<td colspan="2" background="images/22_04.gif" valign="top" style="height: 85px"><table width="100%" border="0" cellpadding="0" cellspacing="0">
          <tr>
            <td width="32%" style="height: 57px"><img src="images/logo.gif" width="206" height="55" border="0" usemap="#Map3"></td>
            <td width="68%" valign="middle" style="height: 57px"><strong>易想多用户商城V2008_2.0</strong></td>
          </tr>
          <tr>
            <td height="23" colspan="2" valign="bottom" style="text-indent:10px; color:#FFFFFF">
                第三步：阅读和同意易想多用户商城仿淘宝版 (.net Framework 2.0)</td>
          </tr>
        </table></td>
	</tr>
	<tr>
		<td width="257">
			<img src="images/22_05.gif" alt="" width="257" height="373" border="0" usemap="#Map2"></td>
	  <td width="400" valign="top" bgcolor="#FFFFFF"><table width="100%" border="0" cellpadding="0" cellspacing="0">
		  <!--DWLayoutTable-->
          <tr>
            <td height="11" colspan="3"><img src="images/22_06.gif" width="400" height="11"></td>
          </tr>
          <tr>
            <td height="24" style="width: 23px">&nbsp;</td>
            <td valign="top"><DIV align="left" style="text-align: left">本向导将协助您一步步的安装和初始化系统</DIV></td>
            <td>&nbsp;</td>
          </tr>
          <tr>
            <td colspan="3" style="height: 254px"><DIV align="left" style="text-align: left">&nbsp;&nbsp;
                <asp:TextBox ID="TextBox1" runat="server"
                    Height="210px" TextMode="MultiLine" Width="90%" Text="
易想系列软件产品最终用户许可协议
CHANGEHOPE SOFTWARE LICENSE

重要须知——请认真阅读：
本《易想系列软件产品最终用户许可协议》（以下简称《协议》）是您与成都易想网络技术有限公司（下称易想网络）之间关于下载、安装、使用、复制易想系列软件产品（以下简称“软件”）的法律协议。本《协议》描述易想网络与您之间关于“软件”许可使用及相关方面的权利义务。“用户”或“您”是指通过易想网络提供的获取软件授权的途径而获得软件授权许可和软件产品的个人或单位。请您仔细阅读本《协议》中的各项条款，包括免除或者限制易想网络责任的免责条款及对用户的权利限制。请您审阅并接受或不接受本《协议》（未成年人应在法定监护人陪同下审阅）。
除非您接受本《协议》条款，否则您无权下载、安装或使用本“软件”及其相关服务。您的安装使用行为将视为对本《协议》的接受，并同意接受本《协议》各项条款的约束。
同时拥有本《协议》和与之相配套的软件以及易想网络或其代理商、经销商开具的收款凭证是您使用易想软件产品的标志，未经易想网络授权，任何拷贝、销售、转让、出租、修改本“软件”的行为均被认为是侵权行为。

1     知识产权声明
1.1   本“软件”是由易想网络独立开发。“软件”的一切版权等知识产权，以及与“软件”相关的所有信息内容，包括但不限于：文字表述及其组合、商标、图标图饰、界面设计、版面框架、有关数据、印刷材料、电子文档等均受著作权法和国际著作权条约以及其他知识产权法律法规的保护。除了任何易想网络授权许可协议所提供的明确书面许可外，拥有本“软件”并不赋予您任何有关这些专利、商标、版权或其它知识产权的许可。
2     “软件”授权范围
协议许可的权利 
1.	您可以在完全遵守本最终用户授权协议的基础上，将本软件应用于非商业用途，而不必支付软件版权授权费用。 
2.	您可以在协议规定的约束和限制范围内修改 易想商城 源代码或界面风格以适应您的网站要求。 
3.	您拥有使用本软件构建的商城中全部会员资料、商品及相关信息的所有权，并独立承担与内容的相关法律义务。 
4.	获得商业授权之后，您可以将本软件应用于商业用途，同时依据所购买的授权类型中确定的技术支持期限、技术支持方式和技术支持内容，自购买时刻起，在技术支持期限内拥有通过指定的方式获得指定范围内的技术支持服务。商业授权用户享有反映和提出意见的权力，相关意见将被作为首要考虑，但没有一定被采纳的承诺或保证。 
协议规定的约束和限制 
1.	未获商业授权之前，不得将本软件用于商业用途（包括但不限于企业网站、经营性网站、以营利为目或实现盈利的网站），更不得作为自己的产品为其他客户谋求商业利益。购买商业授权请登陆http://www.changehope.com 参考相关说明，也可以致电8628-66006880了解详情。 
2.	不得对本软件或与之关联的商业授权进行出租、出售、抵押或发放子许可证。 
3.	无论如何，即无论用途如何、是否经过修改或美化、修改程度如何，只要使用 易想商城 的整体或任何部分，未经书面许可，商城页面页脚处的 易想商城 名称和成都易想网络技术有限公司下属网站（http://www.changehope.com） 的链接都必须保留，而不能清除或修改。 
4.	禁止在 易想商城 的整体或任何部分基础上以发展任何派生版本、修改版本或第三方版本用于重新分发。 
5.	如果您未能遵守本协议的条款，您的授权将被终止，所被许可的权利将被收回，并承担相应法律责任。 
6.	有限担保和免责声明 
7.	本软件及所附带的文件是作为不提供任何明确的或隐含的赔偿或担保的形式提供的。 
8.	用户出于自愿而使用本软件，您必须了解使用本软件的风险，在尚未购买产品技术服务之前，我们不承诺提供任何形式的技术支持、使用担保，也不承担任何因使用本软件而产生问题的相关责任。 
9.	成都易想网络技术有限公司不对使用本软件构建的商城中的文章或商品信息承担责任。 
有关 易想商城 最终用户授权协议、商业授权与技术服务的详细内容，均由 易想商城 官方网站独家提供。成都易想网络技术有限公司拥有在不事先通知的情况下，修改授权协议和服务价目表的权力，修改后的协议或价目表对自改变之日起的新授权用户生效。 
电子文本形式的授权协议如同双方书面签署的协议一样，具有完全的和等同的法律效力。您一旦开始安装 易想商城，即被视为完全理解并接受本协议的各项条款，在享有上述条款授予的权力的同时，受到相关的约束和限制。协议许可范围以外的行为，将直接违反本授权协议并构成侵权，我们有权随时终止授权，责令停止损害，并保留追究相关责任的权力。 
3     用户使用须知
3.1   用户应保证注册登记软件时提供的资料真实无误。
3.2   用户在遵守法律及本协议的前提下可依据本《协议》使用本“软件”。用户无权实施包括但不限于下列行为：
3.2.1 不得删除本“软件”及其他副本上所有关于版权的信息、内容；
3.2.2 不得对本“软件”进行反向工程、反向汇编、反向编译等；
3.2.3 对于本“软件”的图像、文字等相关信息，未经易想网络书面同意，用户不得擅自实施包括但不限于下列行为：使用、复制、修改、链接、转载、汇编、发表、出版，建立镜像站点、擅自借助“软件”发展与之有关的衍生产品、作品、服务等。
3.2.4 用户不得利用本“软件”发表、传播、储存违反国家法律、危害国家安全、祖国统一、社会稳定的内容，或侮辱、诽谤、色情、暴力等任何违反国家法律法规政策的内容。
3.2.5 用户不得利用本“软件”发表、传播、储存侵害他人知识产权、商业秘密权等合法权利的内容。
3.3   使用本“软件”必须遵守国家有关法律和政策，维护国家利益，保护国家安全，对于用户违法或违反本协议的使用而引起的一切责任由用户负全部责任，一概与易想网络无关，导致易想网络损失的，易想网络有权要求用户赔偿，并有权立即停止提供服务并保留相关记录，以配合司法机关追究法律责任的权利。
3.4   本“软件”同大多数管理系统一样，可能受到各种安全问题的侵扰。如：下载安装其它软件中含有“特洛伊木马”等病毒，威胁到用户计算机信息和数据的安全，继而影响本“软件”的正常使用等。用户应加强信息安全意识，注意加强密码保护以免遭致损失。
3.5   用户自行下载、安装、使用非经易想网络开发并正式发布的其它任何由本“软件”衍生的软件将可能导致不可预知的风险，建议用户不要轻易下载、安装、使用，由此产生的一切法律责任与纠纷一概与易想网络无关。
3.6   易想网络保留在任何时候为您提供本“软件”的修改、升级版本的权利，以及为修改或升级服务收取费用的权利。
4     法律责任与免责
4.1   易想网络特别提请用户注意，易想网络为了保障公司业务发展和调整的自主权，易想网络拥有随时自行修改或中断软件授权而不需通知用户的权利，如有必要，修改或中断会以通告形式公布于易想网络网站重要页面上。
4.2   用户违反本协议或相关的服务条款的规定，易想网络有权视用户的行为性质采取包括但不限于中断使用许可、停止提供服务、限制使用、法律追究等措施。同时，易想网络会视司法部门的要求，协助调查。
4.3   使用本“软件”涉及到互联网服务因素，可能会受到各个环节不稳定因素的影响，存在因不可抗力、计算机病毒、黑客攻击、系统不稳定、用户所在位置、用户关机以及其他任何网络、技术、通信线路等原因造成的服务中断或不能满足用户要求的风险，用户须明白并自行承担以上风险。在适用法律允许的最大范围内，易想网络在任何情况下不就因使用或不能使用本“软件”产品及所发生的特殊的、意外的、非直接或间接的损失承担赔偿责任，即使用户已事先被易想网络告知该损害发生的可能性。
4.4   用户因第三方如电信部门的通讯线路故障、技术问题、网络、电脑故障、系统不稳定性及其他各种不可抗力原因而遭受的经济损失，易想网络不承担责任。
4.5   因技术故障等不可抗事件影响到服务的正常运行的，易想网络承诺在第一时间内与相关单位配合及时处理进行修复，但用户因此而遭受的经济损失，易想网络不承担责任。
5     其他条款
5.1   本协议所规定的任何条款的部分或全部无效者，不影响其它条款的效力。
5.2   本协议的解释、效力及纠纷的解决，适用于中华人民共和国法律。若用户和易想网络之间发生任何纠纷或争议，首先应友好协商解决，协商不成的，用户在此完全同意将纠纷或争议提交易想网络所在地法院管辖。

易想网络保留对本协议的解释权。


	                                    　　成都市易想网络技术有限公司
　　　　　


"></asp:TextBox>&nbsp;</DIV></td>
          </tr>
          
        </table>
	      <table width="100%" border="0" cellpadding="0" cellspacing="0">
              <tr>
                  <td colspan="4" rowspan="2">
                      <br />
                      <asp:RadioButtonList ID="RadioButtonList1" runat="server"
                          RepeatDirection="Horizontal">
                          <asp:ListItem Value="同意，继续安装">同意，继续安装　</asp:ListItem>
                          <asp:ListItem Selected="True">不同意，退出安装</asp:ListItem>
                      </asp:RadioButtonList><div align="right"></div>
                      &nbsp;</td>
              </tr>
            <tr>
            </tr>
              <tr>
                  <td style="height: 26px" width="19%">
                  </td>
                  <td style="height: 26px" width="26%">
                  <asp:ImageButton ID="ImageButton3" runat="server" ImageUrl="~/YX_SetUp/images/back.gif" OnClick="ImageButton3_Click" /></td>
                  <td style="height: 26px" width="25%">
                  <asp:ImageButton ID="ImageButton4" runat="server" ImageUrl="images/next.gif" OnClick="ImageButton4_Click" /></td>
                  <td style="height: 26px" width="30%">
                  </td>
              </tr>
          </table></td>
	</tr>
	<tr>
		<td colspan="2">
			<img src="images/22_07.gif" alt="" width="657" height="57" border="0" usemap="#Map"></td>
	</tr>
</table>
<!-- End ImageReady Slices -->
<map name="Map"><area shape="rect" coords="104,6,203,21" href="http://www.changehope.com" target="_blank">
</map>
<map name="Map2"><area shape="rect" coords="71,325,206,341" href="http://www.changehope.com" target="_blank">
<area shape="rect" coords="71,349,203,362" href="http://bbs.changehope.com" target="_blank">
</map>
<map name="Map3"><area shape="rect" coords="5,2,197,53" href="http://www.changehope.com" target="_blank">
</map>
        </asp:Panel>
        <asp:Panel ID="Panel3" runat="server">
        <table id="Table2" width="700" height="532" border="0" cellpadding="0" cellspacing="0" align="center" style="margin-top:20px;">
	<tr>
		<td width="22" rowspan="4">
			<img src="images/22_01.gif" width="22" height="532" alt=""></td>
		<td colspan="2">
			<img src="images/22_02.gif" width="657" height="17" alt=""></td>
		<td width="21" rowspan="4">
			<img src="images/22_03.gif" width="21" height="532" alt=""></td>
	</tr>
	<tr>
		<td height="85" colspan="2" background="images/22_04.gif" valign="top"><table width="100%" border="0" cellpadding="0" cellspacing="0">
          <tr>
            <td width="32%" height="57"><img src="images/logo.gif" width="206" height="55" border="0" usemap="#Map3"></td>
            <td width="68%" valign="middle"><strong>易想多用户商城V2008_2.0</strong></td>
          </tr>
          <tr>
            <td height="23" colspan="2" valign="bottom" style="text-indent:10px; color:#FFFFFF">
                第四步：修改站点的配置文件以连接用户数据库 (.net Framework 2.0)</td>
          </tr>
        </table></td>
	</tr>
	<tr>
		<td width="257" style="height: 373px">
			<img src="images/22_05.gif" alt="" width="257" height="373" border="0" usemap="#Map2"></td>
	  <td valign="top" bgcolor="#FFFFFF" style="width: 400px; height: 373px;"><table width="100%" border="0" cellpadding="0" cellspacing="0">
		  <!--DWLayoutTable-->
          <tr>
            <td height="11" colspan="3"><img src="images/22_06.gif" width="400" height="11"></td>
          </tr>
          <tr>
            <td height="24" style="width: 23px">&nbsp;</td>
            <td valign="top"><DIV align="left" style="text-align: center">本向导将协助您一步步的安装和初始化系统</DIV></td>
            <td>&nbsp;</td>
          </tr>
          <tr>
            <td height="254" style="width: 23px"></td>
            <td valign="top" style=" line-height:180%"><DIV align="left" style="text-align: center; valign: middle;">
                             
                                <table border="0" cellpadding="0" cellspacing="0" width="90%">
            <tr>
                <td style="width: 200px; text-align: right; height: 25px;">
                    请输入服务器IP地址：</td>
                <td style="width: 200px; height: 25px;">
                    <asp:TextBox ID="TextBox2" runat="server" Width="150px" Height="20px"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 200px; height: 25px;">
                    请输入服务器数据库名称：</td>
                <td style="width: 200px; height: 25px;">
                    <asp:TextBox ID="TextBox3" runat="server" Width="150px" Height="20px"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 200px">
                    请输入服务器数据库帐号：</td>
                <td style="width: 200px">
                    <asp:TextBox ID="TextBox4" runat="server" Width="150px" Height="20px"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 200px">
                    请输入服务器数据库密码：</td>
                <td style="width: 200px">
                    <asp:TextBox ID="TextBox5" runat="server" TextMode="Password" Width="150px" Height="20px"></asp:TextBox></td>
            </tr>
        </table>
        <asp:TextBox ID="TextBox6" runat="server" Height="98px" TextMode="MultiLine" Width="300px" Visible="False"></asp:TextBox>
                <br />
        <asp:Label ID="Label7" runat="server" ForeColor="Red" Text="Label" Visible="False"></asp:Label><br />
                &nbsp;</DIV></td>
            <td></td>
          </tr>          
        </table>
	      <table width="100%" border="0" cellpadding="0" cellspacing="0">
            <tr>
              <td width="19%" style="height: 26px"><div align="right"></div></td>
              <td width="26%" style="height: 26px"><asp:ImageButton ID="ImageButton5" runat="server" ImageUrl="~/YX_SetUp/images/back.gif" OnClick="ImageButton5_Click" /></td>
              <td width="25%" style="height: 26px">
                  <asp:ImageButton ID="ImageButton6" runat="server" ImageUrl="images/next.gif" OnClick="ImageButton6_Click" /></td>
              <td width="30%" style="height: 26px"><asp:ImageButton ID="ImageButton16" runat="server" ImageUrl="images/skip.gif" OnClick="ImageButton16_Click" Enabled="False" />&nbsp;</td>
            </tr>
          </table></td>
	</tr>
	<tr>
		<td colspan="2" style="height: 57px">
			<img src="images/22_07.gif" alt="" width="657" height="57" border="0" usemap="#Map"></td>
	</tr>
</table>
<!-- End ImageReady Slices -->
<map name="Map"><area shape="rect" coords="104,6,203,21" href="http://www.changehope.com" target="_blank">
</map>
<map name="Map2"><area shape="rect" coords="71,325,206,341" href="http://www.changehope.com" target="_blank">
<area shape="rect" coords="71,349,203,362" href="http://bbs.changehope.com" target="_blank">
</map>
<map name="Map3"><area shape="rect" coords="5,2,197,53" href="http://www.changehope.com" target="_blank">
</map></asp:Panel>
<asp:Panel ID="Panel8" runat="server">
        <table id="Table7" width="700" height="532" border="0" cellpadding="0" cellspacing="0" align="center" style="margin-top:20px;">
	<tr>
		<td width="22" rowspan="4">
			<img src="images/22_01.gif" width="22" height="532" alt=""></td>
		<td colspan="2">
			<img src="images/22_02.gif" width="657" height="17" alt=""></td>
		<td width="21" rowspan="4">
			<img src="images/22_03.gif" width="21" height="532" alt=""></td>
	</tr>
	<tr>
		<td height="85" colspan="2" background="images/22_04.gif" valign="top"><table width="100%" border="0" cellpadding="0" cellspacing="0">
          <tr>
            <td width="32%" height="57"><img src="images/logo.gif" width="206" height="55" border="0" usemap="#Map3"></td>
            <td width="68%" valign="middle"><strong>易想多用户商城V2008_2.0</strong></td>
          </tr>
          <tr>
            <td height="23" colspan="2" valign="bottom" style="text-indent:10px; color:#FFFFFF">
                第五步：开始初始化数据库基本数据 (.net Framework 2.0)</td>
          </tr>
        </table></td>
	</tr>
	<tr>
		<td width="257" style="height: 373px">
			<img src="images/22_05.gif" alt="" width="257" height="373" border="0" usemap="#Map2"></td>
	  <td valign="top" bgcolor="#FFFFFF" style="width: 400px; height: 373px;"><table width="100%" border="0" cellpadding="0" cellspacing="0">
		  <!--DWLayoutTable-->
          <tr>
            <td height="11" colspan="3"><img src="images/22_06.gif" width="400" height="11"></td>
          </tr>
          <tr>
            <td height="24" style="width: 23px">&nbsp;</td>
            <td valign="top"><DIV align="left" style="text-align: center">本向导将协助您一步步的安装和初始化系统</DIV></td>
            <td>&nbsp;</td>
          </tr>
          <tr>
            <td height="254"></td>
            <td valign="top" style=" line-height:180%">
                初始化数据库当中的基本数据。</td>
            <td></td>
          </tr>          
        </table>
	      <table width="100%" border="0" cellpadding="0" cellspacing="0">
            <tr>
              <td width="19%" style="height: 26px"><div align="right"></div></td>
              <td width="26%" style="height: 26px"><asp:ImageButton ID="ImageButton11" runat="server" ImageUrl="~/YX_SetUp/images/back.gif" OnClick="ImageButton11_Click" /></td>
              <td width="25%" style="height: 26px">
                  <asp:ImageButton ID="ImageButton15" runat="server" ImageUrl="images/next.gif" OnClick="ImageButton15_Click" /></td>
              <td width="30%" style="height: 26px">
                  &nbsp;</td>
            </tr>
          </table></td>
	</tr>
	<tr>
		<td colspan="2" style="height: 57px">
			<img src="images/22_07.gif" alt="" width="657" height="57" border="0" usemap="#Map"></td>
	</tr>
</table>
<!-- End ImageReady Slices -->
<map name="Map"><area shape="rect" coords="104,6,203,21" href="http://www.changehope.com" target="_blank">
</map>
<map name="Map2"><area shape="rect" coords="71,325,206,341" href="http://www.changehope.com" target="_blank">
<area shape="rect" coords="71,349,203,362" href="http://bbs.changehope.com" target="_blank">
</map>
<map name="Map3"><area shape="rect" coords="5,2,197,53" href="http://www.changehope.com" target="_blank">
</map>
</asp:Panel>
        <asp:Panel ID="Panel4" runat="server">
        <table id="Table3" width="700" height="532" border="0" cellpadding="0" cellspacing="0" align="center" style="margin-top:20px;">
	<tr>
		<td width="22" rowspan="4">
			<img src="images/22_01.gif" width="22" height="532" alt=""></td>
		<td colspan="2">
			<img src="images/22_02.gif" width="657" height="17" alt=""></td>
		<td width="21" rowspan="4">
			<img src="images/22_03.gif" width="21" height="532" alt=""></td>
	</tr>
	<tr>
		<td colspan="2" background="images/22_04.gif" valign="top" style="height: 85px"><table width="100%" border="0" cellpadding="0" cellspacing="0">
          <tr>
            <td width="32%" height="57"><img src="images/logo.gif" width="206" height="55" border="0" usemap="#Map3"></td>
            <td width="68%" valign="middle"><strong>易想多用户商城V2008_2.0</strong></td>
          </tr>
          <tr>
            <td height="23" colspan="2" valign="bottom" style="text-indent:10px; color:#FFFFFF">
                第六步：完成数据库基本数据的初始化操作 (.net Framework 2.0)</td>
          </tr>
        </table></td>
	</tr>
	<tr>
		<td width="257">
			<img src="images/22_05.gif" alt="" width="257" height="373" border="0" usemap="#Map2"></td>
	  <td width="400" valign="top" bgcolor="#FFFFFF"><table width="100%" border="0" cellpadding="0" cellspacing="0">
		  <!--DWLayoutTable-->
          <tr>
            <td height="11" colspan="3"><img src="images/22_06.gif" width="400" height="11"></td>
          </tr>
          <tr>
            <td style="width: 23px; height: 24px;">&nbsp;</td>
            <td valign="top" style="height: 24px"><DIV align="left" style="text-align: center">本向导将协助您一步步的安装和初始化系统</DIV></td>
            <td style="height: 24px">&nbsp;</td>
          </tr>
          <tr>
            <td height="254" style="width: 23px"></td>
            <td valign="top" style=" line-height:180%" colspan="2"><DIV align="left" style="text-align: left">
            &nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label1" runat="server" Text="Label" ForeColor="Red" Visible="False"></asp:Label>
                &nbsp; &nbsp; &nbsp;&nbsp;<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label4" runat="server" Text="Label"　ForeColor="#FF0000" Visible="False"></asp:Label>
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label5" runat="server" Text="Label"　ForeColor="#FF0000" Visible="False"></asp:Label>
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label6" runat="server" Text="Label"　ForeColor="#FF0000" Visible="False"></asp:Label><br />
                &nbsp; &nbsp;
                <asp:Label ID="Label2" runat="server" ForeColor="#FF0000" Text="Label" Visible="False"></asp:Label>&nbsp;<br />
                &nbsp; &nbsp;
                <asp:Label ID="Label3" runat="server" ForeColor="#FF0000" Text="Label"></asp:Label>&nbsp;<br />
                &nbsp; &nbsp;&nbsp;
                <asp:Label ID="Label9" runat="server" ForeColor="#FF0000" Text="Label"></asp:Label><br />
                &nbsp; &nbsp;
                <asp:Label ID="Label8" runat="server" ForeColor="#FF0000" Text="Label"></asp:Label></DIV></td>
          </tr>
          
        </table>
	      <table width="100%" border="0" cellpadding="0" cellspacing="0">
              <tr>
                  <td width="19%">
                  </td>
                  <td colspan="2">
                      <asp:CheckBox ID="CheckBox1" runat="server" Text="初始化网站基本信息" /></td>
                  <td width="30%">
                  </td>
              </tr>
            <tr>
              <td width="19%"><div align="right"></div></td>
              <td style="width: 26%"><asp:ImageButton ID="ImageButton7" runat="server" ImageUrl="~/YX_SetUp/images/back.gif" OnClick="ImageButton7_Click" CausesValidation="False" /></td>
              <td width="25%">
                  <asp:ImageButton ID="ImageButton8" runat="server" ImageUrl="images/next.gif" OnClick="ImageButton8_Click" /></td>
              <td width="30%">
                  &nbsp;</td>
            </tr>
          </table></td>
	</tr>
	<tr>
		<td colspan="2">
			<img src="images/22_07.gif" alt="" width="657" height="57" border="0" usemap="#Map"></td>
	</tr>
</table>
<!-- End ImageReady Slices -->
<map name="Map"><area shape="rect" coords="104,6,203,21" href="http://www.changehope.com" target="_blank">
</map>
<map name="Map2"><area shape="rect" coords="71,325,206,341" href="http://www.changehope.com" target="_blank">
<area shape="rect" coords="71,349,203,362" href="http://bbs.changehope.com" target="_blank">
</map>
<map name="Map3"><area shape="rect" coords="5,2,197,53" href="http://www.changehope.com" target="_blank">
</map>
        </asp:Panel>
        <asp:Panel ID="Panel5" runat="server">
        <table id="Table4" width="700" height="532" border="0" cellpadding="0" cellspacing="0" align="center" style="margin-top:20px;">
	<tr>
		<td width="22" rowspan="4">
			<img src="images/22_01.gif" width="22" height="532" alt=""></td>
		<td colspan="2">
			<img src="images/22_02.gif" width="657" height="17" alt=""></td>
		<td width="21" rowspan="4">
			<img src="images/22_03.gif" width="21" height="532" alt=""></td>
	</tr>
	<tr>
		<td colspan="2" background="images/22_04.gif" valign="top" style="height: 85px"><table width="100%" border="0" cellpadding="0" cellspacing="0">
          <tr>
            <td width="32%" height="57"><img src="images/logo.gif" width="206" height="55" border="0" usemap="#Map3"></td>
            <td width="68%" valign="middle"><strong>易想多用户商城V2008_2.0</strong></td>
          </tr>
          <tr>
            <td height="23" colspan="2" valign="bottom" style="text-indent:10px; color:#FFFFFF">
                第七步：初始化网站基本信息 (.net Framework 2.0)</td>
          </tr>
        </table></td>
	</tr>
	<tr>
		<td width="257">
			<img src="images/22_05.gif" alt="" width="257" height="373" border="0" usemap="#Map2"></td>
	  <td width="400" valign="top" bgcolor="#FFFFFF"><table width="100%" border="0" cellpadding="0" cellspacing="0">
		  <!--DWLayoutTable-->
          <tr>
            <td height="11" colspan="3"><img src="images/22_06.gif" width="400" height="11"></td>
          </tr>
          <tr>
              <td style="width: 23px; height: 24px;">
              </td>
              <td valign="top" style="height: 24px">
                  本向导将协助您一步步的安装和初始化系统</td>
              <td style="height: 24px">
              </td>
          </tr>
          <tr>
            <td height="24" style="width: 23px">&nbsp;</td>
            <td valign="top"><DIV align="left" style="text-align: center">
            		 <table  align="center" cellpadding="1" cellspacing="1" border="0" width=100%  class="toptable grid">
        <tr>
          <td  align="center" bgcolor="#F6F6F6">网站名称：</td>
          <td height="25" align="left" bgcolor="#F6F6F6">
              <asp:TextBox ID="Web_Name" runat="server"></asp:TextBox>
          </td>
        </tr>
             <tr>
                 <td align="center" bgcolor="#f6f6f6">
                     网站URL：</td>
                 <td align="left" bgcolor="#f6f6f6" height="25">
                     <asp:TextBox ID="txtURL" runat="server"></asp:TextBox>
                     </td>
             </tr>
        <tr>
          <td align="center" bgcolor="#F6F6F6">网站描述：</td>
          <td  align="left" bgcolor="#F6F6F6"><asp:TextBox ID="Web_Ex"  runat="server"></asp:TextBox></td>
        </tr>
        <tr>
          <td align="center" bgcolor="#F6F6F6" style="height: 25px">电子邮件：</td>
          <td  align="left" bgcolor="#F6F6F6" style="height: 25px" ><asp:TextBox ID="Web_Email" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
          <td align="center" bgcolor="#F6F6F6">联系地址：</td>
          <td  align="left" bgcolor="#F6F6F6"><asp:TextBox ID="Web_Addr" runat="server"></asp:TextBox></td>
        </tr>
         <tr>
          <td align="center" bgcolor="#F6F6F6">网站版权：</td>
          <td  align="left" bgcolor="#F6F6F6"><asp:TextBox ID="Web_Copy" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
          <td align="center" bgcolor="#F6F6F6">联系电话：</td>
          <td  align="left" bgcolor="#F6F6F6" ><asp:TextBox ID="Web_tel" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
          <td align="center" bgcolor="#F6F6F6">传真号码：</td>
          <td  align="left" bgcolor="#F6F6F6" ><asp:TextBox ID="Web_Fac" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
          <td align="center" bgcolor="#F6F6F6">手机号码：</td>
        <td  align="left" bgcolor="#F6F6F6" ><asp:TextBox ID="Web_Mobel" runat="server"></asp:TextBox></td>
        </tr>
</table>
                &nbsp;</DIV></td>
            <td>&nbsp;</td>
          </tr>
          
        </table>
	      <table width="100%" border="0" cellpadding="0" cellspacing="0">
            <tr>
              <td width="19%" style="height: 26px"><div align="right"></div></td>
              <td width="26%" style="height: 26px"><asp:ImageButton ID="ImageButton9" runat="server" ImageUrl="~/YX_SetUp/images/back.gif" OnClick="ImageButton9_Click" CausesValidation="False" /></td>
              <td width="25%" style="height: 26px">
                  <asp:ImageButton ID="ImageButton10" runat="server" ImageUrl="images/next.gif" OnClick="ImageButton10_Click" /></td>
              <td width="30%" style="height: 26px">
                  &nbsp;</td>
            </tr>
          </table></td>
	</tr>
	<tr>
		<td colspan="2">
			<img src="images/22_07.gif" alt="" width="657" height="57" border="0" usemap="#Map"></td>
	</tr>
</table>
<!-- End ImageReady Slices -->
<map name="Map"><area shape="rect" coords="104,6,203,21" href="http://www.changehope.com" target="_blank">
</map>
<map name="Map2"><area shape="rect" coords="71,325,206,341" href="http://www.changehope.com" target="_blank">
<area shape="rect" coords="71,349,203,362" href="http://bbs.changehope.com" target="_blank">
</map>
<map name="Map3"><area shape="rect" coords="5,2,197,53" href="http://www.changehope.com" target="_blank">
</map>
        </asp:Panel>
        <asp:Panel ID="Panel6" runat="server">
        <table id="Table5" width="700" height="532" border="0" cellpadding="0" cellspacing="0" align="center" style="margin-top:20px;">
	<tr>
		<td width="22" rowspan="4">
			<img src="images/22_01.gif" width="22" height="532" alt=""></td>
		<td colspan="2">
			<img src="images/22_02.gif" width="657" height="17" alt=""></td>
		<td width="21" rowspan="4">
			<img src="images/22_03.gif" width="21" height="532" alt=""></td>
	</tr>
	<tr>
		<td height="85" colspan="2" background="images/22_04.gif" valign="top"><table width="100%" border="0" cellpadding="0" cellspacing="0">
          <tr>
            <td width="32%" height="57"><img src="images/logo.gif" width="206" height="55" border="0" usemap="#Map3"></td>
            <td width="68%" valign="middle"><strong>易想多用户商城V2008_2.0</strong></td>
          </tr>
          <tr>
            <td colspan="2" valign="bottom" style="text-indent:10px; color:#FFFFFF; height: 23px;">
                第八步：完成安装 (.net Framework 2.0)</td>
          </tr>
        </table></td>
	</tr>
	<tr>
		<td width="257">
			<img src="images/22_05.gif" alt="" width="257" height="373" border="0" usemap="#Map2"></td>
	  <td width="400" valign="top" bgcolor="#FFFFFF"><table width="100%" border="0" cellpadding="0" cellspacing="0">
		  <!--DWLayoutTable-->
          <tr>
            <td height="11" colspan="3"><img src="images/22_06.gif" width="400" height="11"></td>
          </tr>
          <tr>
            <td height="24" style="width: 23px">&nbsp;</td>
            <td valign="top"><DIV align="left" style="text-align: center">本向导将协助您一步步的安装和初始化系统</DIV></td>
            <td>&nbsp;</td>
          </tr>
          <tr>
            <td height="254" style="width: 23px"></td>
            <td valign="top" style=" line-height:180%"><DIV align="left" style="text-align: left">
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 恭喜，网站已经成功已经安装完毕，单击完成以访问站点首页！</DIV></td>
            <td></td>
          </tr>
          
        </table>
	      <table width="100%" border="0" cellpadding="0" cellspacing="0">
              <tr>
                  <td style="height: 15px" width="19%">
                  </td>
                  <td colspan="2" style="height: 15px">
                      <asp:CheckBox ID="CheckBox2" runat="server" Text="删除安装文件，建议选择" /></td>
                  <td style="height: 15px" width="30%">
                  </td>
              </tr>
            <tr>
              <td width="19%" style="height: 26px"><div align="right"></div></td>
              <td style="height: 26px" colspan="2">
                  <asp:ImageButton ID="ImageButton12" runat="server" ImageUrl="~/YX_SetUp/images/finish.gif" OnClick="ImageButton12_Click" /></td>
              <td width="30%" style="height: 26px">
                  &nbsp;</td>
            </tr>
          </table></td>
	</tr>
	<tr>
		<td colspan="2">
			<img src="images/22_07.gif" alt="" width="657" height="57" border="0" usemap="#Map"></td>
	</tr>
</table>
<!-- End ImageReady Slices -->
<map name="Map"><area shape="rect" coords="104,6,203,21" href="http://www.changehope.com" target="_blank">
</map>
<map name="Map2"><area shape="rect" coords="71,325,206,341" href="http://www.changehope.com" target="_blank">
<area shape="rect" coords="71,349,203,362" href="http://bbs.changehope.com" target="_blank">
</map>
<map name="Map3"><area shape="rect" coords="5,2,197,53" href="http://www.changehope.com" target="_blank">
</map>
        </asp:Panel>       
    </div>
    </form>
</body>
</html>
