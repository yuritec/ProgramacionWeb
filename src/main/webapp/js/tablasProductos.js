var links = document.querySelectorAll('.opciones-barra a');
var secciones = document.querySelectorAll('.form-seccion');

function toggleMenu() {
    const menu = document.getElementById('menuHamburguesa');
    menu.classList.toggle('activo');
}

//  cerrar menú al hacer clic en un enlace
document.querySelectorAll('#menuHamburguesa a').forEach(link => {
    link.addEventListener('click', () => {
        document.getElementById('menuHamburguesa').classList.remove('activo');
    });
});

// Función para ocultar todas las secciones
function ocultarSecciones() {
    for (var i = 0; i < secciones.length; i++) {
        secciones[i].style.display = 'none';
    }
}

// Mostrar la sección al hacer clic en un enlace
for (var i = 0; i < links.length; i++) {
    links[i].addEventListener('click', function(e) {
        e.preventDefault();
        var targetId = this.getAttribute('href').substring(1);
        ocultarSecciones();
        document.getElementById(targetId).style.display = 'block';
    });
}

// Mostrar la primera sección por defecto
document.getElementById('alta').style.display = 'block';



