<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%-- <%
	Purchase purchase=(Purchase)request.getAttribute("purchase");
%>  --%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<form name="updatePurchase" action="/purchase/updatePurchaseView?tranNo=0" method="post">

������ ���� ���Ű� �Ǿ����ϴ�.

<table border="1">
	<tbody><tr>
		<td>��ǰ��ȣ</td>
		<%-- <td><%=purchase.getPurchaseProd().getProdNo()%></td> --%>
		<td>${purchase.purchaseProd.prodNo}</td>
		<td></td>
	</tr>
	<tr>
		<td>�����ھ��̵�</td>
		<%-- <td><%=purchase.getBuyer().getUserId()%></td> --%>
		<td>${purchase.buyer.userId}</td>
		<td></td>
	</tr>
	<tr>
		<td>���Ź��</td>
		<td>
		
			<%-- <%if(purchase.getPaymentOption().equals("1")){ %> --%>
			<c:if test="${purchase.paymentOption=='1'}">
			���ݱ���
		<%--<%}else{%> --%>
			</c:if>
			<c:if test="${purchase.paymentOption=='2'}">
			�ſ뱸��
		<%--<%}%> --%>
			</c:if>
		</td>
		<td></td>
	</tr>
	<tr>
		<td>�������̸�</td>
		<%-- <td><%=purchase.getBuyer().getUserName()%></td> --%>
		<td>${purchase.buyer.userName}</td>
		<td></td>
	</tr>
	<tr>
		<td>�����ڿ���ó</td>
		<%-- <td><%=purchase.getReceiverPhone()%></td> --%>
		<td>${purchase.receiverPhone}</td>
		<td></td>
	</tr>
	<tr>
		<td>�������ּ�</td>
		<%-- <td><%=purchase.getDivyAddr()%></td> --%>
		<td>${purchase.divyAddr}</td>
		<td></td>
	</tr>
		<tr>
		<td>���ſ�û����</td>
		<%-- <td><%=purchase.getDivyRequest()%></td> --%>
		<td>${purchase.divyRequest}</td>
		<td></td>
	</tr>
	<tr>
		<td>����������</td>
		<%-- <td><%=purchase.getDivyDate()%></td> --%>
		<td>${purchase.divyDate}</td>
		<td></td>
	</tr>
</tbody></table>
</form>
</body>
</html>