<%@ page import="java.util.ArrayList" %>
<%@ page import="com.company.Card" %>
<%@ page import="java.util.Iterator" %>
<%@ page import="java.util.Collections" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 08.10.2020
  Time: 11:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous"> <%--Link the Bootstrap--%>

    <title>Title</title>
    <style>
        *{
            box-sizing: border-box;
        }
        div.all{
            width: 100%;
            float: right;
            justify-content: center;
            align-items: center;
        }
        div.card{
            float: left;
            justify-content: center;
            align-items: center;
            width: 6.6%;
            height: auto;
        }
        table{
            width: 100%;
        }
    </style>
</head>

<body>

    <div class="all">
        <%if(request.getAttribute("Coloda")!=null) {
        ArrayList<Card> coloda = (ArrayList<Card>) request.getAttribute("Coloda");
        Iterator<Card> cardIterator = coloda.iterator();
        while (cardIterator.hasNext()) {
            Card card = cardIterator.next();
            out.println("<div class=\"card\"><img src=\""+card.getImage()+"\"class=\"d-block w-100\"></div>");
        }

    }
    %>
    </div>
    <div><form method="get" action="<%=request.getContextPath()%>/Shuffle">
        <input type="submit" value="Shuffle">
    </form></div>
</body>
</html>
