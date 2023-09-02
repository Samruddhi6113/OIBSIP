<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="quiz.css">
    <link rel="stylesheet" href="styles.css">
    <title>Cybersecurity Awareness Quiz</title>
</head>
<body>
    <header>
        <h1>Cybersecurity Awareness Quiz</h1>
    </header>
     <nav>
        <ul>
            <li><a href="index.jsp">Home</a></li>
            <li><a href="module.jsp">Modules</a></li>
            <li><a href="quiz.jsp">Quizzes</a></li>
            <li><a href="forum.jsp">Forum</a></li>
            <li><a href="registration.jsp">Log out</a></li>
            <li><a href="registration.jsp">Sign up</a></li>
            <li><a href=""><%= session.getAttribute("name") %></a></li>
        </ul>
    </nav>
    <main>
        <section class="question">
            <h2>Question 1: What does "phishing" refer to?</h2>
            <ul>
                <li><input type="radio" name="q1" value="a">A kind of fish</li>
                <li><input type="radio" name="q1" value="b">A type of email scam</li>
                <li><input type="radio" name="q1" value="c">A security software</li>
                <li><input type="radio" name="q1" value="d">A password manager</li>
            </ul>
        </section>
        <section class="question">
            <h2>Question 2: What is the purpose of two-factor authentication (2FA)?</h2>
            <ul>
                <li><input type="radio" name="q2" value="a">To prevent email spam</li>
                <li><input type="radio" name="q2" value="b">To protect against malware</li>
                <li><input type="radio" name="q2" value="c">To add an extra layer of security</li>
                <li><input type="radio" name="q2" value="d">To optimize internet speed</li>
            </ul>
        </section>
        <!-- Add more questions here -->
        <button id="submitQuiz">Submit Quiz</button>
        <div id="quizResults"></div>
    </main>
    <footer>
        <p>&copy; 2023 Cybersecurity Awareness Platform</p>
    </footer>
    <script src="quiz.js"></script>
</body>
</html>
