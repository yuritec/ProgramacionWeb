function toggleMenu() {
    const menu = document.getElementById('menuHamburguesa');
    menu.classList.toggle('activo');
}

// cerrar menú al hacer clic en un enlace
document.querySelectorAll('#menuHamburguesa a').forEach(link => {
    link.addEventListener('click', () => {
        document.getElementById('menuHamburguesa').classList.remove('activo');
    });
});

