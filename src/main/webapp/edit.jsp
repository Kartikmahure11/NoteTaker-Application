<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@page import="com.helper.*,org.hibernate.*,com.entities.*" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Edit Page</title>
 <%@include file="all_js.css.jsp" %>
</head>
<body>

 <div class="container">
     
     <%@include file="navbar.jsp" %>
     
      <h4>Edit your note</h4>
      
      <%
      
        int noteId=Integer.parseInt(request.getParameter("note_id").trim());
        Session s=FactoryProvider.getFactory().openSession();
		Note note=(Note) s.get(Note.class, noteId);
      %>
      
<form action="EditServlet" method="post">

<input value="<%= note.getId()%>" name="noteId" type="hidden">

    <div class="form-group">
    <label for="title">Node title</label>
    <input required name="title" type="text" class="form-control" id="title" aria-describedby="emailHelp" placeholder="Enter Here" value="<%= note.getTitle()%>">
    </div>
    <div class="form-group">
    <label for="content">Node Content</label>
    <textarea required name="content" class="form-control" id="content" placeholder="Enter content here" style="height:150px"> <%=note.getContent() %></textarea>
    </div>
   
    <div class="container text-center">
    
    <button type="submit" class="btn btn-success">Save Your Note</button>
    
   
    </div>
   
</form>
     
     </div>

</body>
</html>