<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="styles.css">
    <link rel="stylesheet" href="forum.css">
    <link rel="stylesheet" href="styles.css">
    <title>Forum</title>
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
        <section class="create-post">
            <h2>Create a New Post</h2>
            <form id="postForm">
                <label for="username">Username:</label>
                <input type="text" id="username" required><br><br>
                <label for="postContent">Post Content:</label>
                <input id="postContent" required></input><br><br>
                <button type="submit">Submit</button>
            </form>
        </section>
        <section class="posts">
            <h2>Posts</h2>
            <ul id="postList"></ul>
        </section>
    </main>
    <footer>
        <p>&copy; 2023 Forum Application</p>
    </footer>
    <script src="forum.js"></script>
</body>
</html>
