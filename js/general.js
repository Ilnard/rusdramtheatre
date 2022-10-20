const authBtn = document.querySelector('.popup-cab__btn_auth');
const regBtn = document.querySelector('.popup-cab__btn_reg');
const contactBtn = document.querySelector('.contact-us-btn');
const modalWindow = document.querySelector('.modal-window');
const authForm = document.querySelector('.form-log_auth');
const regForm = document.querySelector('.form-log_reg');
const contactForm = document.querySelector('.form-log_contact');
const closeBtn = document.querySelectorAll('.form-log__close');

if (authBtn) {
    authBtn.addEventListener('click', () => {
        modalWindow.classList.add('modal-window_active');
        authForm.classList.add('form-log_active')
    })
}
if (regBtn) {
    regBtn.addEventListener('click', () => {
        modalWindow.classList.add('modal-window_active');
        regForm.classList.add('form-log_active')
    })
}
contactBtn.addEventListener('click', () => {
    modalWindow.classList.add('modal-window_active');
    contactForm.classList.add('form-log_active')
})
closeBtn.forEach(btn => {
    btn.addEventListener('click', () => {
        modalWindow.classList.remove('modal-window_active')
        regForm.classList.remove('form-log_active')
        authForm.classList.remove('form-log_active')
        contactForm.classList.remove('form-log_active')
        console.log(1)
    })
})

const popup = document.querySelector('.popup-cab');
const header = document.querySelector('.header');
const accBtn = document.querySelector('.nav__btn');

accBtn.addEventListener('click', () => {
    popup.classList.add('popup-cab_active');
    header.style.borderRadius = '15px 15px 0 15px'
})
window.addEventListener('click', e => {
    const target = e.target;
    if (!target.closest('.popup-cab') && !target.closest('.nav__btn')) {
        popup.classList.remove('popup-cab_active')
    }
})