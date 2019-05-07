<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<%-- <%
	Map<String,Object> map=(HashMap<String,Object>)request.getAttribute("map");
	Search search=(Search)request.getAttribute("search");
	Page resultPage=(Page)request.getAttribute("resultPage");
	

	List<User> userList=(ArrayList<User>)map.get("userList");
	List<Purchase> purchaseList=(ArrayList<Purchase>)map.get("purchaseList");
	
	String searchCondition=CommonUtil.null2str(search.getSearchCondition());
	String searchKeyword=CommonUtil.null2str(search.getSearchKeyword());
	
%> --%>

<html>
<head>
<title>���� �����ȸ</title>

<link rel="stylesheet" href="/css/admin.css" type="text/css">

<script type="text/javascript">
	function fncGetPurchaseList(currentPage) {
		var str = "/purchase/listPurchase?";
		str = str + "currentPage=" + currentPage;
		location.href = str;
	}
	function fncGetList(currentPage) {
		document.getElementById("currentPage").value = currentPage;
		document.detailForm.submit();
	}
</script>
</head>

<body bgcolor="#ffffff" text="#000000">

	<div style="width: 98%; margin-left: 10px;">

		<form name="detailForm" action="/purchase/listPurchase" method="post">

			<table width="100%" height="37" border="0" cellpadding="0"
				cellspacing="0">
				<tr>
					<td width="15" height="37"><img src="/images/ct_ttl_img01.gif"
						width="15" height="37"></td>
					<td background="/images/ct_ttl_img02.gif" width="100%"
						style="padding-left: 10px;">
						<table width="100%" border="0" cellspacing="0" cellpadding="0">
							<tr>
								<td width="93%" class="ct_ttl01">���� �����ȸ</td>
							</tr>
						</table>
					</td>
					<td width="12" height="37"><img src="/images/ct_ttl_img03.gif"
						width="12" height="37"></td>
				</tr>
			</table>

			<table width="100%" border="0" cellspacing="0" cellpadding="0"
				style="margin-top: 10px;">
				<tr>
					<td colspan="11">��ü ${resultPage.totalCount} �Ǽ�, ����
						${resultPage.currentPage} ������</td>
				</tr>
				<tr>
					<td class="ct_list_b" width="100">No</td>
					<td class="ct_line02"></td>
					<td class="ct_list_b" width="150">ȸ��ID</td>
					<td class="ct_line02"></td>
					<td class="ct_list_b" width="150">ȸ����</td>
					<td class="ct_line02"></td>
					<td class="ct_list_b">��ȭ��ȣ</td>
					<td class="ct_line02"></td>
					<td class="ct_list_b">�����Ȳ</td>
					<td class="ct_line02"></td>
					<td class="ct_list_b">��������</td>
				</tr>
				<tr>
					<td colspan="11" bgcolor="808285" height="1"></td>
				</tr>


				<c:set var="i" value="0" />
				<c:forEach var="purchase" items="${map.purchaseList}">
					<c:set var="user" value="${map.userList[i]}" />
					<tr class="ct_list_pop">
						<td align="center">
							<a href="/purchase/getPurchase?tranNo=${purchase.tranNo}">${i+1}</a>
						</td>
						<td></td>
						<td align="left">
							<a href="/user/getUser?userId=${user.userId}">${user.userId}</a>
						</td>
						<td></td>
			
						<td align="left">${user.userName}</td>
						<td></td>

						<td align="left">${user.phone}</td>
						<td></td>
						<td align="left">���� 
						
						<c:forEach items="${map.codeList}" var="code">
							<c:if test="${purchase.tranCode eq code.code}">
								${code.codeName}
							</c:if>
						</c:forEach>
						���� �Դϴ�.
						</td>
						<td></td>
						<td align="left">
							<c:if test="${purchase.tranCode=='3'}">
								<a href="/purchase/updateTranCode?tranNo=${purchase.tranNo}&tranCode=4">���ǵ���</a>
							</c:if>
							<c:if test="${purchase.tranCode=='2'}">
								<a href="/purchase/updateTranCode?tranNo=${purchase.tranNo}&tranCode=5">�������</a>
							</c:if>
						</td>
					</tr>
					
					<c:set var="i" value="${i+1}" />
				</c:forEach>

				<tr>
					<td colspan="11" bgcolor="D6D7D6" height="1"></td>
				</tr>

			</table>

			<table width="100%" border="0" cellspacing="0" cellpadding="0"
				style="margin-top: 10px;">
				<tr>
					<td align="center">
					<input type="hidden" id="currentPage" name="currentPage" value="" /> 
						<jsp:include page="../common/pageNavigator.jsp" /></td>
				</tr>
			</table>

			<!--  ������ Navigator �� -->
		</form>

	</div>

</body>
</html>