const submitButton = document.getElementById('submitQuiz');
const quizResults = document.getElementById('quizResults');

submitButton.addEventListener('click', calculateResults);

function calculateResults() {
    const questions = document.querySelectorAll('.question');
    let correctAnswers = 0;

    questions.forEach((question, index) => {
        const selectedOption = question.querySelector(`input[name="q${index + 1}"]:checked`);
        if (selectedOption) {
            const selectedValue = selectedOption.value;
            if (selectedValue === 'b') {
                correctAnswers++;
            }
        }
    });

    const resultMessage = `You scored ${correctAnswers} out of ${questions.length}`;
    quizResults.textContent = resultMessage;
}
