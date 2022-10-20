<?require_once 'config.php'?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.css" />
    <link rel="stylesheet" href="css/general.css">
    <link rel="stylesheet" href="css/general-adaptive.css">
    <link rel="stylesheet" href="css/index.css">
    <link rel="stylesheet" href="css/index-adaptive.css">
    <script src="https://lidrekon.ru/slep/js/jquery.js"></script>
    <script src="https://lidrekon.ru/slep/js/uhpv-full.min.js"></script>
    <title>РусДрамТеатр</title>
</head>

<body>
    <?require_once 'modal.php'?>
    <div class="content">
        <div class="container">
            <header class="header theme-block">
                <div class="header__inner">
                    <a class="logo" href="index.php"><span class="orange">РУС</span>ДРАМ</a>
                    <nav class="nav header__nav">
                        <a href="posters.php" class="nav__link header__link">Афиши</a>
                        <a class="nav__link header__link contact-us-btn">Связаться с нами</a>
                        <button class="nav__btn">
                            <svg width="36" height="36" viewBox="0 0 36 36" fill="none"
                                xmlns="http://www.w3.org/2000/svg">
                                <path
                                    d="M36 27C36 31.9706 27.9411 36 18 36C8.05887 36 0 31.9706 0 27C0 22.0294 8.05887 18 18 18C27.9411 18 36 22.0294 36 27Z"
                                    fill="white" />
                                <path
                                    d="M26.25 7.875C26.25 12.2242 22.7242 15.75 18.375 15.75C14.0258 15.75 10.5 12.2242 10.5 7.875C10.5 3.52576 14.0258 0 18.375 0C22.7242 0 26.25 3.52576 26.25 7.875Z"
                                    fill="white" />
                            </svg>
                        </button>
                        <img id="specialButton" class="nav__eye" style="cursor:pointer;" src="https://lidrekon.ru/images/special.png" alt="ВЕРСИЯ ДЛЯ СЛАБОВИДЯЩИХ" title="ВЕРСИЯ ДЛЯ СЛАБОВИДЯЩИХ" />
                    </nav>
                    <div class="popup-cab theme-block">
                        <?if (!isset($_SESSION['user'])) {?>
                        <div class="popup-cab__btn popup-cab__btn_auth">Авторизация</div>
                        <div class="popup-cab__btn popup-cab__btn_reg">Регистрация</div>
                        <?} else {?>
                        <a href="?logout" class="popup-cab__btn">Выйти</a>
                        <?}?>
                    </div>
                </div>

            </header>
            <main class="main">
                <section class="swiper theme-block">
                    <div class="swiper-wrapper">
<?php
$result = query("SELECT * FROM posters ORDER BY id DESC LIMIT 0,5");
for ($i = 0; $i < 5; $i++) {
    $poster = mysqli_fetch_assoc($result);
    $day = substr($poster['date'], 0, 2);
    $month = substr($poster['date'], 2, 3);

    $result2 = query("SELECT * FROM creators WHERE poster_id = $poster[id]");
?>

                        <div class="swiper-slide"
                            style="background: url('img/<?=$poster['img']?>') center / cover no-repeat">
                            <div class="swiper-slide__top">
                                <div class="swiper-slide__title">
                                    <div class="swiper-slide__author"><span class="orange"><?=$poster['author']?></span></div>
                                    <div class="swiper-slide__name"><?=$poster['name']?></div>
                                    <div class="swiper-slide__ganre"><?=$poster['ganre']?></div>
                                </div>
                                <div class="swiper-slide__age"><span class="orange"><?=$poster['age']?>+</span></div>
                            </div>
                            <div class="swiper-slide__bottom">
                                <ul class="swiper-slide__people">
<?php
while ($creator = mysqli_fetch_assoc($result2)) {
?>
<li><?=$creator['role']?>: <?=$creator['fullname']?></li>
<?}?>
                                </ul>
                                <div class="swiper-slide__date"><span class="orange"><?=$day?></span><?=$month?></div>
                            </div>
                        </div>
<?}?>
                    </div>
                    <div class="swiper-pagination"></div>
                    <div class="swiper-button-prev"></div>
                    <div class="swiper-button-next"></div>
                </section>
                <section class="news">
                    <div class="title">
                        <div class="title__line"></div>
                        <h1 class="title__text">Новости</h1>
                        <div class="title__line"></div>
                    </div>
                    <div class="news__block">
<?php
$result = query("SELECT * FROM news ORDER BY id DESC");

while ($news = mysqli_fetch_assoc($result)) {
?>
                        <div class="news__item theme-block">
                            <div class="media news__media">
                                <img src="img/news/<?=$news['img']?>" alt="" class="media__pict news__pict" title="<?=$news['name']?>">
                            </div>
                            <div class="news__text"><?=$news['content']?></div>

                            <button class="no-fill-btn news__button white-hover">подробнее</button>
                        </div>
<?}?>
                    </div>
                </section>
            </main>
            <footer class="footer theme-block">
                <div class="footer__inner">
                    <div class="footer__top">
                        <div class="footer__left">
                            <div class="logo footer__logo"><span class="orange">РУС</span>ДРАМ</div>
                            <div class="footer__column footer__column_1">
                                <h2 class="footer__title">Адрес</h2>
                                <div class="footer__item">ул. Худайбердина, 18, Стерлитамак</div>
                            </div>
                            <div class="footer__column">
                                <h2 class="footer__title">Контакты</h2>
                                <div class="footer__item">7(324)329-43-32</div>
                                <div class="footer__item">rusdram@dram.ru</div>
                            </div>
                        </div>
                        <div class="footer__right">
                            <nav class="nav footer__nav">
                                <a href="" class="nav__link footer__link">Афиши</a>
                                <a href="" class="nav__link footer__link">Связаться с нами</a>
                            </nav>
                        </div>
                    </div>
                    <div class="footer__bottom">
                        <div class="copyright">© 2017 - Государственный академический русский драматический театр
                            Республики Башкортостан</div>
                    </div>
                </div>
            </footer>
        </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.js"></script>
    <script src="js/general.js"></script>
    <script src="js/swiper.js"></script>
    <script src="js/index.js"></script>
</body>

</html>