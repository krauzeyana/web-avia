function myFunction() {
    if (window.matchMedia('(max-width: 1200px)').matches) {
        if (document.getElementsByClassName('container_header__menu__collapse')[0].classList.contains('not-display')) {
            document.getElementsByClassName('container_header__menu__collapse')[0].classList.remove('not-display');
            document.getElementsByClassName('container_header__menu')[0].classList.add('not-display');
        }
    }
    else {
        if (
            document.getElementsByClassName('container_header__menu')[0].classList.contains('not-display')) {
            document.getElementsByClassName('container_header__menu')[0].classList.remove('not-display');
            document.getElementsByClassName('container_header__menu__collapse')[0].classList.add('not-display');
        }
    }
}

myFunction();
window.onresize = function () {
    myFunction();
};

document.getElementsByClassName('header__burger')[0].onclick = function () {
    document.getElementsByClassName('header__burger-close')[0].classList.remove('not-display');
    document.getElementsByClassName('header__menu-list')[0].classList.remove('not-display');
    document.getElementsByClassName('header__burger')[0].classList.add('not-display');
}

document.getElementsByClassName('header__burger-close')[0].onclick = function () {
    document.getElementsByClassName('header__burger-close')[0].classList.add('not-display');
    document.getElementsByClassName('header__menu-list')[0].classList.add('not-display');
    document.getElementsByClassName('header__burger')[0].classList.remove('not-display');
}