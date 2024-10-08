<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="../layout/header.jsp" %>

<div class="align_center">
    <h1>게시물 상세보기 페이지</h1>
</div>

<hr />

<div class="align_center">
    <table border="1">
        <tr>
            <th>번호</th>
            <td>${board.id}</td>
        </tr>
        <tr>
            <th>제목</th>
            <td>${board.title}</td>
        </tr>
        <tr>
            <th>내용</th>
            <td>${board.content}</td>
        </tr>
        <tr>
            <th>작성자</th>
            <td>${board.user.username}</td>
        </tr>
        <tr>
            <th>작성일</th>
            <td>${board.createdAt}</td>
        </tr>
    </table>

    <br>
    <!-- 수정 및 삭제 버튼 -->
    <div class="button_group" style="margin-top: 20px;">
        <form action="editBoard.do" method="get" style="display:inline;">
            <input type="hidden" name="id" value="${board.id}" />
            <button type="submit">수정</button>
        </form>
        <form action="deleteBoard.do" method="post" style="display:inline;" onsubmit="return confirm('정말 삭제하시겠습니까?');">
            <input type="hidden" name="id" value="${board.id}" />
            <button type="submit">삭제</button>
        </form>
        <a href="boardList.do"><button type="button">목록으로</button></a>
    </div>
</div>

<%@ include file="../layout/footer.jsp" %>
