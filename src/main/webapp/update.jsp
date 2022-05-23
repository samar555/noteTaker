<%@page import="com.notes.todo"%>
<%@page import="java.util.List"%>
<%@page import="org.hibernate.query.Query"%>
<%@page import="org.hibernate.Session"%>
<%@page import="com.Helper.getSessionFactory"%>
<%@include file="upperHelper.jsp"%>
<title>update</title>
</head>
<body>
    
<%
int id=Integer.parseInt(request.getParameter("note_id").trim());
Session s= getSessionFactory.getFactory().openSession();
todo note=s.get(todo.class, id);




%>
<div class="container">
   <%@include file="navbar.jsp"%>
   <form action="updateNote" method="POST">
   <input name=id value=<%= note.getId() %> type="hidden">
  <div class="form-group">
    <label for="exampleFormControlInput1"><h3>edit Heading</h3></label>
    <input type="text" class="form-control"  name= "title" id="exampleFormControlInput1" required value="<%= note.getTitle()%>">
  </div>


  <div class="form-group">
    <label for="exampleFormControlTextarea1"><h3>Enter Your Note</h3></label>
    <textarea class="form-control" name="content" id="exampleFormControlTextarea1" required rows="10" ><%= note.getContent()%></textarea>
  </div>
  <div class="text-center"> 
  <button class="btn btn-success " type="submit">submit</button>
  </div>
</form>
</div>

	<%@include file="LowerHelper.jsp"%>