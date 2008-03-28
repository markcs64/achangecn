<%@ page language="C#" autoeventwireup="true" inherits="Receive, App_Web_qtc2vu4d" %>

<html>
  <head>
    <title>网上支付接口示例</title>
  </head>
  <body>
		<TABLE width=500 border=0 align="center" cellPadding=0 cellSpacing=0>

			<TR> 
			  <TD vAlign=top align=middle> <div align="left"><B>订单号:<%=v_oid%></B></div></TD>
			</TR>
			<TR> 
			  <TD vAlign=top align=middle> <div align="left"><B>支付银行:<%=v_pmode%></B></div></TD>
			</TR>
			<TR> 
			  <TD vAlign=top align=middle> <div align="left"><B>支付结果:<%=status_msg%></B></div></TD>
			</TR>
			<TR> 
			  <TD vAlign=top align=middle> <div align="left"><B>支付金额:<%=v_amount%></B></div></TD>
			</TR>
			<TR> 
			  <TD vAlign=top align=middle> <div align="left"><B>支付币种:<%=v_moneytype%></B></div></TD>
			</TR>
			<TR> 
			  <TD vAlign=top align=middle> <div align="left"><B>备注1:<%=remark1%></B></div></TD>
			</TR>			
			<TR> 
			  <TD vAlign=top align=middle> <div align="left"><B>备注2:<%=remark2%></B></div></TD>
			</TR>				

		</TABLE>
	
  </body>
</html>

