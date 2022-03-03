<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!-- CSS only -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
       <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
        <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

        <title>JSP Page</title>

        <script>
            $(function () {
                $
                $("#datepicker").datepicker({dateFormat: 'M d, yy'});
            });
        </script>

    </head>
    <body>
        <!--        <h1>Hello World!</h1>
                <h1>Given value in IND currency type</h1>-->
        <%--<fmt:setLocale value="en_IN"/>
        <h2><fmt:formatNumber type="currency" value="12334565" currencySymbol="₹"/></h2>--%>

        <%--<fmt:parseNumber> -Parses the string representation of a number, currency, or percentage--%>
        <div class="container border border-3 border-primary rounded mt-5 p-3 w-50">
            <form method="post" action="parseNumber.jsp">
                <div class="form-group py-2">
                    <label class="h3 text-uppercase" for="value">Enter ur favourate Number : </label>
                    <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="value" placeholder="Enter number" pattern="(?=.*\d)(?=.*[\d\.]).{2,}" required>                
                </div>
                <div class="form-group py-2">
                    <label for="datepicker">Enter date:</label>
                    <input  class="form-control" type="text" name="selDate" id="datepicker">
                </div>
                <button type="submit" class="btn btn-primary">Enter</button>
            </form>

    </div>
</body>
</html>
