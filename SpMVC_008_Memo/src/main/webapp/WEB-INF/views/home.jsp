<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<c:set value="${pageContext.request.contextPath}" var="rootPath" />    
   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />

<title>Insert title here</title>
<link rel="stylesheet" href="${rootPath }/static/css/home.css?asdfda2sdffdd2sdf"/>
<script>
	const rootPath = "${rootPath}"
</script>
<script src="${rootPath}/static/memo.js?20220dssd62sssssdfs7002"></script>
</head>
<body>
	<c:if test="${empty USERNAME }">
	<h1>로그인을 해주세요!</h1>
	</c:if>
	<c:if test="${not empty USERNAME }">
	<h1>${USERNAME} 님 반갑습니다</h1>
	</c:if>
	<table class="memo">
		<thead>
			<tr>
				<th>SEQ</th>
				<th>작성일자</th>
				<th>작성시각</th>
				<th>메모</th>
				<th></th>
			</tr>
		</thead>
		<tbody>
			<c:if test="${empty MEMOS}">
				<tr><td colspan="4">메모가 없습니다</td></tr>
			</c:if>
			<c:forEach items="${MEMOS}" var="MEMO" varStatus="INDEX">
				<tr data-seq="${MEMO.m_seq}">
					<td>${INDEX.count}</td>
					<td>${MEMO.m_date}</td>
					<td>${MEMO.m_time}</td>
					<td>${MEMO.m_memo}</td>
					<td class="delete-btn">삭제</td>
				</tr>
			</c:forEach>
		</tbody>	
	</table>
	<div class="btn">
		<a href="${rootPath}/memo/insert">WRITE</a>
		<c:if test="${empty USERNAME}">
			<a href="${rootPath}/user/login">LOGIN</a>
		</c:if>
		<c:if test="${not empty USERNAME}">
			<a href="${rootPath}/user/logout">LOGOUT</a>
		</c:if>
		<a href="${rootPath}/memo/trashcan">TRASHCAN</a>
	</div>
</body>
</html>


