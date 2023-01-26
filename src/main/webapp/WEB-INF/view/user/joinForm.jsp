<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

        <%@ include file="../layout/header.jsp" %>

            <div id="form">
                <form action="/join" method="post" id="table">
                    <table border="1">
                        <tr>
                            <th>ID</th>
                            <td><input type="text" name="username" required></td>
                        </tr>
                        <tr>
                            <th>패스워드</th>
                            <td><input type="password" name="password" required></td>
                        </tr>
                        <tr>
                            <th>Email</th>
                            <td><input type="email" name="email" required></td>
                        </tr>
                    </table>
                    <button type="submit">회원가입완료</button>
                </form>
            </div>

            <%@ include file="../layout/footer.jsp" %>