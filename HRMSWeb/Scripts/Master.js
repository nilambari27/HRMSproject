// JavaScript to toggle the dropdown
document.addEventListener('DOMContentLoaded', function () {
    var dropdownToggles = document.querySelectorAll('.nav-table > ul > li > a');
    dropdownToggles.forEach(function (toggle) {
        toggle.addEventListener('click', function (event) {
            event.preventDefault();
            var dropdown = this.nextElementSibling;
            if (dropdown.style.display === 'block') {
                dropdown.style.display = 'none';
            } else {
                dropdown.style.display = 'block';
            }
        });
    });
});