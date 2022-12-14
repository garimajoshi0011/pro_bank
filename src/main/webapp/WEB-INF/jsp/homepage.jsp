<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
<style>
@import url('https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400&display=swap');

:root{
    --purple: blueviolet;
    --pink: cornflowerblue;
    --gradient:linear-gradient(90deg, var(--purple), var(--pink));
}

*{
    font-family: 'Poppins', sans-serif;
    margin:0; padding:0;
    box-sizing: border-box;
    text-decoration: none;
    outline: none; border:none;
    text-transform: capitalize;
}

*::selection{
    background:var(--pink);
    color:#fff;
}

html{
    font-size: 62.5%;
    overflow-x: hidden;
}

body{
    background:white;
}

section{
    min-height: 100vh;
    padding:0 9%;
    padding-top: 7.5rem;
    padding-bottom: 2rem;
}

.btn{
    display: inline-block;
    margin-top: 1rem;
    padding:.8rem 3rem;
    border-radius: 5rem;
    background:var(--gradient);
    font-size: 1.7rem;
    color:#fff;
    cursor: pointer;
    box-shadow: 0 .5rem 1rem rgba(0,0,0,.1);
    transition: all .3s linear;
    font-weight: 500;
}

.btn:hover{
    transform: scale(1.3);
}

.heading{
    text-align: center;
    background:var(--gradient);
    color:transparent;
    -webkit-background-clip: text;
    background-clip: text;
    font-size: 4.5rem;
    text-transform: uppercase;
    padding:1rem;
}

/* header  section */

header{
    position: fixed;
    top:0; left:0;
    width:100%;
    background:#fff;
    box-shadow: 0 .5rem 1rem rgba(0,0,0,.1);
    padding:2rem 9%;
    display: flex;
    align-items: center;
    justify-content: space-between;
    z-index: 1000;
}

header .logo{
    font-size: 5rem;
    color:var(--purple);
}

header .logo span{
    font-size: 4rem;
    color:var(--pink);
}

header .navbar a{
    font-size: 2.5rem;
    margin-left: 1rem;
    padding: 13px;
    color:var(--purple);
    font-weight: 500;
}

header .navbar a:hover{
    color:var(--pink);
    border-radius: 10rem;
    padding: .5rem 2rem;
    background:var(--gradient);
    color: white;
    font-weight: 500;
}

header input{
    display: none;
}

header label{
    font-size: 3rem;
    color:var(--purple);
    cursor: pointer;
    visibility: hidden;
    opacity: 0;
}

/* home  section */

.home{
    display: flex;
    align-items: center;
    justify-content: center;
    background:url(../images/home-bg-img.png) no-repeat;
    background-size: cover;
    background-position: center;
}

.home .image img{
    width: 45vw;
    animation: float 3s linear infinite;
}

@keyframes float{
    0%, 100%{
        transform: translateY(0rem);
    }
    50%{
        transform: translateY(-3.5rem);
    }
}

.home .content h3{
    font-size: 5.5rem;
    color:#333;
    text-transform: uppercase;
}

.home .content h3 span{
    color:var(--pink);
    text-transform: uppercase;
}

.home .content p{
    font-size: 1.7rem;
    color:#666;
    padding:1rem 0;
}

/* loan  section */

.loans{
    background-color: #e6e6ff;
    padding-bottom: 1500px;
}

.loans .box-container{
    display: block;
    align-items: center;
    justify-content: center;
    flex-wrap: wrap;
    margin-left: 250px;
}

.loans .box-container .row1 .box{
    width: 23%;
    height: 550px;
    background: #ccd9ff;
    padding: 50px;
    margin: 50px;
    display:inline-flexbox;
    flex-direction: row;
    float: left;
    border-radius: 20px;
}

.loans .box-container .row1 .box img
{
height: 50%;
width: 100%;
justify-content: center;
text-align: center;
border-radius: 20px;
}

.loans .box-container .row1 .box h3
{
    font-size: 2rem;
    color: blueviolet;;
    padding-top: 1rem;
    justify-content: center;
    text-align: center;
    font-weight: bold;
}

.loans .box-container .row1 .box p{
    font-size: 1.3rem;
    color: black;
    font-size: 1.5rem;
    padding: 1rem 0;
    justify-content: center;
    text-align: center;
    font-weight: 600;
}

.loans .box-container .row1 .box .row1btn
{
    display: inline-block;
    margin-top: 2rem;
    margin-left: 7rem;
    padding:.8rem 3rem;
    border-radius: 5rem;
    background:var(--gradient);
    font-size: 1.7rem;
    color:#fff;
    cursor: pointer;
    box-shadow: 0 .5rem 1rem rgba(0,0,0,.1);
    transition: all .3s linear;
    font-weight: 500;
}

.loans .box-container .row1 .box .row1btn:hover
{
    transform: scale(1.1);
}

