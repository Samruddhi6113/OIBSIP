const generatePasswordButton = document.getElementById('generatePassword');
const generatedPasswordContainer = document.getElementById('generatedPassword');

generatePasswordButton.addEventListener('click', generatePassword);

function generatePassword() {
    const passwordLength = 12;
    const characterSet = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789!@#$%^&*()';
    let generatedPassword = '';

    for (let i = 0; i < passwordLength; i++) {
        const randomIndex = Math.floor(Math.random() * characterSet.length);
        generatedPassword += characterSet.charAt(randomIndex);
    }

    generatedPasswordContainer.textContent = `Generated Password: ${generatedPassword}`;
}
