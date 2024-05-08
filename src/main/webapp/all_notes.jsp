<%@page import="org.hibernate.Query"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@page import="com.entities.*" %>
<%@page import="java.util.List" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>ALL NOTES</title>
<%@include file="all_js.css.jsp" %>
</head>
<body>

 <div class="container">
     
     <%@include file="navbar.jsp" %>
     <br>
     <h3 class="text-uppercase">All NOTES :</h3>
     
     <div class="row"> 
     
     <div class="col-12">
     
      <%
       Session s=FactoryProvider.getFactory().openSession();
       Query q=s.createQuery("from Note");
       List<Note> list=q.list();
       for(Note note:list)
       {
    	   %>
    	   
    	   <div class="card mt-3" >
  <img class="card-img-top mx-auto " style="max-width:60px" src="img/note.png" alt="Card image cap">
  <div class="card-body px-5">
    <h5 class="card-title"><%=note.getTitle() %></h5>
    <p class="card-text"><%=note.getContent() %></p>
   
   <div class="container text-center  ">
   
    <a href="DeleteServlet1?note_id=<%=note.getId() %>" class="btn btn-danger">Delete</a>
    <a href="edit.jsp?note_id=<%=note.getId() %>" class="btn btn-primary">Update</a>
   
   </div>
    
  </div>
</div>
    	   
    	   
     <%
    	   //out.print(note.getId()+"  "+note.getTitle()+"<br>");
    	   
       }
        
       s.close();
       
     
     %>
     
     </div>
     
     </div>
     
     
    
 </div>
</body>
</html>