// This script is used for interactive checkboxes in the checklist

const checklistItems = document.querySelectorAll('.checklist input[type="checkbox"]');

checklistItems.forEach(item => {
    item.addEventListener('change', toggleCompletion);
});

function toggleCompletion(event) {
    const label = event.target.nextElementSibling;
    label.textContent = event.target.checked ? 'Completed' : '';
}
