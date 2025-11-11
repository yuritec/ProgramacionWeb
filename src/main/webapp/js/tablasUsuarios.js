function toggleMenu() {
    const menu = document.getElementById('menuHamburguesa');
    menu.classList.toggle('activo');
}

document.querySelectorAll('#menuHamburguesa a').forEach(link => {
    link.addEventListener('click', () => {
        document.getElementById('menuHamburguesa').classList.remove('activo');
    });
});

$(document).ready(function () {
       
    if (typeof mensaje !== "undefined" && mensaje.trim() !== "") {
        Swal.fire({
            icon: 'success',
            title: '¡Acción completada!',
            html: `
                <div class="mensaje-exito">
                    <strong>${mensaje}</strong><br>
                    Los usuarios fueron actualizados correctamente 👤✨
                </div>
            `,
            background: '#fff0f7',
            confirmButtonColor: '#e08ebf',
            confirmButtonText: 'OK',
        });
    }

    $("form").on("submit", function (e) {
        let valid = true;
        const $form = $(this);
        const accion = $form.find("input[name='accion']").val();

        $form.find(".mensaje-error-campo").remove();

        /* ALTA */
        if (accion === "alta") {
            const nombre = $form.find("input[name='nombre']");
            const correo = $form.find("input[name='correo']");
            const password = $form.find("input[name='password']");
            const rol = $form.find("select[name='rol']");

            if (!nombre.val().trim()) { mostrarError(nombre, "El nombre es obligatorio."); valid = false; }
            else if (nombre.val().trim().length < 3) { mostrarError(nombre, "Debe tener mínimo 3 caracteres."); valid = false; }

            if (!correo.val().trim()) { mostrarError(correo, "El correo es obligatorio."); valid = false; }
            else if (!/^[^\s@]+@[^\s@]+\.[^\s@]+$/.test(correo.val())) { mostrarError(correo, "Correo no válido."); valid = false; }

            if (!password.val().trim()) { mostrarError(password, "La contraseña es obligatoria."); valid = false; }
            else if (password.val().trim().length < 5) { mostrarError(password, "Debe tener mínimo 5 caracteres."); valid = false; }

            if (!rol.val()) { mostrarError(rol, "Selecciona un rol."); valid = false; }
        }

        /* MODIFICAR */
        else if (accion === "modificar") {
            const id = $form.find("input[name='id']");
            if (!id.val().trim()) { mostrarError(id, "El ID es obligatorio."); valid = false; }
            else if (!/^[1-9]\d*$/.test(id.val().trim())) { mostrarError(id, "Debe ser un número entero válido."); valid = false; }
        }

        /* ELIMINAR */
        else if (accion === "eliminar") {
            const id = $form.find("input[name='id']");
            if (!id.val().trim()) { mostrarError(id, "El ID es obligatorio."); valid = false; }
            else if (!/^[1-9]\d*$/.test(id.val().trim())) { mostrarError(id, "El ID debe ser un número válido."); valid = false; }
        }

        if (!valid) e.preventDefault();
    });

    function mostrarError($campo, mensaje) {
        const $msg = $("<div>")
            .addClass("mensaje-error-campo")
            .text(mensaje)
            .hide();

        $campo.after($msg);
        $msg.fadeIn();
    }


    $(".form-seccion").hide();
    $("#alta").fadeIn(600);

    $(".opciones-barra a").click(function (e) {
        e.preventDefault();
        const target = $(this).attr("href");
        $(".form-seccion").hide();
        $(target).fadeIn(600);
    });


    $(".form-seccion button, .form-seccion input[type='submit']").hover(
        function () {
            $(this).css({ backgroundColor: "#a56c57", color: "#fff", transition: "0.3s" });
        },
        function () {
            $(this).css({ backgroundColor: "", color: "" });
        }
    );

    $("input, select, textarea").on("focus", function () {
        $(this).css("box-shadow", "0 0 8px #a56c57");
    }).on("blur", function () {
        $(this).css("box-shadow", "none");
    });

});
