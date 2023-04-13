<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="GMS.Index" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head runat="server">
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="../Asset/Lib/Style/index_style.css" type="text/css">
        <link rel="shorcut icon" href="../Asset/Images/fast-cart.png" type="image/png" size="64x64">
        <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
        <title>RediGo Mart | Home</title>
        <style>
            .logos__img
            {
                width: 80px;
                /* opacity: .4; */
                filter: grayscale(1);
                transition: .3s;
            }
            .logos__container
            {
                grid-template-columns: repeat(6,max-content);
                justify-content: center;
                align-items: center;
                gap: 2rem 4rem;
                padding-bottom: 2rem;
            }
            .logos__img:hover
            {
                filter: none;
            }
            .logos__container
            {
                    gap: 4rem 8rem;
            }
            .grid {
                display: grid;
                gap: 5rem;
            }
            .section {
                padding: 4.5rem 0 2rem;
            }
        </style>
    </head>
    <body>
        <header class="l-header" id="header">
            <nav class="nav bg-grid">
                <div class="nav__toggle" id="nav-toggle">
                    <i class='bx bxs-grid'></i> 
                </div>
                <a href="#" class="nav__logo" style="background-color: #DC3545; color: #fff; padding: 0 8px; font-weight: 260; border-radius: 5px;">RediGo Mart</a>
                <div class="nav__menu" id="nav-menu">
                    <ul class="nav__list">
                        <li class="nav__item"><a href="#home" class="nav__link active">Home</a></li>
                        <li class="nav__item"><a href="#featured" class="nav__link">Featured</a></li>
                        <li class="nav__item"><a href="#categories" class="nav__link">Categories</a></li>
                        <li class="nav__item"><a href="#fresh" class="nav__link">Exclusive</a></li>
                        <li class="nav__item"><a href="Shop.aspx" class="nav__link">Shop</a></li>
                        <li class="nav__item"><a href="Login.aspx" class="nav__link">Login</a></li>
                    </ul>
                </div>
                <div class="nav__shop">
                    <i class='bx bxs-shopping-bags'></i>
                </div>
            </nav>
        </header>

        <main class="l-main">
           
            <section class="home" id="home">
                <div class="home__container bd-grid">
                    <div class="home__mob">
                        <div class="home__shape"></div>
                            <img src="../Asset/Images/head-img.png" alt="" class="home__img">
                    </div>

                    <div class="home__data">
                        <span class="home__new">New In</span>
                        <h1 class="home__title">Fresh Veggies @ Your Doorstep</h1>
                        <p class="home__description">Experience Greatest Service<br>With discounts upto <b style="color: red; letter-spacing: 0.5px; font-size: larger;">65%</b></p>
                        <a href="#" class="button">Treat Yourself</a>
                    </div>
                </div>
            </section>


            <section class="featured section" id="featured">
                <h2 class="section-title">Exotic Chocolates on Sale</h2>

                <div class="featured__container bd-grid">
                    <article class="tech">
                        <div class="tech__sale">Sale</div>
                        <img src="../Asset/Images/featured/Amul.png" alt="" class="tech__img" style="margin-bottom: 4.8rem;"> 
                        <span class="tech__name">Green Tea Chocolate</span>
                        <span class="tech__price" style="margin-top: 1.8rem;"><strike>&#8377;135</strike><b style="color: red; letter-spacing: 1px; font-size: 1.8rem;"> &#8377;105</b></span>
                        <a href="#" class="button-light">Add to cart <i class='bx bxs-right-arrow-alt button-icon'></i></a>
                    </article>

                    <article class="tech">
                        <div class="tech__sale">Sale</div>
                        <img src="../Asset/Images/featured/Cadbury.png" alt="" class="tech__img" style="margin-top: 15px; margin-bottom: 4.8rem; height: 25rem;">
                        <span class="tech__name">Rum & Raisins</span>
                        <span class="tech__price" style="margin-top: 1.8rem;"><strike>&#8377;115</strike><b style="color: red; letter-spacing: 1px; font-size: 1.8rem;"> &#8377;90</b></span>
                        <a href="#" class="button-light">Add to cart <i class='bx bxs-right-arrow-alt button-icon'></i></a>
                    </article>

                    <article class="tech">
                        <div class="tech__sale">Sale</div>
                        <img src="../Asset/Images/featured/Godiva.png" alt="" class="tech__img" style="height: 24.5rem;">
                        <span class="tech__name" style="margin-top: 25px;">Cacao Dark Chocolate</span>
                        <span class="tech__price"><strike>&#8377;470</strike><b style="color: red; letter-spacing: 1px; font-size: 1.8rem;"> &#8377;399</b></span>
                        <a href="#" class="button-light">Add to cart <i class='bx bxs-right-arrow-alt button-icon'></i></a>
                    </article>
                </div>
                <br><br>
                <div class="featured__container bd-grid">
                    <article class="tech">
                        <div class="tech__sale">Sale</div>
                        <img src="../Asset/Images/featured/Neuhaus.png" alt="" class="tech__img" style="margin-bottom: 4.8rem;"> 
                        <span class="tech__name">Raspberry Dark Chocolate</span>
                        <span class="tech__price"><strike>&#8377;795</strike><b style="color: red; letter-spacing: 1px; font-size: 1.8rem;"> &#8377;699</b></span>
                        <a href="#" class="button-light">Add to cart <i class='bx bxs-right-arrow-alt button-icon'></i></a>
                    </article>

                    <article class="tech">
                        <div class="tech__sale">Sale</div>
                        <img src="../Asset/Images/featured/Wedel.png" alt="" class="tech__img" style="margin-top: 15px; height: 22rem;
                        width: 150px; margin-bottom: 4.59rem;">
                        <span class="tech__name">Dark Espresso Flavour</span>
                        <span class="tech__price"><strike>&#8377;195</strike><b style="color: red; letter-spacing: 1px; font-size: 1.8rem;"> &#8377;149</b></span>
                        <a href="#" class="button-light">Add to cart <i class='bx bxs-right-arrow-alt button-icon'></i></a>
                    </article>

                    <article class="tech">
                        <div class="tech__sale">Sale</div>
                        <img src="../Asset/Images/featured/Whittaker.png" alt="" class="tech__img" style="height: 21.5rem;
                        width: 170px;">
                        <span class="tech__name" style="margin-top: 25px;">Samoa Dark Chocolate</span>
                        <span class="tech__price"><strike>&#8377;395</strike><b style="color: red; letter-spacing: 1px; font-size: 1.8rem;"> &#8377;299</b></span>
                        <a href="#" class="button-light">Add to cart <i class='bx bxs-right-arrow-alt button-icon'></i></a>
                    </article>
                </div>
            </section>

            
            <section class="launches section">
                <div class="launches__container bd-grid">
                    <div class="launches__card">
                        <div class="launches__data">
                            <h3 class="launches__name">Hair Dryer</h3>
                            <p class="launches__description">Fresh Launches</p>
                            <a href="#" class="button-light">Buy Now <i class='bx bxs-right-arrow-alt button-icon'></i></a>
                        </div>
                        <img src="../Asset/Images/new/hair-dryer.png" alt="" class="launches__img">
                    </div>

                    <div class="launches__card">
                        <div class="launches__data">
                            <h3 class="launches__name">Electric<br>Kettle</h3>
                            <p class="launches__description">Fresh Launches</p>
                            <a href="#" class="button-light">Buy Now <i class='bx bxs-right-arrow-alt button-icon'></i></a>
                        </div>
                        <img src="../Asset/Images/new/kettle.png" alt="" class="launches__img" style="width: 300px; left: 8.5rem; top: 1.5rem;">
                    </div>

                    <div class="launches__card">
                        <div class="launches__data">
                            <h3 class="launches__name">Coffee<br>Machine</h3>
                            <p class="launches__description">Fresh Launches</p>
                            <a href="#" class="button-light">Buy Now <i class='bx bxs-right-arrow-alt button-icon'></i></a>
                        </div>
                        <img src="../Asset/Images/new/coffee-machine.png" alt="" class="launches__img" style="width: 200px; top: 1rem; left: 12rem;">
                    </div>

                    <div class="launches__card">
                        <div class="launches__data">
                            <h3 class="launches__name">Hair<br>Straightner</h3>
                            <p class="launches__description">Fresh Launches</p>
                            <a href="#" class="button-light">Buy Now <i class='bx bxs-right-arrow-alt button-icon'></i></a>
                        </div>
                        <img src="../Asset/Images/new/hair-straightner.png" alt="" class="launches__img" style="width: 250px; left: 12rem; top: 0rem; transform: rotate(20deg);">
                    </div>
                    
                </div>
            </section>


            <section class="lifestyle section" id="categories">
                <h2 class="section-title">Top Categories</h2>

                <div class="lifestyle__container bd-grid">
                    <article class="fashion">
                        <img src="../Asset/Images/categories/cat1.png" alt="" class="fashion__img">
                        <span class="fashion__name" style="margin-top: 16px;">Snacks & Branded Food</span>
                        <a href="#" class="button-light">Visit Store <i class='bx bxs-right-arrow-alt button-icon'></i></a>
                    </article>

                    <article class="fashion">
                        <img src="../Asset/Images/categories/cat2.png" alt="" class="fashion__img" style="height: 8.5rem; width: 125px;">
                        <span class="fashion__name" style="margin-top: 5.8px;">Beverages & Coffee</span>
                        <a href="#" class="button-light">Visit Store <i class='bx bxs-right-arrow-alt button-icon'></i></a>
                    </article>

                    <article class="fashion">
                        <img src="../Asset/Images/categories/cat3.png" alt="" class="fashion__img">
                        <span class="fashion__name">Staples & Masalas</span>
                        <a href="#" class="button-light">Visit Store <i class='bx bxs-right-arrow-alt button-icon'></i></a>
                    </article>

                    <article class="fashion">
                        <img src="../Asset/Images/categories/cat4.png" alt="" class="fashion__img" style="height: 8.8rem; width: 140px; margin-bottom: 2.9rem;">
                        <span class="fashion__name">Cleaning & Household</span>
                        <a href="#" class="button-light">Visit Store <i class='bx bxs-right-arrow-alt button-icon'></i></a>
                    </article>
                </div>
                <br><br>
                <div class="lifestyle__container bd-grid">
                    <article class="fashion">
                        <img src="../Asset/Images/categories/cat5.png" alt="" class="fashion__img">
                        <span class="fashion__name" style="margin-top: 16px;">Bakery & Dairy</span>
                        <a href="#" class="button-light">Visit Store <i class='bx bxs-right-arrow-alt button-icon'></i></a>
                    </article>

                    <article class="fashion">
                        <img src="../Asset/Images/categories/cat6.png" alt="" class="fashion__img" style="height: 7rem; width: 130px;">
                        <span class="fashion__name" style="margin-top: 12px;">Gourmet & World Food</span>
                        <a href="#" class="button-light">Visit Store <i class='bx bxs-right-arrow-alt button-icon'></i></a>
                    </article>

                    <article class="fashion">
                        <img src="../Asset/Images/categories/cat7.png" alt="" class="fashion__img" style="height: 7.5rem; width: 130px; margin-bottom: 3.2rem;">
                        <span class="fashion__name">Beauty & Hygiene</span>
                        <a href="#" class="button-light">Visit Store <i class='bx bxs-right-arrow-alt button-icon'></i></a>
                    </article>

                    <article class="fashion">
                        <img src="../Asset/Images/categories/cat8.png" alt="" class="fashion__img" style="height: 7.6rem; width: 170px;">
                        <span class="fashion__name">Baby Care & Food</span><!---.fashion__price is removed-->
                        <a href="#" class="button-light">Visit Store <i class='bx bxs-right-arrow-alt button-icon'></i></a>
                    </article>
                </div>
            </section>

           
            <section class="offer section">
                <div class="offer__container bd-grid">
                    <div class="offer__data">
                        <h3 class="offer__title">Discounts Upto<br><strike>30%</strike><b style="color: red; letter-spacing: 1px;" class="offer__discount"> 75% OFF</b></h3>
                        <p class="offer__description" style="margin-bottom: 0.2rem;">On Selected Debit & Credit Cards<a href="#" title="On shopping of more than 2999/-">*</a></p>
                        <p class="offer__bank"><img src="../Asset/Images/offer/kotak.png" style="margin-left: 1rem;"><img src="../Asset/Images/offer/axis.png"><img src="../Asset/Images/offer/sbi.png"></p>
                        <a href="#" class="button">Shop Now</a>
                    </div>

                    <img src="../Asset/Images/offer/offer-girl.png" alt="" class="offer__img" style="margin-bottom: 0; margin-left: 2rem;">
                </div>
            </section>

            
            <section class="fresh section" id="fresh">
                <h2 class="section-title">WOW Skin Science | Exclusive Store</h2>

                <div class="fresh__container bd-grid">
                    <div class="fresh__launch">
                        <img src="../Asset/Images/wow/img1.png" style="width: 10rem; margin-left: 3.5rem;" alt="" class="fresh__launch-img">
                        <h3 class="fresh__title">Onion Shampoo</h3>
                        <span class="fresh__price">From <b style="color: red; letter-spacing: 1px;">&#8377;350/-</b></span>
                        <a href="#" class="button-light">Explore More <i class='bx bxs-right-arrow-alt button-icon'></i></a>
                    </div>

                    <div class="fresh__tech">
                        <div class="fresh__tech-card">
                            <img src="../Asset/Images/wow/img2.png" alt="" class="fresh__tech-img">
                            <div class="fresh__tech-overlay">
                                <a href="#" class="button"><center>Apple Cider Vinegar<br>Facewash<br><br>Add to Cart</center></a>
                            </div>
                        </div>

                        <div class="fresh__tech-card">
                            <img src="../Asset/Images/wow/img3.png" alt="" class="fresh__tech-img">
                            <div class="fresh__tech-overlay">
                                <a href="#" class="button"><center>Organic Apple Cider<br>Vinegar<br><br>Add to Cart</center></a>
                            </div>
                        </div>

                        <div class="fresh__tech-card">
                            <img src="../Asset/Images/wow/img4.png" alt="" class="fresh__tech-img" style="height: 18rem;">
                            <div class="fresh__tech-overlay">
                                <a href="#" class="button"><center>Thai Body Massage<br>Oil<br><br>Add to Cart</center></a>
                            </div>
                        </div>

                        <div class="fresh__tech-card">
                            <img src="../Asset/Images/wow/img5.png" alt="" class="fresh__tech-img">
                            <div class="fresh__tech-overlay">
                                <a href="#" class="button"><center>Hand & Nail Cream<br><br>Add to Cart</center></a>
                            </div>
                        </div>
                    </div>
                </div>
            </section>

            
            <section class="newsletter section">
                <div class="newsletter__container bd-grid">
                    <div>
                        <h3 class="newsletter__title">Subscribe and Get <br> 10% OFF</h3>
                        <p class="newsletter__description">Get 10% Discount for all products</p>
                    </div>

                    <form action="" class="newsletter__subscribe">
                        <input type="text" placeholder="someone@mail.com" class="newsletter__input">
                        <a href="#" class="newsletter__button">Subscribe</a>
                    </form>
                </div>
            </section>
            

            <section class="logos section">
                <h2 class="section-title">Top brands under our roof</h2>

                <div class="logos__container container grid">
                    <div class="logos__content">
                        <img src="../Asset/Images/logos/amul.png" alt="" class="logos__img">
                    </div>
                    <div class="logos__content">
                        <img src="../Asset/Images/logos/britannia.png" alt="" class="logos__img">
                    </div>
                    <div class="logos__content">
                        <img src="../Asset/Images/logos/dabur.png" alt="" class="logos__img">
                    </div>
                    <div class="logos__content">
                        <img src="../Asset/Images/logos/himalaya.png" alt="" class="logos__img">
                    </div>
                    <div class="logos__content">
                        <img src="../Asset/Images/logos/hul.png" alt="" class="logos__img">
                    </div>
                    <div class="logos__content">
                        <img src="../Asset/Images/logos/itc.png" alt="" class="logos__img">
                    </div>
                    <div class="logos__content">
                        <img src="../Asset/Images/logos/mtr.png" alt="" class="logos__img">
                    </div>
                    <div class="logos__content">
                        <img src="../Asset/Images/logos/nestle.png" alt="" class="logos__img">
                    </div>
                    <div class="logos__content">
                        <img src="../Asset/Images/logos/p_g.png" alt="" class="logos__img">
                    </div>
                    <div class="logos__content">
                        <img src="../Asset/Images/logos/parle.png" alt="" class="logos__img">
                    </div>
                    <div class="logos__content">
                        <img src="../Asset/Images/logos/patanjali.png" alt="" class="logos__img">
                    </div>
                    <div class="logos__content">
                        <img src="../Asset/Images/logos/pepsico.png" alt="" class="logos__img">
                    </div>
                </div>
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


        <script src="../Asset/Js/front-end.js"></script>
    </body>
</html>
