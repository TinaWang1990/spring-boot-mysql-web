<!doctype html>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%></%@taglib>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">

    <title>Hello, world!</title>
</head>
<style>


    .title{
       padding-top: 10vh;
        margin: auto;
        height: 10vh;
        width: 80vw;
        text-align: center;
    
    }
        
      
      </style>
<body>
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <a class="navbar-brand" href="#">Navbar</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav">
                <li class="nav-item active">
                    <a class="nav-link" href="./home">Home <span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Login</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="./register">Register</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link disabled" href="#">All Users</a>
                </li>
            </ul>
        </div>
    </nav>
    
    <c:choose>
    <c:when test="${mode=='MODE_HOME'}">
        <div class="container title">
            <h1>Welcome to Quantropi</h1>
        </div>
    </c:when>
    
    <c:when test="${mode=='MODE_REGISTER'}">
    <div class="container text-center">
    <h3>New Registration</h3>
    <hr>
    <form class="form-horizontal" method="POST" action="save-user">
        <input type="hidden" name="id" value="${user.id}">
        <div class="form=group">
           <label class="control-label col-md-3">Username</label>
           <div class="col-md-7">
               <input type="text" class="form-control" name="username" value="${user.username}">
           </div>    
        </div>
        <div class="form=group">
           <label class="control-label col-md-3">Firstname</label>
           <div class="col-md-7">
               <input type="text" class="form-control" name="firstname" value="${user.firstname}">
           </div>    
        </div>
        <div class="form=group">
           <label class="control-label col-md-3">Lastname</label>
           <div class="col-md-7">
               <input type="text" class="form-control" name="lastname" value="${user.lastname}">
           </div>    
        </div>
        <div class="form=group">
           <label class="control-label col-md-3">Age</label>
           <div class="col-md-7">
               <input type="text" class="form-control" name="age" value="${user.age}">
           </div>    
        </div>
        <div class="form=group">
           <label class="control-label col-md-3">Password</label>
           <div class="col-md-7">
               <input type="text" class="form-control" name="password" value="${user.password}">
           </div>    
        </div>
        <div class="form=group">
            <input type="submit" class="btn btn-primary" value="Register">   
        </div>
    </form>
    </div>
    </c:when>
</c:choose>

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
</body>

</html>
