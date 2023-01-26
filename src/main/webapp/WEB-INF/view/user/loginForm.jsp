<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

        <%@ include file="../layout/header.jsp" %>

        <div id="form">
            <form action="/login" method="post">
                <table border="1">
                <tr>
                    <th>ID</th>
                    <td><input type="text" name="username"></td>
                </tr>
                <tr>
                    <th>패스워드</th>
                    <td><input type="password" name="password"></td>
                </tr>
            </table>
                <button type="submit">로그인</button>
            </form>
        </div>
<%@ include file="../layout/footer.jsp" %>