const selectOptionButtons = document.querySelectorAll('#selectOption');

selectOptionButtons.forEach(button => {
    button.addEventListener('click', showResult);
});

function showResult(event) {
    const scenario = event.target.closest('.scenario');
    const resultDiv = scenario.querySelector('#result');
    const selectedOption = Math.random() < 0.5 ? 'Correct' : 'Incorrect';

    resultDiv.textContent = `Your choice: ${selectedOption}`;
}
