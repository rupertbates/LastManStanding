<%--
  Created by IntelliJ IDEA.
  User: Rupert
  Date: 16/04/12
  Time: 13:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
</head>
<body>
<h2>All matches</h2>

<table>
    <tbody data-bind="foreach: items">
    <tr>
        <td data-bind="text: date"></td>
    </tr>
    <tr>
        <td>
            <ul data-bind="foreach: fixtures">
                <li>
                    <span data-bind="text: team1"></span> vs <span data-bind="text: team2"></span>
                </li>
            </ul>
        </td>

    </tr>

    </tbody>
</table>
</body>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js" type="text/javascript"></script>
<script type="text/javascript" language="javascript" src="/js/knockout-2.0.0.debug.js"></script>
<script type="text/javascript" language="javascript" src="/js/main.js"></script>
</html>