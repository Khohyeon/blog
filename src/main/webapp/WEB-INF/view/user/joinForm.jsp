<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ include file="../layout/header.jsp" %>
        <div class="align_center">
            <h1>회원가입 페이지</h1>
        </div>

        <hr />
        <div class="align_center">
            <form action="/join" method="post">
                <table border="1">
                    <tr>
                        <th>유저네임</th>
                        <td><input type="text" name="username" placeholder="Enter username"><br /></td>
                    </tr>
                    <tr>
                        <th>패스워드</th>
                        <td><input type="password" name="password" placeholder="Enter password"><br /></td>
                    </tr>
                    <tr>
                        <th>이메일</th>
                        <td><input type="text" name="email" placeholder="Enter email"><br /></td>
                    </tr>
                </table>
                <button type="submit">회원가입 완료</button>
            </form>
        </div>
        <%@ include file="../layout/footer.jsp" %>