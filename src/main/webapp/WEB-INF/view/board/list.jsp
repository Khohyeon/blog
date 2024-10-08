<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ include file="../layout/header.jsp" %>
        <div class="align_center">
            <h1>나의 게시물 목록 페이지</h1>
        </div>

        <hr />
        <div class="align_center">
            <table border="1">
                <tr>
                    <th>번호</th>
                    <th>제목</th>
                    <th>작성일</th>
                </tr>
                <c:forEach items="${boardList}" var="board">
                <tr>
                    <td>${board.id}</td>
                    <td>
                    <!-- 제목에 상세보기 링크 추가 -->
                    <a href="detail?id=${board.id}">${board.title}</a>
                    </td>
                    <td>${board.createdAt}</td>
                </tr>
                </c:forEach>
            </table>
        </div>
        <%@ include file="../layout/footer.jsp" %>