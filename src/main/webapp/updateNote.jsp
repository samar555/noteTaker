<%@page import="com.notes.todo"%>
<%@page import="java.util.List"%>
<%@page import="org.hibernate.query.Query"%>
<%@page import="org.hibernate.Session"%>
<%@page import="com.Helper.getSessionFactory"%>
<%@include file="upperHelper.jsp"%>
<title>all Notes</title>
</head>
<body>
	<div class="container">
		<%@include file="navbar.jsp"%><br>
		<h3>update Notes</h3>
		<div class="row">
			<div class="col-sm-12">
		<%
		Session s = getSessionFactory.getFactory().openSession();
		Query<todo> q = s.createQuery("from todo");
		List<todo> list = q.list();
		for (todo note : list) {
		%>
		
				<div class="card mt-4">
					<div class="card-body">
						<h5 class="card-title text-uppercase"><%=note.getTitle()%></h5>
						<p class="card-text font-weight-bold h4"><%=note.getContent()%></p>
						<p class="card-text"><%=note.getAddDate()%></p>
						 <a href="update.jsp?note_id=<%= note.getId() %>"
							class="btn btn-primary">update</a>
					</div>
				</div>
			
			<%
			}
			s.close();
			%>
			</div>
		</div>
		</div>
		<%@include file="LowerHelper.jsp"%>