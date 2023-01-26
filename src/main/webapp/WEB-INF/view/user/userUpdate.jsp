<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

        <%@ include file="../layout/header.jsp" %>
            <div id="form">
                <form action="/userUpdate" method="post">
                <table border=1>
                    <tr>
                        <th>ID</th>
                        <td>${principal.username}</td>
                    </tr>
                    <tr>
                        <th>패스워드</th>
                        <td><input type="password" name="password"></td>
                    </tr>
                    <tr>
                    <th>Email</th>
                    <td><input type="email" name="email"></td>
                    </tr>
                </table>
                    <button>회원수정완료</button>
                </form>
            </div>

            <%@ include file="../layout/footer.jsp" %>