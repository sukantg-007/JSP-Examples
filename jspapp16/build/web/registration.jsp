<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>       
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <!-- CSS only -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" crossorigin="anonymous">
        <style>
            footer{
                margin-bottom: 0px;
                height: 50px;
                background: gray;
                margin: 10px;
            }
            .container{
                min-height: 400px;
            }
        </style>
    </head>
    <body>
        <header><jsp:include page="header.html"/></header>
        <div class="container">
            <h1 class="text-center">Employee Registration</h1>
            <form class="p-3 m-3 border border-dark" action="test.jsp" method="post">            
                <div class="form-group row">                
                    <label for="id" class="col-4">Id</label>
                    <input type="number" class="form-control col-8 w-50" name="eid" placeholder="Enter Id">                
                </div>
                <div class="form-group row">                
                    <label for="name" class="col-4">Name</label>
                    <input type="text" class="form-control col-8 w-50" name="ename" placeholder="Enter name">                
                </div>            
                <div class="form-grou row">                
                    <label for="sal" class="col-4">Salary</label>
                    <input type="number" class="form-control col-8 w-50" name="esal" placeholder="Enter name">                
                </div>
                <div class="form-group row">                
                    <label for="addr" class="col-4">Address</label>
                    <textarea class="form-control col-8 w-50" rows="3" name="eaddr"></textarea>
                </div>
                <button type="submit" class="btn btn-primary">Submit</button>
                <button type="reset" class="btn btn-primary">Clear</button>
            </form>
        </div>
        <footer><jsp:include page="footer.html"/></footer>
    </body>
</html>
