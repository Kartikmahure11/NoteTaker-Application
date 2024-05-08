<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Notes</title>
 <%@include file="all_js.css.jsp" %>
  
</head>
<body>
     <div class="container">
     
     <%@include file="navbar.jsp" %>
     <br>
     
     <h4>Please fill your note details</h4>
     <br>
     <form action="saveNoteServlet" method="post">
  <div class="form-group">
    <label for="title">Node title</label>
    <input required name="title" type="text" class="form-control" id="title" aria-describedby="emailHelp" placeholder="Enter Here">
   </div>
  <div class="form-group">
    <label for="content">Node Content</label>
    <textarea required name="content" class="form-control" id="content" placeholder="Enter content here" style="height:150px"></textarea>
   </div>
   
   <div class="container text-center">
    
      <button type="submit" class="btn btn-primary">Add</button>
    
   
   </div>
   
</form>
     
     </div>
</body>
</html>