.loans .box-container .row2 .box{
    width: 23%;
    height: 550px;
    background: #ccd9ff;
    padding: 50px;
    margin: 50px;
    display:inline-flexbox;
    flex-direction: row;
    float: left;
    border-radius: 20px;
}

.loans .box-container .row2 .box img
{
height: 50%;
width: 100%;
justify-content: center;
text-align: center;
border-radius: 20px;
}

.loans .box-container .row2 .box h3
{
    font-size: 2rem;
    color: blueviolet;;
    padding-top: 1rem;
    justify-content: center;
    text-align: center;
    font-weight: bold;
}

.loans .box-container .row2 .box p{
    font-size: 1.3rem;
    color: black;
    font-size: 1.5rem;
    padding: 1rem 0;
    justify-content: center;
    text-align: center;
    font-weight: 600;
}

.loans .box-container .row2 .box .row1btn
{
    display: inline-block;
    margin-top: 2rem;
    margin-left: 7rem;
    padding:.8rem 3rem;
    border-radius: 5rem;
    background:var(--gradient);
    font-size: 1.7rem;
    color:#fff;
    cursor: pointer;
    box-shadow: 0 .5rem 1rem rgba(0,0,0,.1);
    transition: all .3s linear;
    font-weight: 500;
}

.loans .box-container .row2 .box .row1btn:hover
{
    transform: scale(1.1);
}


/*service  section */

.services
{
    background-size: cover;
    background-position: center;
    /* padding-bottom: 3rem; */
    position: relative;
    margin-top: 80px;
    padding-bottom: 200px;
}

.services .column .image img
{
    width: 80vw;
}


/* about  section */

.about
{
    /* background:url("images/about.jpg") no-repeat; */
    background-size: cover;
    background-position: center;
    /* padding-bottom: 3rem; */
    position: relative;
    padding-bottom: 200px;
    background-color: #e6e6ff;
}

.about .column
{
    display: flex;
    align-items: center;
    justify-content: center;
    flex-wrap: wrap;
}

.about .column .image
{
    flex:1 1 40rem;
}

.about .column .image img
{
    width:100%;
}

.about .column .content
{
    flex:1 1 40rem;
    margin-left: 100px;
}

.about .column .content h3
{
    font-size: 4rem;
    color:blueviolet;
}

.about .column .content p
{
    font-size: 2.5rem;
    color:#666;
    padding:1rem 0;
}

.about .column .content .buttons a:last-child
{
    margin-left: 2rem;
}

/* contact  section */

.contact
{
    display: flex;
    align-items: center;
    justify-content: center;
    flex-wrap: wrap;
    padding-bottom: 4rem;
    padding-bottom: 200px;
    padding-top: 200px;

}

.contact .image{
    flex:1 1 40rem;
}

.contact .image img{
    width:100%;
    padding:2rem;
}

.contact form{
    flex:1 1 40rem;
    padding:2rem 3rem;
    border: 2px solid white;
    box-shadow: 0 .5rem 1rem rgba(0,0,0,.1);
    background:#e6e6ff;
    height: 750px;
    position: relative;
}

.contact form .heading{
    text-align: left;
    padding:0;
    padding-bottom: 2rem;
}

.contact form .inputBox{
    position: relative;
    padding-top: 50px;
}

.contact form .inputBox input, .contact form .inputBox textarea{
    width:100%;
    background:none;
    color:#666;
    margin:1.5rem 0;
    padding:.5rem 0;
    font-size: 1.9rem;
    border-bottom: .1rem solid rgba(0,0,0,.1);
    text-transform: none;
}

.contact form .inputBox textarea{
    resize: none;
    height: 13rem;
}

.contact form .inputBox label{
    position: absolute;
    top:1.7rem; left:0;
    font-size: 1.7rem;
    color:#666;
    transition: .2s linear;
}

.contact form .inputBox input:focus ~ label,
.contact form .inputBox input:valid ~ label,
.contact form .inputBox textarea:focus ~ label,
.contact form .inputBox textarea:valid ~ label{
    top:-.5rem;
    font-size: 1.5rem;
    color:var(--pink);
}

/* footer section */

.footer{
    padding-top: 3rem;

    background-size: cover;
    background-position: center;
    background-color: #e6e6ff;
}

.footer .box-container{
    display: flex;
    flex-wrap: wrap;
}

.footer .box-container .box{
    flex:1 1 25rem;
    margin:2rem;
}

.footer .box-container .box h3{
    font-size: 2.5rem;
    padding:1rem 0;
    color:blueviolet;
    text-decoration: underline;
    text-underline-offset: 1rem;
    margin-left: 200px;
}

.footer .box-container .box p{
    font-size: 1.5rem;
    padding:.5rem 0;
    color: black;
    font-weight: 600;
    margin-left: 200px;
}

