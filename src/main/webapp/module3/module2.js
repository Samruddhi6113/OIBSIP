const quizContainer = document.getElementById('quiz');

// Sample quiz questions
const quizQuestions = [
    {
        question: 'What is phishing?',
        options: ['A kind of fish', 'A type of email scam', 'A security software', 'A password manager'],
        correctAnswer: 1
    },
    {
        question: 'How can you identify a phishing email?',
        options: ['By checking the sender\'s address', 'By clicking all links in the email', 'By downloading all attachments', 'By replying to the email'],
        correctAnswer: 0
    },
    // Add more questions here
];

// Display the quiz
function displayQuiz() {
    let quizHTML = '';

    quizQuestions.forEach((question, index) => {
        quizHTML += `<div class="question">${index + 1}. ${question.question}</div>`;
        question.options.forEach((option, optionIndex) => {
            quizHTML += `
                <label>
                    <input type="radio" name="question${index}" value="${optionIndex}">
                    ${option}
                </label><br>
            `;
        });
    });

    quizHTML += '<button id="submitQuiz">Submit Quiz</button>';
    quizContainer.innerHTML = quizHTML;

    const submitButton = document.getElementById('submitQuiz');
    submitButton.addEventListener('click', submitQuiz);
}

// Calculate and display quiz results
function submitQuiz() {
    let score = 0;

    quizQuestions.forEach((question, index) => {
        const selectedOption = document.querySelector(`input[name="question${index}"]:checked`);
        if (selectedOption) {
            const selectedAnswer = parseInt(selectedOption.value);
            if (selectedAnswer === question.correctAnswer) {
                score++;
            }
        }
    });

    const resultMessage = `You scored ${score} out of ${quizQuestions.length}`;
    quizContainer.innerHTML = `<div class="result">${resultMessage}</div>`;
}

displayQuiz();
