<%@include file="upperHelper.jsp"%>
<title>add Notes</title>
</head>
<body>
<div class="container">
   <%@include file="navbar.jsp"%><br>
   <form action="addNote" method="POST">
  <div class="form-group">
    <label for="exampleFormControlInput1"><h3>Note Heading</h3></label>
    <input type="text" class="form-control"  name= "title" id="exampleFormControlInput1" required placeholder="Java,Python etc">
  </div>


  <div class="form-group">
    <label for="exampleFormControlTextarea1"><h3>Enter Your Note</h3></label>
    <textarea class="form-control" name="content" id="exampleFormControlTextarea1" required rows="10"></textarea>
  </div>
  <div class="text-center"> 
  <button class="btn btn-success " type="submit">submit</button>
  </div>
</form>
</div>

<%@include file="LowerHelper.jsp"%>