<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="ISO-8859-1">
    <link rel="stylesheet" href="certificate.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/html2canvas/1.3.2/html2canvas.min.js"></script>
    <title>Certificate</title>
    <link rel="stylesheet" href="styles.css">
    
</head>
<body>
<header>
        <h1 style="color: white;"> Cybersecurity Awareness Platform</h1>
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
    <div style="font-style:none";><h3>Congratulations <%= session.getAttribute("name") %>! Have a safer net surfing!</h3></div>
    <div class="certificate-container">
        <div class="certificate">
            <h1 style="font-weight:bolder">Certificate of Completion</h1><br>
            <h2 id="studentName">Cybersecurity Awareness Platform</h2><br>
            <p>This is to certify that</p> 
            <h2 id="studentName"><%= session.getAttribute("name") %></h2> <p>has successfully completed <br>the Cybersecurity Awareness Program on <span id="currentDate"></span>.</p>
            <br><button id="generateCertificate">Generate Certificate</button>
             <script src="certificate.js"></script>
             
             
        </div>
    </div>
    <script>
        function updateDateTime() {
            const currentDateElement = document.getElementById("currentDate");
            const currentDate = new Date();
            const options = {
                year: 'numeric',
                month: 'long',
                day: 'numeric',
            };
            const formattedDate = currentDate.toLocaleDateString('en-US', options);
            currentDateElement.textContent = formattedDate;
        }

        // Update the date immediately
        updateDateTime();

        // Update the date every second (for demonstration purposes)
        setInterval(updateDateTime, 1000);
    </script>
</body>
</html>
