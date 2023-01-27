<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ include file="../layout/header.jsp" %>
        <div class="align_center">
            <h1>회원수정 페이지</h1>
        </div>

        <hr />
        <div class="align_center">
            <form action="/update" method="post">
                <table border="1">
                    <tr>
                        <th>유저네임</th>
                        <td><input type="text" name="username" value="ssar" placeholder="Enter username"><br /></td>
                    </tr>
                    <tr>
                        <th>패스워드</th>
                        <td><input type="password" name="password" value="1234" placeholder="Enter password"><br /></td>
                    </tr>
                    <tr>
                        <th>이메일</th>
                        <td><input type="text" name="email" value="ssar@nate.com" placeholder="Enter email"><br /></td>
                    </tr>
                </table>
                <button type="submit">수정완료</button>
            </form>
        </div>
        <%@ include file="../layout/footer.jsp" %>