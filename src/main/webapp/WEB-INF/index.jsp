<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>Example</title>
    <link rel="stylesheet" href="/webjars/bootstrap/4.5.0/css/bootstrap.min.css" />
    <script src="/webjars/jquery/3.5.1/jquery.min.js"></script>
    <script src="/webjars/bootstrap/4.5.0/js/bootstrap.min.js"></script>
</head>

<body>
    <div class="container">
        <h1>What is the Code???</h1>

        <p id="error"><c:out value="${error}" />
        </p>
        <form method="POST" action="/code">
            <label>Put code here: <input type="text" name="code"></label>
            <button>Try Code!</button>
        </form>
    </div>
</body>

</html>