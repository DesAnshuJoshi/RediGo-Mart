<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Shop.aspx.cs" Inherits="GMS.View.Shop" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>RediGo Mart | Store</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../Asset/Lib/Style/index_style.css" type="text/css">
    <link rel="shorcut icon" href="../Asset/Images/fast-cart.png" type="image/png" size="64x64">
    <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
    <link href="../Asset/Lib/Style/img-style.css" rel="stylesheet" type="text/css">
</head>
<body>
    <header class="l-header" id="header">
            <nav class="nav bg-grid">
                <div class="nav__toggle" id="nav-toggle">
                    <i class='bx bxs-grid'></i> 
                </div>

                <a href="Index.aspx" class="nav__logo" style="background-color: #DC3545; color: #fff; padding: 0 8px; font-weight: 260;border-radius: 5px;">RediGo Mart</a>

                <div class="nav__menu" id="nav-menu">
                    <ul class="nav__list">
                        <li class="nav__item"><a href="Index.aspx" class="nav__link">Home</a></li>
                        <li class="nav__item"><a href="Index.aspx#featured" class="nav__link">Featured</a></li>
                        <li class="nav__item"><a href="Index.aspx#categories" class="nav__link">Categories</a></li>
                        <li class="nav__item"><a href="Index.aspx#fresh" class="nav__link">Exclusive</a></li>
                        <li class="nav__item"><a href="Shop.aspx" class="nav__link active">Shop</a></li>
                        <li class="nav__item"><a href="Login.aspx" class="nav__link">Login</a></li>
                    </ul>
                </div>

                <div class="nav__shop">
                    <i class='bx bxs-shopping-bags'></i>
                </div>
            </nav>
        </header>


        <main class="l-main">
           
            <section class="products section featured" id="shop">
                <h2 class="section-title">ALL PRODUCTS</h2>
                    <div class="featured__container container">
                        <ul class="featured__filters mar-0 grid">
                            <li>
                                <button class="featured__item active-featured" data-filter="all">
                                    <span>All</span>
                                </button>
                            </li>
                            <li>
                                <button class="featured__item" data-filter=".amul">
                                    <img src="../Asset/Images/shop/logo/amul.png" alt="" class="image">
                                </button>
                            </li>
                            <li>
                                <button class="featured__item" data-filter=".brit">
                                    <img src="../Asset/Images/shop/logo/britannia.png" alt="" class="image">
                                </button>
                            </li>
                            <li>
                                <button class="featured__item" data-filter=".dabur">
                                    <img src="../Asset/Images/shop/logo/dabur.png" alt="" class="image">
                                </button>
                            </li>
                            <li>
                                <button class="featured__item" data-filter=".hr">
                                    <img src="../Asset/Images/shop/logo/haldirams.png" alt="" class="image">
                                </button>
                            </li>
                            <li>
                                <button class="featured__item" data-filter=".him">
                                    <img src="../Asset/Images/shop/logo/himalaya.png" alt="" class="image">
                                </button>
                            </li>
                            <li>
                                <button class="featured__item" data-filter=".hul">
                                    <img src="../Asset/Images/shop/logo/hul.png" alt="" class="image">
                                </button>
                            </li>
                        </ul>
                        <ul class="featured__filters">
                            <li>
                                <button class="featured__item" data-filter=".itc">
                                    <img src="../Asset/Images/shop/logo/itc.png" alt="" class="image">
                                </button>
                            </li>
                            <li>
                                <button class="featured__item" data-filter=".mtr">
                                    <img src="../Asset/Images/shop/logo/mtr.png" alt="" class="image">
                                </button>
                            </li>
                            <li>
                                <button class="featured__item" data-filter=".nest">
                                    <img src="../Asset/Images/shop/logo/nestle.png" alt="" class="image">
                                </button>
                            </li>
                            <li>
                                <button class="featured__item" data-filter=".png">
                                    <img src="../Asset/Images/shop/logo/png.png" alt="" class="image">
                                </button>
                            </li>
                            <li>
                                <button class="featured__item" data-filter=".parle">
                                    <img src="../Asset/Images/shop/logo/parle.png" alt="" class="image">
                                </button>
                            </li>
                            <li>
                                <button class="featured__item" data-filter=".pat">
                                    <img src="../Asset/Images/shop/logo/patanjali.png" alt="" class="image">
                                </button>
                            </li>
                            <li>
                                <button class="featured__item" data-filter=".pepsi">
                                    <img src="../Asset/Images/shop/logo/pepsico.png" alt="" class="image">
                                </button>
                            </li>
                        </ul>

                        <div class="featured__content grid">
                            <article class="featured__card mix itc">
                                <div class="shape shape__smaller"></div>
                                <h1 class="featured__title">Aashirvad</h1>
                                <h3 class="featured__subtitle">Multigrain Atta</h3>
                                <img src="../Asset/Images/shop/aashirvad-atta-itc.png" alt="" class="featured__img img1">
                                <h3 class="featured__price t1">&#8377;284</h3>
                                <button class="button featured__button"><i class='bx bx-shopping-bag'></i></button>
                            </article>
            
                            <article class="featured__card mix hul">
                                <div class="shape shape__smaller"></div>
                                <h1 class="featured__title">Active Wheel</h1>
                                <h3 class="featured__subtitle">Detergent Powder</h3>
                                <img src="../Asset/Images/shop/active-wheel-hul.png" alt="" class="featured__img img2">
                                <h3 class="featured__price t2">&#8377;69</h3>
                                <button class="button featured__button"><i class='bx bx-shopping-bag'></i></button>
                            </article>
            
                            <article class="featured__card mix hr">
                                <div class="shape shape__smaller"></div>
                                <h1 class="featured__title">Agra Taj</h1>
                                <h3 class="featured__subtitle">Petha</h3>
                                <img src="../Asset/Images/shop/agrataj-petha-hr.png" alt="" class="featured__img img3">
                                <h3 class="featured__price t3">&#8377;60</h3>
                                <button class="button featured__button"><i class='bx bx-shopping-bag'></i></button>
                            </article>
            
                            <article class="featured__card mix dabur">
                                <div class="shape shape__smaller"></div>
                                <h1 class="featured__title">Almond</h1>
                                <h3 class="featured__subtitle">Hair Oil</h3>
                                <img src="../Asset/Images/shop/almond-oil-dabur.png" alt="" class="featured__img img4">
                                <h3 class="featured__price t4">&#8377;132</h3>
                                <button class="button featured__button"><i class='bx bx-shopping-bag'></i></button>
                            </article>
            
                            <article class="featured__card mix pat">
                                <div class="shape shape__smaller"></div>
                                <h1 class="featured__title">Atta Noodles</h1>
                                <h3 class="featured__subtitle">Chatpata</h3>
                                <img src="../Asset/Images/shop/atta-noodles-pat.png" alt="" class="featured__img img5">
                                <h3 class="featured__price t5">&#8377;12</h3>
                                <button class="button featured__button"><i class='bx bx-shopping-bag'></i></button>
                            </article>
            
                            <article class="featured__card mix hul">
                                <div class="shape shape__smaller"></div>
                                <h1 class="featured__title">AXE Signature</h1>
                                <h3 class="featured__subtitle">Strong Woody Fragrance</h3>
                                <img src="../Asset/Images/shop/axe-signature-hul.png" alt="" class="featured__img img6">
                                <h3 class="featured__price">&#8377;355</h3>
                                <button class="button featured__button"><i class='bx bx-shopping-bag'></i></button>
                            </article>
            
                            <article class="featured__card mix him">
                                <div class="shape shape__smaller"></div>
                                <h1 class="featured__title">Ayurveda </h1>
                                <h3 class="featured__subtitle">Clear Skin Soap</h3>
                                <img src="../Asset/Images/shop/ayurveda-soap-him.png" alt="" class="featured__img img7">
                                <h3 class="featured__price t7">&#8377;40</h3>
                                <button class="button featured__button"><i class='bx bx-shopping-bag'></i></button>
                            </article>
            
                            <article class="featured__card mix itc">
                                <div class="shape shape__smaller"></div>
                                <h1 class="featured__title">B Natural Juices</h1>
                                <h3 class="featured__subtitle">Guava Flavour</h3>
                                <img src="../Asset/Images/shop/b-natural-itc.png" alt="" class="featured__img img8">
                                <h3 class="featured__price t8">&#8377;82</h3>
                                <button class="button featured__button"><i class='bx bx-shopping-bag'></i></button>
                            </article>
            
                            <article class="featured__card mix him">
                                <div class="shape shape__smaller"></div>
                                <h1 class="featured__title">Baby Shampoo</h1>
                                <h3 class="featured__subtitle">Hibiscus - Chickpea</h3>
                                <img src="../Asset/Images/shop/baby-shampoo-him.png" alt="" class="featured__img img9">
                                <h3 class="featured__price">&#8377;298</h3>
                                <button class="button featured__button"><i class='bx bx-shopping-bag'></i></button>
                            </article>
            
                            <article class="featured__card mix hr">
                                <div class="shape shape__smaller"></div>
                                <h1 class="featured__title">Indian Snacks</h1>
                                <h3 class="featured__subtitle">Bhujia Sev</h3>
                                <img src="../Asset/Images/shop/bhujia-sev-hr.png" alt="" class="featured__img img10">
                                <h3 class="featured__price">&#8377;260</h3>
                                <button class="button featured__button"><i class='bx bx-shopping-bag'></i></button>
                            </article>
                            
                            <article class="featured__card mix itc">
                                <div class="shape shape__smaller"></div>
                                <h1 class="featured__title">Bingo MAD Angles</h1>
                                <h3 class="featured__subtitle">Very Peri Peri</h3>
                                <img src="../Asset/Images/shop/bingo-mad-itc.png" alt="" class="featured__img img11">
                                <h3 class="featured__price t11">&#8377;40</h3>
                                <button class="button featured__button"><i class='bx bx-shopping-bag'></i></button>
                            </article>
            
                            <article class="featured__card mix brit">
                                <div class="shape shape__smaller"></div>
                                <h1 class="featured__title">Biscafe</h1>
                                <h3 class="featured__subtitle">Coffee Cracker</h3>
                                <img src="../Asset/Images/shop/biscafe-brit.png" alt="" class="featured__img img12">
                                <h3 class="featured__price t12">&#8377;30</h3>
                                <button class="button featured__button"><i class='bx bx-shopping-bag'></i></button>
                            </article>
            
                            <article class="featured__card mix hul">
                                <div class="shape shape__smaller"></div>
                                <h1 class="featured__title">Brooke Bond</h1>
                                <h3 class="featured__subtitle">Red Label</h3>
                                <img src="../Asset/Images/shop/brooke-bond-hul.png" alt="" class="featured__img img13">
                                <h3 class="featured__price">&#8377;550</h3>
                                <button class="button featured__button"><i class='bx bx-shopping-bag'></i></button>
                            </article>
            
                            <article class="featured__card mix amul">
                                <div class="shape shape__smaller"></div>
                                <h1 class="featured__title">Butter</h1>
                                <h3 class="featured__subtitle">Pasteurized Butter</h3>
                                <img src="../Asset/Images/shop/butter-amul.png" alt="" class="featured__img img14">
                                <h3 class="featured__price t14" style="">&#8377;247</h3>
                                <button class="button featured__button"><i class='bx bx-shopping-bag'></i></button>
                            </article>

                            <article class="featured__card mix brit">
                                <div class="shape shape__smaller"></div>
                                <h1 class="featured__title">Creme Cheese</h1>
                                <h3 class="featured__subtitle">Cheese Spread</h3>
                                <img src="../Asset/Images/shop/cheese-spread-brit.png" alt="" class="featured__img img15">
                                <h3 class="featured__price t15">&#8377;178</h3>
                                <button class="button featured__button"><i class='bx bx-shopping-bag'></i></button>
                            </article>
            
                            <article class="featured__card mix hr">
                                <div class="shape shape__smaller"></div>
                                <h1 class="featured__title">Dryfruits</h1>
                                <h3 class="featured__subtitle">Cashew Jar</h3>
                                <img src="../Asset/Images/shop/cashew-jar-hr.png" alt="" class="featured__img img16">
                                <h3 class="featured__price t16">&#8377;335</h3>
                                <button class="button featured__button"><i class='bx bx-shopping-bag'></i></button>
                            </article>
            
                            <article class="featured__card mix pepsi">
                                <div class="shape shape__smaller"></div>
                                <h1 class="featured__title">Cheetos</h1>
                                <h3 class="featured__subtitle">Cheez Puffs</h3>
                                <img src="../Asset/Images/shop/cheetos-pepsi.png" alt="" class="featured__img img17">
                                <h3 class="featured__price t17">&#8377;10</h3>
                                <button class="button featured__button"><i class='bx bx-shopping-bag'></i></button>
                            </article>
            
                            <article class="featured__card mix hul">
                                <div class="shape shape__smaller"></div>
                                <h1 class="featured__title">Clinic Plus</h1>
                                <h3 class="featured__subtitle">Hair Shampoo</h3>
                                <img src="../Asset/Images/shop/clinic-plus-hul.png" alt="" class="featured__img img18">
                                <h3 class="featured__price">&#8377;219</h3>
                                <button class="button featured__button"><i class='bx bx-shopping-bag'></i></button>
                            </article>

                            <article class="featured__card mix hul">
                                <div class="shape shape__smaller"></div>
                                <h1 class="featured__title">Comfort Liquid</h1>
                                <h3 class="featured__subtitle">Fabric Softner</h3>
                                <img src="../Asset/Images/shop/comfort-hul.png" alt="" class="featured__img img19">
                                <h3 class="featured__price t19">&#8377;213</h3>
                                <button class="button featured__button"><i class='bx bx-shopping-bag'></i></button>
                            </article>

                            <article class="featured__card mix mtr">
                                <div class="shape shape__smaller"></div>
                                <h1 class="featured__title">Ready Mix</h1>
                                <h3 class="featured__subtitle">Dhokla Mix</h3>
                                <img src="../Asset/Images/shop/dhokla-mix-mtr.png" alt="" class="featured__img img20">
                                <h3 class="featured__price t20">&#8377;70</h3>
                                <button class="button featured__button"><i class='bx bx-shopping-bag'></i></button>
                            </article>

                            <article class="featured__card mix pepsi">
                                <div class="shape shape__smaller"></div>
                                <h1 class="featured__title">Doritos</h1>
                                <h3 class="featured__subtitle">Masala Mayhem</h3>
                                <img src="../Asset/Images/shop/doritos-pepsi.png" alt="" class="featured__img img21">
                                <h3 class="featured__price">&#8377;45</h3>
                                <button class="button featured__button"><i class='bx bx-shopping-bag'></i></button>
                            </article>
            
                            <article class="featured__card mix amul">
                                <div class="shape shape__smaller"></div>
                                <h1 class="featured__title">Gold</h1>
                                <h3 class="featured__subtitle">Pasteurized Milk</h3>
                                <img src="../Asset/Images/shop/gold-amul.png" alt="" class="featured__img img22">
                                <h3 class="featured__price t22">&#8377;31</h3>
                                <button class="button featured__button"><i class='bx bx-shopping-bag'></i></button>
                            </article>
                            
                            <article class="featured__card mix brit">
                                <div class="shape shape__smaller"></div>
                                <h1 class="featured__title">Goodday</h1>
                                <h3 class="featured__subtitle">Cashew Cookies</h3>
                                <img src="../Asset/Images/shop/goodday-brit.png" alt="" class="featured__img img23">
                                <h3 class="featured__price">&#8377;173</h3>
                                <button class="button featured__button"><i class='bx bx-shopping-bag'></i></button>
                            </article>
            
                            <article class="featured__card mix dabur">
                                <div class="shape shape__smaller"></div>
                                <h1 class="featured__title">Hajmola</h1>
                                <h3 class="featured__subtitle">Pudina Digestive Tablets</h3>
                                <img src="../Asset/Images/shop/hajmola-dabur.png" alt="" class="featured__img img24">
                                <h3 class="featured__price t24">&#8377;53</h3>
                                <button class="button featured__button"><i class='bx bx-shopping-bag'></i></button>
                            </article>
            
                            <article class="featured__card mix png">
                                <div class="shape shape__smaller"></div>
                                <h1 class="featured__title">Head & Shoulders</h1>
                                <h3 class="featured__subtitle">Smooth & Silky Shampoo</h3>
                                <img src="../Asset/Images/shop/head-shoulders-png.png" alt="" class="featured__img img25">
                                <h3 class="featured__price">&#8377;509</h3>
                                <button class="button featured__button"><i class='bx bx-shopping-bag'></i></button>
                            </article>
            
                            <article class="featured__card mix parle">
                                <div class="shape shape__smaller"></div>
                                <h1 class="featured__title">Hide & Seek</h1>
                                <h3 class="featured__subtitle">Classic Cookies</h3>
                                <img src="../Asset/Images/shop/hide-seek-parle.png" alt="" class="featured__img img26">
                                <h3 class="featured__price t26">&#8377;52</h3>
                                <button class="button featured__button"><i class='bx bx-shopping-bag'></i></button>
                            </article>
            
                            <article class="featured__card mix dabur">
                                <div class="shape shape__smaller"></div>
                                <h1 class="featured__title">Honey</h1>
                                <h3 class="featured__subtitle">100% Pure</h3>
                                <img src="../Asset/Images/shop/honey-dabur.png" alt="" class="featured__img img27">
                                <h3 class="featured__price t27">&#8377;391</h3>
                                <button class="button featured__button"><i class='bx bx-shopping-bag'></i></button>
                            </article>
            
                            <article class="featured__card mix pat">
                                <div class="shape shape__smaller"></div>
                                <h1 class="featured__title">Immunocharge</h1>
                                <h3 class="featured__subtitle">Immunity Booster</h3>
                                <img src="../Asset/Images/shop/immunocharge-pat.png" alt="" class="featured__img img28">
                                <h3 class="featured__price t28">&#8377;240</h3>
                                <button class="button featured__button"><i class='bx bx-shopping-bag'></i></button>
                            </article>
            
                            <article class="featured__card mix nest">
                                <div class="shape shape__smaller"></div>
                                <h1 class="featured__title">Kitkat</h1>
                                <h3 class="featured__subtitle">Crispy Wafer Bar</h3>
                                <img src="../Asset/Images/shop/kitkat-nest.png" alt="" class="featured__img img29">
                                <h3 class="featured__price t29">&#8377;20</h3>
                                <button class="button featured__button"><i class='bx bx-shopping-bag'></i></button>
                            </article>
            
                            <article class="featured__card mix nest">
                                <div class="shape shape__smaller"></div>
                                <h1 class="featured__title">Koko Krunch</h1>
                                <h3 class="featured__subtitle">Choco Burst</h3>
                                <img src="../Asset/Images/shop/koko-krunch-nest.png" alt="" class="featured__img img30">
                                <h3 class="featured__price">&#8377;351</h3>
                                <button class="button featured__button"><i class='bx bx-shopping-bag'></i></button>
                            </article>

                            <article class="featured__card mix parle">
                                <div class="shape shape__smaller"></div>
                                <h1 class="featured__title">KrackJack</h1>
                                <h3 class="featured__subtitle">Sweet & Salty Cookies</h3>
                                <img src="../Asset/Images/shop/krackjack-brit.png" alt="" class="featured__img img31">
                                <h3 class="featured__price t31">&#8377;35</h3>
                                <button class="button featured__button"><i class='bx bx-shopping-bag'></i></button>
                            </article>

                            <article class="featured__card mix pepsi">
                                <div class="shape shape__smaller"></div>
                                <h1 class="featured__title">Kurkure</h1>
                                <h3 class="featured__subtitle">Chilli Chatka</h3>
                                <img src="../Asset/Images/shop/kurkure-pepsi.png" alt="" class="featured__img img32">
                                <h3 class="featured__price t32">&#8377;20</h3>
                                <button class="button featured__button"><i class='bx bx-shopping-bag'></i></button>
                            </article>

                            <article class="featured__card mix amul">
                                <div class="shape shape__smaller"></div>
                                <h1 class="featured__title">Lactose Free</h1>
                                <h3 class="featured__subtitle">Lactose Free Milk</h3>
                                <img src="../Asset/Images/shop/lact-free-amul.png" alt="" class="featured__img img33">
                                <h3 class="featured__price">&#8377;25</h3>
                                <button class="button featured__button"><i class='bx bx-shopping-bag'></i></button>
                            </article>
            
                            <article class="featured__card mix pepsi">
                                <div class="shape shape__smaller"></div>
                                <h1 class="featured__title">Lays Gourmet</h1>
                                <h3 class="featured__subtitle">Lime & Cracked Pepper</h3>
                                <img src="../Asset/Images/shop/lays-pepsi.png" alt="" class="featured__img img34">
                                <h3 class="featured__price">&#8377;50</h3>
                                <button class="button featured__button"><i class='bx bx-shopping-bag'></i></button>
                            </article>
                            
                            <article class="featured__card mix pat">
                                <div class="shape shape__smaller"></div>
                                <h1 class="featured__title">Lemon</h1>
                                <h3 class="featured__subtitle">Body Cleanser</h3>
                                <img src="../Asset/Images/shop/lemon-body-cleanser-pat.png" alt="" class="featured__img img35">
                                <h3 class="featured__price t35">&#8377;150</h3>
                                <button class="button featured__button"><i class='bx bx-shopping-bag'></i></button>
                            </article>
            
                            <article class="featured__card mix mtr">
                                <div class="shape shape__smaller"></div>
                                <h1 class="featured__title">Lemon Rice Powder</h1>
                                <h3 class="featured__subtitle">Masala Powder</h3>
                                <img src="../Asset/Images/shop/lemon-rice-mtr.png" alt="" class="featured__img img36">
                                <h3 class="featured__price t36">&#8377;22</h3>
                                <button class="button featured__button"><i class='bx bx-shopping-bag'></i></button>
                            </article>
            
                            <article class="featured__card mix nest">
                                <div class="shape shape__smaller"></div>
                                <h1 class="featured__title">Maggi</h1>
                                <h3 class="featured__subtitle">Instant Noodles</h3>
                                <img src="../Asset/Images/shop/maggi-nest.png" alt="" class="featured__img img37">
                                <h3 class="featured__price t37">&#8377;15</h3>
                                <button class="button featured__button"><i class='bx bx-shopping-bag'></i></button>
                            </article>
            
                            <article class="featured__card mix amul">
                                <div class="shape shape__smaller"></div>
                                <h1 class="featured__title">Masti Buttermilk</h1>
                                <h3 class="featured__subtitle">Spiced Buttermilk</h3>
                                <img src="../Asset/Images/shop/masti-amul.png" alt="" class="featured__img img38">
                                <h3 class="featured__price">&#8377;50</h3>
                                <button class="button featured__button"><i class='bx bx-shopping-bag'></i></button>
                            </article>
            
                            <article class="featured__card mix him">
                                <div class="shape shape__smaller"></div>
                                <h1 class="featured__title">Face & Beard Wash</h1>
                                <h3 class="featured__subtitle">Men's Facewash</h3>
                                <img src="../Asset/Images/shop/f-n-b-him.png" alt="" class="featured__img img39">
                                <h3 class="featured__price t39">&#8377;155</h3>
                                <button class="button featured__button"><i class='bx bx-shopping-bag'></i></button>
                            </article>
            
                            <article class="featured__card mix nest">
                                <div class="shape shape__smaller"></div>
                                <h1 class="featured__title">Milkmaid</h1>
                                <h3 class="featured__subtitle">Condensed Milk</h3>
                                <img src="../Asset/Images/shop/milkmaid-nest.png" alt="" class="featured__img img40">
                                <h3 class="featured__price">&#8377;138</h3>
                                <button class="button featured__button"><i class='bx bx-shopping-bag'></i></button>
                            </article>
            
                            <article class="featured__card mix parle">
                                <div class="shape shape__smaller"></div>
                                <h1 class="featured__title">Monaco</h1>
                                <h3 class="featured__subtitle">Classic Cracker</h3>
                                <img src="../Asset/Images/shop/monaco-parle.png" alt="" class="featured__img img41">
                                <h3 class="featured__price t41">&#8377;35</h3>
                                <button class="button featured__button"><i class='bx bx-shopping-bag'></i></button>
                            </article>
            
                            <article class="featured__card mix pat">
                                <div class="shape shape__smaller"></div>
                                <h1 class="featured__title">Nariyal Biscuits</h1>
                                <h3 class="featured__subtitle">Coconut Cookies</h3>
                                <img src="../Asset/Images/shop/nariyal-cookies-pat.png" alt="" class="featured__img img42">
                                <h3 class="featured__price t41">&#8377;50</h3>
                                <button class="button featured__button"><i class='bx bx-shopping-bag'></i></button>
                            </article>

                            <article class="featured__card mix him">
                                <div class="shape shape__smaller"></div>
                                <h1 class="featured__title">Face Wash</h1>
                                <h3 class="featured__subtitle">Neem Extracts</h3>
                                <img src="../Asset/Images/shop/neem-fw-him.png" alt="" class="featured__img img43">
                                <h3 class="featured__price t43">&#8377;244</h3>
                                <button class="button featured__button"><i class='bx bx-shopping-bag'></i></button>
                            </article>

                            <article class="featured__card mix nest">
                                <div class="shape shape__smaller"></div>
                                <h1 class="featured__title">Nescafe Gold</h1>
                                <h3 class="featured__subtitle">Coffee Mix</h3>
                                <img src="../Asset/Images/shop/nes-gold-nest.png" alt="" class="featured__img img44">
                                <h3 class="featured__price t44">&#8377;797</h3>
                                <button class="button featured__button"><i class='bx bx-shopping-bag'></i></button>
                            </article>

                            <article class="featured__card mix brit">
                                <div class="shape shape__smaller"></div>
                                <h1 class="featured__title">Nutrichoice</h1>
                                <h3 class="featured__subtitle">Digestive Cookies</h3>
                                <img src="../Asset/Images/shop/nutri-choice-brit.png" alt="" class="featured__img img45">
                                <h3 class="featured__price t45">&#8377;187</h3>
                                <button class="button featured__button"><i class='bx bx-shopping-bag'></i></button>
                            </article>
            
                            <article class="featured__card mix png">
                                <div class="shape shape__smaller"></div>
                                <h1 class="featured__title">Old Spice</h1>
                                <h3 class="featured__subtitle">After Shave Lotion</h3>
                                <img src="../Asset/Images/shop/old-spice-png.png" alt="" class="featured__img img46">
                                <h3 class="featured__price t46">&#8377;200</h3>
                                <button class="button featured__button"><i class='bx bx-shopping-bag'></i></button>
                            </article>
                            
                            <article class="featured__card mix amul">
                                <div class="shape shape__smaller"></div>
                                <h1 class="featured__title">Paneer</h1>
                                <h3 class="featured__subtitle">Frozen Dairy</h3>
                                <img src="../Asset/Images/shop/paneer-amul.png" alt="" class="featured__img img47">
                                <h3 class="featured__price t47">&#8377;67</h3>
                                <button class="button featured__button"><i class='bx bx-shopping-bag'></i></button>
                            </article>
            
                            <article class="featured__card mix png">
                                <div class="shape shape__smaller"></div>
                                <h1 class="featured__title">Pantene Pro-V</h1>
                                <h3 class="featured__subtitle">Anti-hairfall Shampoo</h3>
                                <img src="../Asset/Images/shop/pantene-png.png" alt="" class="featured__img">
                                <h3 class="featured__price">&#8377;364</h3>
                                <button class="button featured__button"><i class='bx bx-shopping-bag'></i></button>
                            </article>
            
                            <article class="featured__card mix parle">
                                <div class="shape shape__smaller"></div>
                                <h1 class="featured__title">Parle-G</h1>
                                <h3 class="featured__subtitle">Glucose Biscuits</h3>
                                <img src="../Asset/Images/shop/parleg-parle.png" alt="" class="featured__img img49">
                                <h3 class="featured__price t49">&#8377;85</h3>
                                <button class="button featured__button"><i class='bx bx-shopping-bag'></i></button>
                            </article>
            
                            <article class="featured__card mix pepsi">
                                <div class="shape shape__smaller"></div>
                                <h1 class="featured__title">Quacker Oats</h1>
                                <h3 class="featured__subtitle">Rolled Oats</h3>
                                <img src="../Asset/Images/shop/quacker-oats-pepsi.png" alt="" class="featured__img img50">
                                <h3 class="featured__price">&#8377;184</h3>
                                <button class="button featured__button"><i class='bx bx-shopping-bag'></i></button>
                            </article>
            
                            <article class="featured__card mix hr">
                                <div class="shape shape__smaller"></div>
                                <h1 class="featured__title">Rasgulla</h1>
                                <h3 class="featured__subtitle">Indian Sweets</h3>
                                <img src="../Asset/Images/shop/rasgulla-hr.png" alt="" class="featured__img img51">
                                <h3 class="featured__price t51">&#8377;210</h3>
                                <button class="button featured__button"><i class='bx bx-shopping-bag'></i></button>
                            </article>
            
                            <article class="featured__card mix dabur">
                                <div class="shape shape__smaller"></div>
                                <h1 class="featured__title">Real Fruit Power</h1>
                                <h3 class="featured__subtitle">Litchi Juice</h3>
                                <img src="../Asset/Images/shop/real-dabur.png" alt="" class="featured__img img52">
                                <h3 class="featured__price">&#8377;99</h3>
                                <button class="button featured__button"><i class='bx bx-shopping-bag'></i></button>
                            </article>
            
                            <article class="featured__card mix mtr">
                                <div class="shape shape__smaller"></div>
                                <h1 class="featured__title">Ready Mix</h1>
                                <h3 class="featured__subtitle">Rice Idli</h3>
                                <img src="../Asset/Images/shop/rice-idli-mtr.png" alt="" class="featured__img img53">
                                <h3 class="featured__price t53">&#8377;215</h3>
                                <button class="button featured__button"><i class='bx bx-shopping-bag'></i></button>
                            </article>
            
                            <article class="featured__card mix dabur">
                                <div class="shape shape__smaller"></div>
                                <h1 class="featured__title">Odonil Air Freshner</h1>
                                <h3 class="featured__subtitle">Flirty Strawberry</h3>
                                <img src="../Asset/Images/shop/room-freshner-dabur.png" alt="" class="featured__img img54">
                                <h3 class="featured__price t54">&#8377;76</h3>
                                <button class="button featured__button"><i class='bx bx-shopping-bag'></i></button>
                            </article>

                            <article class="featured__card mix mtr">
                                <div class="shape shape__smaller"></div>
                                <h1 class="featured__title">Bisibelle Bath</h1>
                                <h3 class="featured__subtitle">Ready To Eat</h3>
                                <img src="../Asset/Images/shop/rte-bisibelle-mtr.png" alt="" class="featured__img img55">
                                <h3 class="featured__price">&#8377;99</h3>
                                <button class="button featured__button"><i class='bx bx-shopping-bag'></i></button>
                            </article>

                            <article class="featured__card mix hr">
                                <div class="shape shape__smaller"></div>
                                <h1 class="featured__title">Rajma Chawal</h1>
                                <h3 class="featured__subtitle">Ready To Eat</h3>
                                <img src="../Asset/Images/shop/rte-rajma-chawal-hr.png" alt="" class="featured__img img56">
                                <h3 class="featured__price t56">&#8377;149</h3>
                                <button class="button featured__button"><i class='bx bx-shopping-bag'></i></button>
                            </article>

                            <article class="featured__card mix parle">
                                <div class="shape shape__smaller"></div>
                                <h1 class="featured__title">Rusk</h1>
                                <h3 class="featured__subtitle">Elaichi Toast</h3>
                                <img src="../Asset/Images/shop/rusk-parle.png" alt="" class="featured__img img57">
                                <h3 class="featured__price t57">&#8377;148</h3>
                                <button class="button featured__button"><i class='bx bx-shopping-bag'></i></button>
                            </article>
            
                            <article class="featured__card mix itc">
                                <div class="shape shape__smaller"></div>
                                <h1 class="featured__title">Dark Fantasy</h1>
                                <h3 class="featured__subtitle">Choco Fills</h3>
                                <img src="../Asset/Images/shop/sunfeast-df-itc.png" alt="" class="featured__img img58">
                                <h3 class="featured__price t58">&#8377;124</h3>
                                <button class="button featured__button"><i class='bx bx-shopping-bag'></i></button>
                            </article>
            
                            <article class="featured__card mix itc">
                                <div class="shape shape__smaller"></div>
                                <h1 class="featured__title">Yippee Noodles</h1>
                                <h3 class="featured__subtitle">Mood Masala</h3>
                                <img src="../Asset/Images/shop/sunfeast-yippee-itc.png" alt="" class="featured__img img59">
                                <h3 class="featured__price t59">&#8377;42</h3>
                                <button class="button featured__button"><i class='bx bx-shopping-bag'></i></button>
                            </article>
            
                            <article class="featured__card mix pat">
                                <div class="shape shape__smaller"></div>
                                <h1 class="featured__title">Swasari Pravahi</h1>
                                <h3 class="featured__subtitle">Cough Syrup</h3>
                                <img src="../Asset/Images/shop/swasari-pat.png" alt="" class="featured__img img60">
                                <h3 class="featured__price">&#8377;80</h3>
                                <button class="button featured__button"><i class='bx bx-shopping-bag'></i></button>
                            </article>
            
                            <article class="featured__card mix png">
                                <div class="shape shape__smaller"></div>
                                <h1 class="featured__title">Tide</h1>
                                <h3 class="featured__subtitle">Detergent Powder</h3>
                                <img src="../Asset/Images/shop/tide-png.png" alt="" class="featured__img img61">
                                <h3 class="featured__price t61">&#8377;132</h3>
                                <button class="button featured__button"><i class='bx bx-shopping-bag'></i></button>
                            </article>
            
                            <article class="featured__card mix brit">
                                <div class="shape shape__smaller"></div>
                                <h1 class="featured__title">Treat Creme Wafer</h1>
                                <h3 class="featured__subtitle">Chocolate Flavour</h3>
                                <img src="../Asset/Images/shop/treat-wafer-brit.png" alt="" class="featured__img img62">
                                <h3 class="featured__price t62">&#8377;25</h3>
                                <button class="button featured__button"><i class='bx bx-shopping-bag'></i></button>
                            </article>

                            <article class="featured__card mix him">
                                <div class="shape shape__smaller"></div>
                                <h1 class="featured__title">Vegetable & Fruit</h1>
                                <h3 class="featured__subtitle">Cleanser</h3>
                                <img src="../Asset/Images/shop/vege-fruit-cleanser-him.png" alt="" class="featured__img img63">
                                <h3 class="featured__price">&#8377;120</h3>
                                <button class="button featured__button"><i class='bx bx-shopping-bag'></i></button>
                            </article>

                            <article class="featured__card mix mtr">
                                <div class="shape shape__smaller"></div>
                                <h1 class="featured__title">Ready Mix</h1>
                                <h3 class="featured__subtitle">Vermicelli Payasam</h3>
                                <img src="../Asset/Images/shop/vermicelli-payasam-mtr.png" alt="" class="featured__img img64">
                                <h3 class="featured__price">&#8377;45</h3>
                                <button class="button featured__button"><i class='bx bx-shopping-bag'></i></button>
                            </article>

                            <article class="featured__card mix png">
                                <div class="shape shape__smaller"></div>
                                <h1 class="featured__title">Whisper</h1>
                                <h3 class="featured__subtitle">Sanitary Pads</h3>
                                <img src="../Asset/Images/shop/whisper-png.png" alt="" class="featured__img img65">
                                <h3 class="featured__price t65">&#8377;149</h3>
                                <button class="button featured__button"><i class='bx bx-shopping-bag'></i></button>
                            </article>
                        </div>
                    </div>
                </section>
                
                
            </section>
        </main>

        
        <footer class="footer section">
            <div class="footer__container bd-grid">
                <div class="footer__box">
                    <h3 class="footer__title" style="background-color: #DC3545; color: #fff; padding: 0 5px; font-weight: 260; width: 95px; border-radius: 5px; font-size: 13.9px;">RediGo Mart</h3>
                    <p class="footer__description">The company is established and in works for better experience of customers to shop the best.</p>
                </div>

                <div class="footer__box">
                    <h3 class="footer__title">Support</h3>
                    <ul>
                        <li><a href="#" class="footer__link">FAQ</a></li>
                        <li><a href="#" class="footer__link">Store Locations</a></li>
                        <li><a href="#" class="footer__link">User Guide</a></li>
                        <li><a href="#" class="footer__link">Privacy Policy</a></li>
                        <li><a href="#" class="footer__link">Waste Management</a></li>
                        <li><a href="#" class="footer__link">RediFast Coins</a></li>
                    </ul>
                </div>

                <div class="footer__box">
                    <h3 class="footer__title">About RediGo</h3>
                    <ul>
                        <li><a href="#home" class="footer__link">Our Brand</a></li>
                        <li><a href="#featured" class="footer__link">Contact Us</a></li>
                        <li><a href="#women" class="footer__link">Seller Connect</a></li>
                        <li><a href="#new" class="footer__link">Bulk Order</a></li>
                        <li><a href="#featured" class="footer__link">Affiliate</a></li>
                    </ul>
                </div>

                <div class="footer__box">
                    <a href="#" class="footer__social"><i class='bx bxl-facebook-circle'></i></a>
                    <a href="#" class="footer__social"><i class='bx bx-mail-send' ></i></a>
                    <a href="#" class="footer__social"><i class='bx bxl-twitter' ></i></a>
                    <a href="#" class="footer__social"><i class='bx bxl-instagram' ></i></a>
                </div>
            </div>

            <p class="footer__copy">&#169; 2022 RediGo Mart LLP | Made by Anshu Joshi with <i class='bx bxs-heart'></i></p>
        </footer>

        
        <script src="../Asset/Js/front-main.js" type="text/javascript"></script>
        <script src="../Asset/Js/mixitup.min.js" type="text/javascript"></script>
        <script type="text/javascript" type="text/javascript">
            let mixerFeatured = mixitup('.featured__content', {
                selectors: {
                    target: '.featured__card'
                },
                animation: {
                    duration: 300
                }
              });
              
              const linkFeatured = document.querySelectorAll('.featured__item')
              
              function activeFeatured()
              {
                linkFeatured.forEach(l=> l.classList.remove('active-featured'))
                this.classList.add('active-featured')
              }
              linkFeatured.forEach(l=> l.addEventListener('click', activeFeatured))
        </script>
</body>
</html>
