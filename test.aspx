<%@ Page Language="C#" AutoEventWireup="true" CodeFile="test.aspx.cs" Inherits="test" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Zaygo City</title>
    <link rel="icon" href="Images/zaygo.png" type="Images/x-icon" />
   <%--<link href="htps://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link href="Content/bootstrap-rtl/bootstrap-rtl.min.css" rel="stylesheet" />
    <script src="Content/bootstrap-rtl/bootstrap-rtl.min.js"></script>--%>

   <%-- <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <script src="bootstrap/js/bootstrap.min.js"></script--%>>
    <%--<script src="bootstrap/js/jquery.min.js"></script>
    <script src="JQuery/jquery-3.5.1.min.js"></script>--%>

  
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="style.css">
    <link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">
    <link href="bootstrap.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer" />

</head>

<body>
     <nav class="navbar navbar-expand-lg navbar-light bg-dark" id="navbar">
        <img src="Images/zaygo.png" width="70" height="70" alt="" data-aos="fade-right">
        <a class="navbar-brand" href="#app" data-aos="fade-right" style="color:#fff; font-weight:bold;">Zaygo City</a>
        <button class="navbar-toggler bg-light" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
      
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
          <ul class="navbar-nav mr-auto" data-aos="fade-right">
            <li class="nav-item active">
              <a class="nav-link" href="#home">Home <span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#menu">Product</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#about">Order List</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#feedback">Product List (Download)</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#contact">Contact</a>
            </li>
               <i class="fa-solid fa-cart-shopping"></i>
          </ul>
          <form class="form-inline my-2 my-lg-0" data-aos="fade-left">
            <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
            <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
          </form>
           
        </div>
    </nav>
  <!-- Home Session Start -->
    <div class="container-fluid" id="home">
       <!-- <div id="layer"> -->
        <div class="col-md-4"></div>
            <div class="col-md-5" data-aos="fade-down">
                
                <div class="header-title">
                    <img class="card-img-top img-fluid w-25 h-25" src="./Images/zaygo.png">
                    <img class="card-img-top img-fluid w-50 h-25" src="./Images/text-logo.png">
                   <%--<h2 class="text-primary text-inline"> မှာ</h2>--%>
                    <%--<h2 class="text-dark text-inline-block">Zaygo City </h2>--%>
                    <h2 class="text-dark ms-5" style="line-height:50px;">ပိုတာရောင်း လိုတာဝယ်ဖို့ အခုပဲ အကောင့်ဖွင့်လိုက်ပါ</h2>
                </div>
                <div class="header-body" style="flex-item-align:center;">
                  <a href="#menu">
                    <button class="btn" style="outline:2px solid #1b23bb; color:#1b23bb;">Login</button>
                  </a>
                  <a href="#offer">
                    <button class="btn" style="outline:2px solid #1b23bb; color:#1b23bb;">Sign Up</button>
                  </a>
                </div>
            </div>
        <div class="col-md-3"></div>
        
       <!-- </div> -->
    </div>
  <!-- Home Session End --> 
      
  <!-- Menu Session Start -->
    <section id="menu">
      <div class="container">
        <h2 class="text-center pt-5" data-aos="fade-down-left">Today Shop</h2>
        <div class="row justify-content-center">
          <div class="card col-md-3" data-aos="fade-up-right">
            <img class="card-img-top img-fluid" src="./Images/padthai.png" alt="Card image cap">
            <div class="card-body">
              <h5 class="card-title">Pad Thai</h5>
              <p class="card-text">Price - 1000MMK</p>
              <a href="#" class="btn" style="background-color:#1b23bb; color:white;">Order Now</a>
              
            </div>
          </div>
          <div class="card col-md-3" data-aos="flip-left">
            <img class="card-img-top img-fluid" src="./Images/padthai.png" alt="Card image cap">
            <div class="card-body">
              <h5 class="card-title">Pad Thai</h5>
              <p class="card-text">Price - 1000MMK</p>
              <a href="#" class="btn btn-primary">Order Now</a>
            </div>
          </div>
          <div class="card col-md-3" data-aos="fade-up-left">
            <img class="card-img-top img-fluid" src="./Images/padthai.png" alt="Card image cap">
            <div class="card-body">
              <h5 class="card-title">Pad Thai</h5>
              <p class="card-text">Price - 1000MMK</p>
              <a href="#" class="btn btn-primary">Order Now</a>
            </div>
          </div>
          <div class="card col-md-3" data-aos="fade-down-right">
            <img class="card-img-top img-fluid" src="./Images/padthai.png" alt="Card image cap">
            <div class="card-body">
              <h5 class="card-title">Pad Thai</h5>
              <p class="card-text">Price - 1000MMK</p>
              <a href="#" class="btn btn-primary">Order Now</a>
            </div>
          </div>
          <div class="card col-md-3" data-aos="flip-right">
            <img class="card-img-top img-fluid" src="./Images/padthai.png" alt="Card image cap">
            <div class="card-body">
              <h5 class="card-title">Pad Thai</h5>
              <p class="card-text">Price - 1000MMK</p>
              <a href="#" class="btn btn-primary">Order Now</a>
            </div>
          </div>
          <div class="card col-md-3" data-aos="fade-down-left">
            <img class="card-img-top img-fluid" src="./Images/padthai.png" alt="Card image cap">
            <div class="card-body">
              <h5 class="card-title">Pad Thai</h5>
              <p class="card-text">Price - 1000MMK</p>
              <a href="#" class="btn btn-primary">Order Now</a>
            </div>
          </div>
        </div>
      </div>
    </section>
  <!-- Menu Session End -->

  <!-- About Session Start -->
    <div class="container-fluid bg-dark text-white" id="about">
      <div class="row">
        <div class="col-md-6 col-sm-12" data-aos="fade-right">
          <h2>About Us</h2>
          <p>
            Lorem, ipsum dolor sit amet consectetur adipisicing elit. Dignissimos expedita autem accusamus quia ea, at amet pariatur enim debitis nobis veritatis molestias soluta rerum voluptates!
          </p>
          <button class="btn btn-warning">Read More</button>
      </div>
      <div class="col-md-6 col-sm-12" data-aos="fade-left">
          <img src="./Images/about.png" class="img-fluid" alt="">
      </div>
      </div>
    </div>
  <!-- About Session End -->

  <!-- App Session start -->
    <div class="container py-5" id="app">
      <div class="row py-5 justify-content-center">
        <div class="col-md-6" data-aos="fade-up-right">
          <div class="appService">
            <div class="card" id="phone1">
              <button class="top"></button>
              <button class="inner"></button>
              <button class="inner-circle"></button>
              <div class="card-body text-white">
                <span>Shop</span>
                <img src="./Images/menubar1.png" alt="" class="menubar">
                <h3 class="card-title text-primary pt-4">Zaygo City</h3>
                <p class="card-text">ပိုတာရောင်း လိုတာဝယ်ဖို့ အခုပဲ အကောင့်ဖွင့်လိုက်ပါ</p>
                <a href="#" class="btn btn-primary">Login</a>
              </div>
              <img src="./Images/zaygo.png" class="appImg" alt="" width="130px" height="130px">
              <button class="innerBottom" style="background-color:white ;"></button>
            </div>
            <div class="card" id="phone2">
              <button class="top"></button>
              <button class="inner"></button>
              <button class="inner-circle"></button>
              <div class="card-body">
                <span>Shop</span>
                <img src="./Images/menuBar.png" alt="" class="menubar">
                <h3 class="card-title text-primary pt-4">Zaygo City</h3>
                <p class="card-text">ပိုတာရောင်း လိုတာဝယ်ဖို့ အခုပဲ အကောင့်ဖွင့်လိုက်ပါ</p>
                <a href="#" class="btn btn-primary">Login</a>
              </div>
              <img src="./Images/zaygo.png" class="appImg" alt="" width="130px" height="130px">
              <button class="innerBottom"></button>
            </div>
          </div>
        </div>
        <div class="col-md-6" data-aos="fade-up-left">
          <h2>App is Available</h2>
          <p class="mt-5">Find Our Application and download it you can make reservations, food orders and see your deliveries on the way and much more.</p>
          <img src="./Images/appstore.png" alt="" id="appstore">
          <img src="./Images/playstore.png" alt=""  id="playstore">
        </div>
      </div>
    </div>
  <!-- App Session End -->

   <!-- Footer Session Start -->
    <div class=" container-fluid bg-dark border-top" style="padding-top:100px;" id="footerSection">
      <div class="container pb-4">
          <div class="row text-white-50">
            <div class="col-lg-4 col-md-4 col-sm-12 mb-4" data-aos="fade-up-right">
              <h5 class="text-white">Zaygo City</h5>
              <img src="./Images/zaygo.png" class="w-25"><br>
                 <p class="text-white">ပိုတာရောင်း လိုတာဝယ်ဖို့ အခုပဲ အကောင့်ဖွင့်လိုက်ပါ</p>
              <i class="fa-brands fa-facebook-square fs-3 mx-2 text-white" style="cursor: pointer;"></i>
              <i class="fa-solid fa-square-phone-flip  fs-3 mx-2 text-white" style="cursor: pointer;"></i>
              <i class="fa-brands fa-twitter-square fs-3 mx-2 text-white" style="cursor: pointer;"></i>
          </div>
               <div class="col-lg-4 col-md-4 col-sm-12 mb-4" data-aos="fade-up-left">
                  <h4 class="text-white">Menu</h4>
                  <a href="#home" class=" d-block text-decoration-none text-white-50">Home</a>
                  <a href="#menu" class=" d-block text-decoration-none text-white-50">Product</a>
                  <a href="#about" class=" d-block text-decoration-none text-white-50">Order List</a>
                  <a href="#contact" class=" d-block text-decoration-none text-white-50">Product List(Download)</a>
                  
              </div>
              <div class="col-lg-4 col-md-4 col-sm-12 text-white" data-aos="flip-left">
                  <h4>Social Link</h4>
                  <p>Product</p>
                  <p>Order List</p>
                  <p>Product List(Download)</p>
              </div>
             
          </div>
      </div>
    </div>
    <div class="footer">
      <p class="text-white text-center">
        Design & Develop By 
        <img src="./Images/ee.png" alt="" style=" width:30px; height:30px;">
        <img src="./Images/ee.png" alt="" style=" width:30px; height:30px;">
        <img src="./Images/hh.png" alt="" style=" width:30px; height:30px;">
        
      </p>
    </div>
  <!-- Footer Session End -->
  
</body>
    <script src="jquery.js"></script>
<script src="popper.js"></script>
<script src="bootstrap.min.js"></script>
<script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>

<script>
    AOS.init({
        duration: 1500
    });
</script>
</html>
