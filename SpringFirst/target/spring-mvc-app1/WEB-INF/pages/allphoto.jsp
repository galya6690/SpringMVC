<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>HTML код таблицы, примеры</title>
    <style type="text/css">
        TABLE {
            table-layout: fixed; /* Ячейки фиксированной ширины */
        }
    </style>
</head>
<body>

    <div align="center">
    <form action="/deleteAll"  method="POST">
        <table align="center" width="50%" cellspacing="0" cellpadding="4" border="1">
            <tr>
                <td width="200">id</td>
                <td align="center"> photo </td>
                <td  align="center"> delete  </td>
            </tr>
            <c:forEach var="item" items="${photos}">
                <tr>
                    <td width="200">${item.key}</td>
                    <td align="center"> <img src="/photo/${item.key}" width="200" height="120"  /></td>
                    <td  align="center"> <input type="checkbox" name="delete" value="${item.key}"> </td>
                </tr>
            </c:forEach>
        </table>
        <input type="submit" value="Видалити вибрані фото" />
    </form>
    </div>
</body>
</html>
