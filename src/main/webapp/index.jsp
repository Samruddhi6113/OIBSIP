<%
if(session.getAttribute("name")==null){
	response.sendRedirect("login.jsp");
}
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="styles.css">
    <title>Cybersecurity Awareness Platform</title>
</head>
<body>
    <header>
        <h1>Cybersecurity Awareness Platform</h1>
    </header>
    <nav>
        <ul>
            <li><a href="index.jsp">Home</a></li>
            <li><a href="module.jsp">Modules</a></li>
            <li><a href="quiz.jsp">Quizzes</a></li>
            <li><a href="forum.jsp">Forum</a></li>
            <li><a href="logout">Log out</a></li>
            <li><a href="registration.jsp">Sign up</a></li>
            <li class="right"><a href=""><%= session.getAttribute("name") %></a></li>
        </ul>
    </nav>
    <main style="color: black">
        <section class="hero">
            <h2>Enhance Your Cybersecurity Awareness</h2>
            <p>Stay safe online and protect your digital life with our expert tips and resources.</p>
            <h3>Hello <%= session.getAttribute("name") %></h3>
            <a href="module.jsp" class="btn">Get Started</a>
        </section>
        <section class="features">
            <div class="feature">
                <h3>Online Privacy</h3>
                <p>Learn how to safeguard your personal information and maintain online privacy.</p>
            </div>
            <div class="feature">
                <h3>Phishing Awareness</h3>
                <p>Recognize phishing attacks and prevent falling for online scams.</p>
            </div>
            <div class="feature">
                <h3>Device Security</h3>
                <p>Secure your devices from malware, viruses, and unauthorized access.</p>
            </div>
        </section>
    </main>
    <footer>
        <p>&copy; 2023 Cybersecurity Awareness Platform</p>
    </footer>
</body>
</html>
