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
            <li><a href="registration.jsp">Log out</a></li>
            <li><a href="registration.jsp">Sign up</a></li>
            <li><a href=""><%= session.getAttribute("name") %></a></li>
        </ul>
    </nav>
    <main>
		<li><a href="">Hello <%= session.getAttribute("name") %></a></li>
        <section class="module">
            <h2>Module 1: Password Security</h2>
            <p>Learn how to create strong and secure passwords to protect your accounts.</p>
            <a href="module1/password_security.html">Start Module</a>
        </section>
        <section class="module">
            <h2>Module 2: Data Privacy</h2>
            <p>Learn how to secure your data.</p>
            <a href="module2/data_privacy.html">Start Module</a>
        </section>
        <section class="module">
            <h2>Module 3: Phishing Awareness</h2>
            <p>Learn how to be aware of various scams.</p>
            <a href="module3/phishing_awareness.html">Start Module</a>
        </section>
        <section class="module">
            <h2>Module 4: Safe Online Behavior</h2>
            <p>Learn how to have a safe online behaviour and interaction.</p>
            <a href="module4/safe_online_behaviour.html">Start Module</a>
        </section>
        <section class="module">
            <h2>Module 5: Social Media Privacy</h2>
            <p>Learn how to maintain social media privacy.</p>
            <a href="module5/social_media_privacy.html">Start Module</a>
        </section>
        <section class="module">
            <h2>Module 6: Mobile Device Security</h2>
            <p>Learn how to maintain mobile device security.</p>
            <a href="module6/mobile_device_security.html">Start Module</a>
        </section>
        <section class="module">
        <h1>Get your certificate here.</h1>
        <a href="certificate.jsp">Click Here</a>
        </section>
    </main>
    <footer>
        <p>&copy; 2023 Cybersecurity Awareness Platform</p>
    </footer>
</body>
</html>