.footer .box-container .box a{
    display: block;
    font-size: 1.5rem;
    padding:.5rem 0;
    color: black;
    font-weight: 600;
    margin-left: 200px;
}

.footer .box-container .box a:hover{
    text-decoration: underline;
}

.footer .box-container .box .info{
    display: flex;
    align-items: center;
}

.footer .box-container .box .info i{
    margin:.5rem 0;
    margin-right: 1rem;
    border-radius: 50%;
    background: cornflowerblue;
    color:var(--purple);
    font-size: 1.5rem;
    height:4.5rem;
    width:4.5rem;
    line-height: 4.5rem;
    text-align: center;
    margin-left: 30px;
}

.footer .credit{
    font-size: 2rem;
    font-weight: normal;
    letter-spacing: .1rem;
    color:#fff;
    border-top: .1rem solid #fff5;
    padding:2.5rem 1rem;
    text-align: center;
}


/* media queries  */

@media (max-width:1200px){

    html{
        font-size: 55%;
    }

}

@media (max-width:991px){

    section{
        padding:0 3%;
        padding-top: 7.5rem;
        padding-bottom: 2rem;
    }

}

@media (max-width:768px){

    header label{
        visibility: visible;
        opacity: 1;
    }

    header .navbar{
        position: absolute;
        top:100%; left: 0;
        width:100%;
        background:#fff;
        padding:1rem 2rem;
        border-top: .1rem solid rgba(0,0,0,.2);
        box-shadow: 0 .5rem 1rem rgba(0,0,0,.1);
        transform-origin: top;
        transform: scaleY(0);
        opacity: 0;
        transition: .2s linear;
    }

    header .navbar a{
        display: block;
        margin:2rem 0;
        font-size: 2rem;
    }

    header input:checked ~ .navbar{
        transform: scaleY(1);
        opacity: 1;
    }

    header input:checked ~ label::before{
        content:'\f00d';
    }

    .home{
        flex-flow: column-reverse;
    }

    .home .image img{
        width:100%;
    }

    .home .content h3{
        font-size: 3.6rem;
    }

    .home .content p{
        font-size: 1.5rem;
    }

    .about{
        background-position: right;
    }

}

@media (max-width:450px){

    html{
        font-size: 50%;
    }

    .about .column .content .buttons a{
        width:100%;
        text-align: center;
    }

    .about .column .content .buttons a:last-child{
        margin: 1rem 0;
    }

}
</style>

</head>
<body>
<!-- header section -->
<header>

    <a href="#" class="logo"><span>PRO</span>BANK</a>

    <input type="checkbox" id="menu-bar">
    <label for="menu-bar" class="fas fa-bars"></label>

    <nav class="navbar">
        <a href="#home">HOME</a>
        <a href="#loans">LOANS</a>
        <a href="#services">SERVICES</a>
        <a href="#about">ABOUT</a>
        <a href="#contact">CONTACT</a>
        <a href="/login">SIGN IN</a>
    </nav>

</header>
<!-- header section ends -->

<!-- home section starts  -->
<section class="home" id="home">

    <div class="content">
        <h3>WELCOME TO<br><span>PROBANK</span></h3>
        <p>Banking for all "Aao Sochein Bada"</p>
        <p>Working for a better tomorrow 'Hum Hai na'</p>
        <a type="button" href="/signin" class="btn">Create Account</a>
        <br/>
        <a type="button" href="/calculator" class="btn">Calculate Interest</a>
    </div>

    <div class="image">
        <img src="https://drive.google.com/uc?export=view&id=1F9Ukd58WyHxfpCs3w741_ymwtiGfemG9" alt="">
    </div>

</section>

