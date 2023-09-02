const postForm = document.getElementById('postForm');
const postList = document.getElementById('postList');

postForm.addEventListener('submit', createPost);

function createPost(event) {
    event.preventDefault();

    const username = document.getElementById('username').value;
    const postContent = document.getElementById('postContent').value;

    if (username && postContent) {
        const postItem = document.createElement('li');
        postItem.innerHTML = `<strong>${username}:</strong> ${postContent}`;
        postList.appendChild(postItem);

        // Clear input fields
        document.getElementById('username').value = '';
        document.getElementById('postContent').value = '';
    }
}
