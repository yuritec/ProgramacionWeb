const mas = document.querySelector('nav ul li:last-child');
        mas.addEventListener('mouseenter', () => {
            mas.querySelector('ul').style.display = 'block';
        });
        mas.addEventListener('mouseleave', () => {
            mas.querySelector('ul').style.display = 'none';
        });


