const newsText = document.querySelectorAll('.news__text');

newsText.forEach(item => {
    if (item.innerHTML.length > 70) {
        item.innerHTML = item.innerHTML.substr(0, 70);
        if (item.innerHTML[item.innerHTML.length - 1] == ' ') item.innerHTML = item.innerHTML.substr(0, 69);
        item.innerHTML += '...'
    }
})