<section class="loans" id="loans">

    <h1 class="heading"> LOANS </h1>

    <div class="box-container">
    <div class="row1">
        <div class="box">
            <img src="https://drive.google.com/uc?export=view&id=1Cx1ATEi-qwu7H2nlTw0xQtTE-ARyyLpH" alt="">
            <h3>HOME LOAN</h3>
            <p>Home loans are a secured mode of finance that give you the funds to buy or build the home of your choice.
                You for a home loan at lower interest rates.</p>
            <a href="#" class="row1btn">Read more</a>
        </div>

        <div class="box">
            <img src="https://drive.google.com/uc?export=view&id=1QzciySwGHQO5GkZWuQW3vfZG_GAJfHZj" alt="">
            <h3>GOLD LOAN</h3>
            <p> A gold loan requires you to pledge gold jewellery or coins as collateral.
                The loan amount sanctioned is a certain percentage of the gold's value pledged.</p>
            <a href="#" class="row1btn" >Read more</a>
        </div>

        <div class="box">
            <img src="https://drive.google.com/uc?export=view&id=1N7C80U53PU97A4gv1BsOr3AFEl7aQPfl" alt="">
            <h3>PERSONAL LOAN</h3>
            <p> Personal loans can be used for the purposes unplanned and urgent expenses, like expenses of a family wedding,
                Pay for a vacation or an international trip, etc.</p>
            <a href="#" class="row1btn">Read more</a>
        </div>
    </div>

    <div class="row2">
        <div class="box">
            <img src="https://drive.google.com/uc?export=view&id=1Nzc7yhnKoKnUAEkq5FKAosFZkoj5HTU-" alt="">
            <h3>BUSINESS LOAN</h3>
            <p>Business loan can be used to organisations expansion like Working capital loans, Machinery loans, equipment finance,
                Loans for manufacturers, etc.</p>
            <a href="#" class="row1btn">Read more</a>
        </div>

        <div class="box">
            <img src="https://drive.google.com/uc?export=view&id=1hRafXaEO6hJuHLLieYLVOTIAVkXtyHPc" alt="">
            <h3>EDUCATION LOAN</h3>
            <p>Education loan covers the course's basic fees and allied expenses.
                An education loan can be taken for a graduation and post-graduation course.</p>
            <a href="#" class="row1btn">Read more</a>
        </div>

        <div class="box">
            <img src="https://drive.google.com/uc?export=view&id=1WBP1_N956jlEHjpbUBQpA37Mxc2V4G-J" alt="">
            <h3>VEHICLE LOAN</h3>
            <p>A vehicle loan is extended in the form of a two or four-wheeler loan. Vehicle loan helps helps you buy your dream vehicle
                with a good interest rates.</p>
            <a href="#" class="row1btn">Read more</a>
        </div>
    </div>
    </div>

</section>
<section class="services" id="services">

    <h1 class="heading">SERVICES</h1>

    <div class="column">

        <div class="image">
            <img src="https://drive.google.com/uc?export=view&id=1JJUiHGd4WyFB72Vx9TuTTsT4-zICJPGq" style="margin-top: 60px; border-radius:20px; height: 900px; width: 1200px; display: block; margin-left: auto; margin-right: auto;">
        </div>

    </div>

</section>
<!-- services section ends -->

<!-- about section starts  -->
<section class="about" id="about">

    <h1 class="heading">About</h1>

    <div class="column">

        <div class="image">
            <img src="https://drive.google.com/uc?export=view&id=1ZNNk-jMJmjok-QMYtyX92aPZSCWnb0BR" style="margin-top: 100px; margin-bottom: 50px; border-radius: 50px;">
        </div>

        <div class="content">
            <h3>Your Right and Perfect Banking Partner</h3>
            <p></p>
            <p></p>
        </div>

    </div>

</section>
<!-- about section ends -->

<!-- contact section starts  -->
<section class="contact" id="contact">

    <form action="">

        <h1 class="heading">contact us</h1>

        <div class="inputBox">
            <input type="text" required>
            <label>name</label>
        </div>

        <div class="inputBox">
            <input type="email" required>
            <label>email</label>
        </div>

        <div class="inputBox">
            <input type="number" required>
            <label>phone</label>
        </div>

        <div class="inputBox">
            <textarea required name="" id="" cols="30" rows="10"></textarea>
            <label>message</label>
        </div>

        <input type="submit" class="btn" value="send message">

    </form>

    <div class="image">
        <img src="https://drive.google.com/uc?export=view&id=1GYc3Wu8GMLkNJC8HqGBxlOx0KxL-jua0" alt="">
    </div>

</section>
<!-- contact section ends -->

<!-- footer section starts  -->
<div class="footer">

    <div class="box-container">

        <div class="box">
            <h3>about us</h3>
            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Amet pariatur rerum consectetur architecto ad tempora blanditiis quo aliquid inventore a.</p>
        </div>

        <div class="box">
            <h3>quick links</h3>
            <a href="#home">home</a>
            <a href="#loans">loans</a>
            <a href="#services">services</a>
            <a href="#about">about</a>
            <a href="#contact">contact</a>
        </div>

        <div class="box">
            <h3>follow us</h3>
            <a href="https://www.facebook.com/">facebook</a>
            <a href="https://www.instagram.com/">instagram</a>
            <a href="https://twitter.com/i/flow/login">twitter</a>
        </div>

        <div class="box">
            <h3>contact info</h3>
            <div class="info">
               <!-- <i class="fas fa-phone"></i> -->
                <p> +91 8787237320 <br> +91 8989234567 </p>
            </div>
            <div class="info">
                <!-- <i class="fas fa-envelope"></i> -->
                <p> alltimeprobank@gmail.com <br> chooseprobank@gmail.com </p>
            </div>
            <div class="info">
                <!-- <i class="fas fa-map-marker-alt"></i> -->
                <p> Hyderabad, India </p>
            </div>
        </div>
</div>
</div>

<body>
</html>