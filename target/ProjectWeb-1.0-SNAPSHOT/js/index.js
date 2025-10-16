
    document.addEventListener('DOMContentLoaded', function () {
        const toggleButton = document.getElementById('menu-toggle');
        const menu = document.querySelector('.menu-lateral');

        toggleButton.addEventListener('click', () => {
            menu.classList.toggle('visible');
        });
    });


