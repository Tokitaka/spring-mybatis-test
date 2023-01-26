<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

        <%@ include file="../layout/header.jsp" %>
            <div id="form">
                <table border="1">
                    <tr>
                        <th>번호</th>
                        <th>제목</th>
                        <th>작성일</th>
                    </tr>
                    <c:forEach items="${allBoardList}" var="allBoardList">
                        <tr>
                            <td>${allBoardList.id}</td>
                            <td>${allBoardList.title}</td>
                            <td>${allBoardList.createdAtToString}</td>
                        </tr>
                    </c:forEach>
                </table>
            </div>

            <%@ include file="../layout/footer.jsp" %>

    
        