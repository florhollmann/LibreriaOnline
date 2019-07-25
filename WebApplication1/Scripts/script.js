<<<<<<< HEAD
﻿/* $(document).ready(function () {
    var slideIndex = 1;
    showSlides(slideIndex);
=======
﻿
>>>>>>> 5f5a0dfad263b2491e9ad97d93e8ac5edba8b100

    function plusSlides(n) {
        showSlides(slideIndex += n);
    }

<<<<<<< HEAD
    function currentSlide(n) {
        showSlides(slideIndex = n);
=======
var slideIndex = 0;
showSlides();

function showSlides() {
    var i;
    var slides = document.getElementsByClassName("mySlides");
    for (i = 0; i < slides.length; i++) {
        slides[i].style.display = "none";
>>>>>>> 5f5a0dfad263b2491e9ad97d93e8ac5edba8b100
    }
})
     -------------------FUNCION SLIDES CAROUSEL ======-----*/
var slideIndex = 0;


    function showSlides() {
        var i;
        var slides = document.getElementsByClassName("mySlides");
        for (i = 0; i < slides.length; i++) {
            slides[i].style.display = "none";
        }
        slideIndex++;
        if (slideIndex > slides.length) { slideIndex = 1 }
        slides[slideIndex - 1].style.display = "block";
        setTimeout(showSlides, 2000);
    }

    /*Funcion --------------------BUSCAR POR TECLADO ------------------------------*/
    function buscar() {
        var input, filter, table, tr, td, i;
        input = document.getElementById("myInput");
        filter = input.value.toUpperCase();
        table = document.getElementById("myTable");
        tr = table.getElementsByTagName("tr");
        for (i = 0; i < tr.length; i++) {
            td = tr[i].getElementsByTagName("td")[0];
            if (td) {
                if (td.innerHTML.toUpperCase().indexOf(filter) > -1) {
                    tr[i].style.display = "";
                } else {
                    tr[i].style.display = "none";
                }
            }
        }
    }

    /*-----------------POP UP*-------=-----------https://codeday.me/es/qa/20190407/440435.html AJAX JWUERY-----------*/

 
    function popUpAviso(e) {
        e.preventDefault()

        let div = document.createElement("div")
        let p = document.createElement("p")

        //div.className = "popup"
        div.classList.add("popup")
        //Nodo.classList.add()
        //Nodo.classList.remove()
        //Nodo.classList.toggle()


        p.innerText = "Perfil creado! Ahora puede libros en el"
        aceptar.innerText = "Aceptar"
        aceptar.addEventListener("click", redirigir)

<<<<<<< HEAD
        div.appendChild(p)
        document.body.appendChild(div)
        //Event.preventDefault() : Detiene el comportamiento por default de cualquier nodo
        console.log("click del a!")
=======
    document.body.appendChild(div)
    //Event.preventDefault() : Detiene el comportamiento por default de cualquier nodo
    console.log("click del a!")
>>>>>>> 5f5a0dfad263b2491e9ad97d93e8ac5edba8b100
}