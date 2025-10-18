
function toggleMenu() {
  const menu = document.getElementById("menuHamburguesa");
  menu.classList.toggle("activo");
}

// Cerrar menú al hacer clic en un enlace
document.querySelectorAll("#menuHamburguesa a").forEach(link => {
  link.addEventListener("click", () => {
    document.getElementById("menuHamburguesa").classList.remove("activo");
  });
});


$(document).ready(function () {
  // Animación de entrada del texto de bienvenida
  $(".bienvenida h1, .bienvenida p").hide().fadeIn(1200);

  // Efecto hover en botones principales
  $(".btn").hover(
    function () {
      $(this).css({
        backgroundColor: "#a56c57",
        color: "white",
        transition: "0.3s"
      });
    },
    function () {
      $(this).css({
        backgroundColor: "",
        color: ""
      });
    }
  );

  // Efecto al pasar sobre los valores de la empresa
  $(".valor").hover(
    function () {
      $(this).css("transform", "scale(1.05)").css("transition", "0.3s");
    },
    function () {
      $(this).css("transform", "scale(1)");
    }
  );

});
