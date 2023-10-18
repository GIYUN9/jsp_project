<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.kh.notice.model.vo.Notice"%>
<%
	Notice n = (Notice)request.getAttribute("notice");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
    .outer{
        background: black;
        color: white;
        width: 1000px;
        height: 500px;
        margin: auto;
        margin-top: 50px;
    }
    .outer > table{
        border: 1px solid white;
        border-collapse: collapse;
    }
    .outer > table tr, .outer > table td{
        border: 1px solid white;
    }
</style>
</head>
<body>
    <%@ include file="../common/menubar.jsp" %>
    <%
		String userId = loginUser.getUserId();
		String userName = loginUser.getUserName();
	
	%>
    <div class="outer" align="center">
        <br>
        <h2 align="center">공지사항 상세보기</h2>
        <br>

        <table>
            <tr>
                <th width="70">제목</th>
                <td colspan="3" width="430"><%=n.getNoticeTitle() %></td>
            </tr>
            <tr>
                <th>작성자</th>
                <td><%=n.getNoticeWriter() %></td>
                <th>작성일</th>
                <td><%=n.getCreateDate() %></td>
            </tr>
            <tr>
                <th>내용</th>
                <td colspan="3">
                    <p style="height: 150px;"><%=n.getNoticeContent() %></p>
                </td>
            </tr>
        </table>
        <br><br>
        
        <div>
            <a href="<%=contextPath %>/list.no" class="btn btn-sm btn-secondary">목록가기</a>
            <%if(loginUser != null&& loginUser.getUserId().equals(n.getNoticeWriter())) { %>
            <!-- 현재 로그인한 사용자가 해당 글을 쓴 본인일떄만 -->
	            <a href="<%=contextPath %>/updateForm.no?num=<%=n.getNoticeNo() %>" class="btn btn-sm btn-warning">수정하기</a>
	            <button type="button" class="btn btn-sm btn-danger" data-bs-toggle="modal" data-bs-target="#???">삭제하기</button>
            <%} %>
        </div>
    </div>

         <!-- 공지사항 삭제용 Modal -->
         <div class="modal" id="deleteNoticeModal">
            <div class="modal-dialog">
                <div class="modal-content">
            
                    <!-- Modal Header -->
                    <div class="modal-header">
                    <h4 class="modal-title">공지사항 삭제</h4>
                    <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
                    </div>
            
                    <!-- Modal body -->
                    <div class="modal-body" align="center">
                        <form action="<%=contextPath%>/???" method="post">
                            <b>삭제 후 복구가 불가능합니다. <br> 정말로 삭제 하시겠습니까? </b>
                            <br><br>
                            
                            <input type="hidden" name="userId" value="<%=userId %>">
                            
                            비밀번호 : <input type="password" name="userPwd" required>
                            <br><br>
                            <button type="submit" class="btn btn-sm btn-danger">삭제하기</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
</body>
</html>