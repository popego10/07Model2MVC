<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<%-- <%
	Purchase purchase=(Purchase)request.getAttribute("purchase");
	User user=(User)request.getAttribute("user");
	
	System.out.println("listPurchaseDetail.jsp�� purchase : "+purchase);
	System.out.println("listPurchaseDetail.jsp�� user : "+user);
%> --%>



<html>
<head>
<title>���Ż���ȸ</title>

<link rel="stylesheet" href="/css/admin.css" type="text/css">

</head>

<body bgcolor="#ffffff" text="#000000">

	<table width="100%" height="37" border="0" cellpadding="0"
		cellspacing="0">
		<tr>
			<td width="15" height="37"><img src="/images/ct_ttl_img01.gif"
				width="15" height="37" /></td>
			<td background="/images/ct_ttl_img02.gif" width="100%"
				style="padding-left: 10px;">
				<table width="100%" border="0" cellspacing="0" cellpadding="0">
					<tr>
						<td width="93%" class="ct_ttl01">���Ż���ȸ</td>
						<td width="20%" align="right">&nbsp;</td>
					</tr>
				</table>
			</td>
			<td width="12" height="37"><img src="/images/ct_ttl_img03.gif"
				width="12" height="37" /></td>
		</tr>
	</table>

	<table width="100%" border="0" cellspacing="0" cellpadding="0"
		style="margin-top: 13px;">
		<tr>
			<td height="1" colspan="3" bgcolor="D6D6D6"></td>
		</tr>
		<tr>
			<td width="104" class="ct_write">��ǰ��ȣ <img
				src="/images/ct_icon_red.gif" width="3" height="3" align="absmiddle" />
			</td>
			<td bgcolor="D6D6D6" width="1"></td>
			<td class="ct_write01">
				<table width="100%" border="0" cellspacing="0" cellpadding="0">
					<tr>
						<td width="105">
							<%-- <%=purchase.getPurchaseProd().getProdNo()%></td> --%>
							${purchase.purchaseProd.prodNo}
						</td>
						<td></td>
					</tr>
				</table>
			</td>
		</tr>
		<tr>
			<td height="1" colspan="3" bgcolor="D6D6D6"></td>
		</tr>
		<tr>
			<td width="104" class="ct_write">�����ھ��̵� <img
				src="/images/ct_icon_red.gif" width="3" height="3" align="absmiddle" />
			</td>
			<td bgcolor="D6D6D6" width="1"></td>
			<td class="ct_write01">
				<%-- <%=purchase.getBuyer().getUserId()%> --%>
				${purchase.buyer.userId}
			</td>
		</tr>
		<tr>
			<td height="1" colspan="3" bgcolor="D6D6D6"></td>
		</tr>

		<tr>
			<td width="104" class="ct_write">���Ź��</td>
			<td bgcolor="D6D6D6" width="1"></td>
			<td class="ct_write01">
				<%-- <%if(purchase.getPaymentOption().equals("1")){ %> --%> <c:if
					test="${purchase.paymentOption == '1'}">
				���ݱ���
			</c:if> <c:if test="${purchase.paymentOption == '2'}">
				�ſ뱸��
			<%-- <%}%> --%>
				</c:if>
			</td>
		</tr>
		<tr>
			<td height="1" colspan="3" bgcolor="D6D6D6"></td>
		</tr>
		<tr>
			<td width="104" class="ct_write">�������̸�</td>
			<td bgcolor="D6D6D6" width="1"></td>
			<td class="ct_write01">
				<%-- <%=purchase.getReceiverName()%> --%> ${purchase.receiverName}
			</td>
		</tr>
		<tr>
			<td height="1" colspan="3" bgcolor="D6D6D6"></td>
		</tr>
		<tr>
			<td width="104" class="ct_write">�����ڿ���ó</td>
			<td bgcolor="D6D6D6" width="1"></td>
			<td class="ct_write01">
				<%-- <%=purchase.getReceiverPhone()%> --%> ${purchase.receiverPhone}
			</td>
		</tr>
		<tr>
			<td height="1" colspan="3" bgcolor="D6D6D6"></td>
		</tr>
		<tr>
			<td width="104" class="ct_write">�������ּ�</td>
			<td bgcolor="D6D6D6" width="1"></td>
			<td class="ct_write01">
				<%-- <%=purchase.getDivyAddr()%> --%> ${purchase.divyAddr}
			</td>
		</tr>
		<tr>
			<td height="1" colspan="3" bgcolor="D6D6D6"></td>
		</tr>
		<tr>
			<td width="104" class="ct_write">���ſ�û����</td>
			<td bgcolor="D6D6D6" width="1"></td>
			<td class="ct_write01">
				<%-- <%=purchase.getDivyRequest()%> --%> ${purchase.divyRequest}
			</td>
		</tr>
		<tr>
			<td height="1" colspan="3" bgcolor="D6D6D6"></td>
		</tr>
		<tr>
			<td width="104" class="ct_write">��������</td>
			<td bgcolor="D6D6D6" width="1"></td>
			<td class="ct_write01">
				<%-- <%=purchase.getDivyDate()%> --%> ${purchase.divyDate}
			</td>
		</tr>

		<tr>
			<td height="1" colspan="3" bgcolor="D6D6D6"></td>
		</tr>

		<tr>
			<td width="104" class="ct_write">�ֹ���</td>
			<td bgcolor="D6D6D6" width="1"></td>
			<td class="ct_write01">
				<%-- <%=purchase.getOrderDate()%> --%> ${purchase.orderDate}
			</td>
		</tr>

		<tr>
			<td height="1" colspan="3" bgcolor="D6D6D6"></td>
		</tr>

	</table>

	<table width="100%" border="0" cellspacing="0" cellpadding="0"
		style="margin-top: 10px;">
		<tr>
			<td width="53%"></td>
			<td align="right">
				<table border="0" cellspacing="0" cellpadding="0">
					<tr>
						<c:if test="${purchase.tranCode == '2'}">
							<td width="17" height="23"><img src="/images/ct_btnbg01.gif"
								width="17" height="23" /></td>
							<td background="/images/ct_btnbg02.gif" class="ct_btn01"
								style="padding-top: 3px;">
								<%-- <a href="/updatePurchaseView.do?tranNo=<%=purchase.getTranNo()%>">����</a> --%>
								<a href="/purchase/updatePurchaseView?tranNo=${purchase.tranNo}">����</a>
							</td>
							<td width="14" height="23"><img src="/images/ct_btnbg03.gif"
								width="14" height="23" /></td>
						</c:if>
						<td width="30"></td>
						<td width="17" height="23"><img src="/images/ct_btnbg01.gif"
							width="17" height="23" /></td>
						<td background="/images/ct_btnbg02.gif" class="ct_btn01"
							style="padding-top: 3px;"><a
							href="javascript:history.go(-1);">Ȯ��</a></td>
						<td width="14" height="23"><img src="/images/ct_btnbg03.gif"
							width="14" height="23" /></td>
					</tr>
				</table>
			</td>
		</tr>
	</table>

</body>
</html>