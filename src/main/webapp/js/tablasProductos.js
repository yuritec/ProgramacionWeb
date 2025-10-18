
function toggleMenu() {
    const menu = document.getElementById('menuHamburguesa');
    menu.classList.toggle('activo');
}

// Cerrar menú al hacer clic en un enlace
document.querySelectorAll('#menuHamburguesa a').forEach(link => {
    link.addEventListener('click', () => {
        document.getElementById('menuHamburguesa').classList.remove('activo');
    });
});


$(document).ready(function () {

    // Animación de aparición de las secciones al cambiar
    $(".form-seccion").hide(); 
    $("#alta").fadeIn(600); 
    $(".opciones-barra a").click(function (e) {
        e.preventDefault();
        const target = $(this).attr("href");
        $(".form-seccion").hide();
        $(target).fadeIn(600);
    });

    // Efecto hover en botones dentro de las secciones
    $(".form-seccion button, .form-seccion input[type='submit']").hover(
        function () {
            $(this).css({ backgroundColor: "#a56c57", color: "#fff", transition: "0.3s" });
        },
        function () {
            $(this).css({ backgroundColor: "", color: "" });
        }
    );

    // animación en los inputs al enfocarlos
    $("input, select, textarea").on("focus", function () {
        $(this).css("box-shadow", "0 0 8px #a56c57");
    }).on("blur", function () {
        $(this).css("box-shadow", "none");
    });
});
