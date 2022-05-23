<%@include file="upperHelper.jsp"%>

<title>Note Taker</title>
</head>
<body>
	<div class="container">
		<%@include file="navbar.jsp"%>
	</div>
	<%--crousal start --%>
	
	<div class="container">
		<div id="carouselExampleIndicators" class="carousel slide"
			data-ride="carousel">
			<ol class="carousel-indicators">
				<li data-target="#carouselExampleIndicators" data-slide-to="0"
					class="active"></li>
				<li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
				<li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
			</ol>
			<div class="carousel-inner">
				<div class="carousel-item active">
					<img class="d-block w-100" src="images/image2.jpg"
						alt="First slide">
				</div>
				<div class="carousel-item">
					<img class="d-block w-100" src="images/image4.jpg"
						alt="Second slide">
				</div>
				<div class="carousel-item">
					<img class="d-block w-100" src="images/image3.jpg"
						alt="Third slide">
				</div>
			</div>
			<a class="carousel-control-prev" href="#carouselExampleIndicators"
				role="button" data-slide="prev"> <span
				class="carousel-control-prev-icon" aria-hidden="true"></span> <span
				class="sr-only">Previous</span>
			</a> <a class="carousel-control-next" href="#carouselExampleIndicators"
				role="button" data-slide="next"> <span
				class="carousel-control-next-icon" aria-hidden="true"></span> <span
				class="sr-only">Next</span>
			</a>
		</div>
	</div>
	<%--crousal end --%>
	<%--card start --%>
	<div class="container">
		<div class="row d-flex justify-content-center m-4">
			<div class="card bMargin" style="width: 15rem;">
				<img class="card-img-top" src="images/c1.jpg" alt="Card image cap">
				<div class="card-body">
					<p class="card-text bBold fontSize">
						You takes Smarter Notes with ALISE<br>
					</p>

					<p class="card-text fontSize">There's a new way to take notes
						and it's faster and easier than ever before. We take care of the
						style and structure, so you can start processing information
						immediately.</p>
				</div>
			</div>
			<div class="card bMargin " style="width: 15rem;">
				<img class="card-img-top bRound rounded-circle" src="images/c2.jpg"
					alt="Card image cap">
				<div class="card-body">
					<p class="card-text bBold fontSize">
						..you study like a champ.<br>
					</p>

					<p class="card-text fontSize">We want you to get good grades,
						get a great job, and be hugely successful. Unfortunately, that
						story starts with you studying. Fortunately, we got your back.</p>
				</div>
			</div>

			<div class="card bMargin" style="width: 15rem;">
				<img class="card-img-top" src="images/c4.jpg" alt="Card image cap">
				<div class="card-body">
					<p class="card-text bBold fontSize">
						..we work some magic...<br>
					</p>

					<p class="card-text fontSize">Flashcards and study guides are
						awesome! Creating them? Not so much. So we fixed that. Make decks
						of flashcards instantly, with less than a flick of your wrist.
						Practice exams and study guides coming soon.</p>
				</div>
			</div>
		</div>

	</div>
	<%--card end --%>
	<%--body start --%>
	<div class=" container">
		<div class="gradiant">

			<div class="fontSize text-center"
				style="color: white; padding: 8%; font-size: 1rem;">
				<p>
					Note-taking has been an important part of human history and
					scientific development. The Ancient Greeks developed hypomnema,
					personal records on important subjects. In the Renaissance and
					early modern period, students learned to take notes in schools,
					academies and universities, often producing beautiful volumes that
					served as reference works after they finished their studies.<br>
					In pre-digital times, people used many kinds of notebooks,
					including commonplace books, accounting waste books, and
					marginalia. Philosopher John Locke developed and published a
					popular indexing system which served as a model for commonplace
					books and inspired at least ten different published editions of
					commonplace book templates in Europe and the Americas as well as
					Bell's Common-Place Book, Form'd Generally upon the Principles
					Recommended and Practised by Mr Locke (London, 1770).
				</p>

			</div>
		</div>
	</div>
	<%--body end --%>
	<%--next  body start --%>
	<div class="container">
	<div id="freeSignup">
		<div id="left">
		<img alt="" src="images/signup.png">
		</div>
		<div id="right">
			<div class="bBold">A better learning experience.</div>
			<li>Unlimited notebooks for endless notes.</li>
			<li>Instant flashcard deck generation</li>
			<li>Custom note templates for infinite possibilities</li>
			<li>Study stat tracking and analytics</li>
			<li>Free to use forever</li><br>
			<a  class="btn btn-secondary" href="addNotes.jsp">GET STARTED</a> <br>
			its free...

		</div>
		</div>


	</div>
	<%--copyright start --%>
	<div class="container">
		<footer
			style="background-color: black; color: white; text-align: center; justify-content: center; align-items: center; height: 1.5rem;"
			class=" fontSize"> Copyright to @ALISE 2022-2030 </footer>
	</div>

	<%--copyright end --%>

	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<%@include file="LowerHelper.jsp"%>