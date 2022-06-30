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
<link rel="stylesheet" href="${rootPath }/static/css/detail.css?asdfssasddffdds2sdf"/>
<title>Insert title here</title>
</head>
<body>
	<div><span>작성자 :</span> ${MEMO.m_author}</div>
	<div><span>작성일자 :</span> ${MEMO.m_date}</div>
	<div><span>작성시각 :</span> ${MEMO.m_time}</div>
	<div><span>메모 :</span> ${MEMO.m_memo}</div>
	<div> 
		<img src="${rootPath}/upload/${MEMO.m_up_image}" 
				alt="${MEMO.m_image}"/>
	</div>
	<div>
		<a href="${rootPath}/">Home 으로</a>
		<a href="${rootPath}/memo/${MEMO.m_seq}/update">수정</a>
		<a href="${rootPath}/memo/${MEMO.m_seq}/toTrashcan">삭제</a>
	</div>

</body>
</html>