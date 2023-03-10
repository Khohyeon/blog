<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <!DOCTYPE html>
        <html lang="en">

        <head>
            <meta charset="UTF-8">
            <meta http-equiv="X-UA-Compatible" content="IE=edge">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <title>구매서버</title>
            <link rel="stylesheet" href="/css/style.css">
        </head>

        <body>
            <div class="align_center">
                <c:choose>
                    <c:when test="${principal == null}">
                        <a href="/login">로그인</a>
                        <a href="/join">회원가입</a>
                    </c:when>

                    <c:otherwise>
                        <a href="/logout">로그아웃</a>
                        <a href="/update">회원정보수정</a>
                    </c:otherwise>
                </c:choose>
            </div>