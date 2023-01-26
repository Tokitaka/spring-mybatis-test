<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

        <!DOCTYPE html>
        <html lang="en">

        <head>
            <meta charset="UTF-8">
            <meta http-equiv="X-UA-Compatible" content="IE=edge">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <title>Document</title>
            <style>
                #header {
                    text-align: center;
                }

                #header_text {
                    background-color: antiquewhite;
                    padding: 20px;
                }

                #form {
                    display: flex;
                    text-align: center;
                    justify-content: center;
                    padding-top: 10px;
                    padding-bottom: 20px;
                }

                #footer {
                    text-align: center;
                }
            </style>
        </head>

        <body>
            <header id="header">
                <h1 id="header_text">${headtitle}</h1>
                <hr>
                <c:choose>
                <c:when test="${principal == null}">
                <a href="/loginForm">로그인</a>
                <a href="/joinForm">회원가입</a>
                </c:when>
                <c:otherwise>
                <a href="/">글쓰기</a>
                <a href="/list/${principal.id}">내글보기</a>
                <a href="/userUpdateForm">회원정보수정</a>
                <a href="/logout">로그아웃</a>
                </c:otherwise>
                </c:choose>
            </header>