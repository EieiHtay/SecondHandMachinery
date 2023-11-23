<%@ Page Title="" Language="C#" MasterPageFile="~/User/UserMasterPage.master" AutoEventWireup="true" CodeFile="UserHome.aspx.cs" Inherits="User_UserHome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="../Style.css" rel="stylesheet" />
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet" />
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.bundle.min.js" />
    <link href="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js" />
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   
    <!-- Home Session Start -->
    <div class="container-fluid row" id="home">
        <div class="col-md-2"></div>
        <div class="col-md-4" data-aos="fade-down">
                <div class="header-title" style="padding-top:200px;">
                    <img class="img-fluid w-25 h-25" src="../Images/zaygo.png">
                    <img class="img-fluid w-50 h-25" src="../Images/text-logo.png">
                    <h3 class="text-dark" style="line-height:50px;">ပိုတာရောင်း လိုတာဝယ်ဖို့ <br /> အခုပဲ အကောင့်ဖွင့်လိုက်ပါ။</h3>
                </div>
                <div class="header-body" style="flex-item-align:center; padding-top:10px;">
                    <asp:Button ID="login" runat="server" Text="Login"  class="btn mr-3" style="outline:2px solid #1b23bb; color:#1b23bb;" OnClick="login_Click" />
                    <asp:Button ID="signup" runat="server" Text="Sign Up"  class="btn" style="outline:2px solid #1b23bb; color:#1b23bb;" OnClick="signup_Click"/>
                  <%--<a href="#menu">
                    <button class="btn" style="outline:2px solid #1b23bb; color:#1b23bb;">Login</button>
                  </a>
                  <a href="login.aspx">
                    <button class="btn" style="outline:2px solid #1b23bb; color:#1b23bb;">Sign Up</button>
                  </a>--%>
                </div>
            </div>
        <div class="col-md-6"></div>
        
       <!-- </div> -->
    </div>
  <!-- Home Session End --> 
      
  <!-- Shop Session Start -->
    <section id="menu">
        <h2 class="text-center pt-5">Today Shop</h2>
        <div class="box">
    <div class="listbox">
        <div class="CatTitle">Cartegory Name</div>
        <asp:DataList ID="CatNameList" runat="server" DataKeyField="CatID" OnSelectedIndexChanged="CatNameList_SelectedIndexChanged" 
           >
            <ItemTemplate>
                <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/favs.png"/>
                <asp:LinkButton ID="btnCategoryName"  CommandName="Select" runat="server" Text='<%# Eval("CatName") %>' class="list" />
            </ItemTemplate>
        </asp:DataList>
     </div>
        <div class="listbox">
        <div class="CatTitle">View Your Cart</div>
        <div class="img">
            <a href="ShoppingCard.aspx"><asp:Image ID="Image2" runat="server" ImageUrl="~/Images/shop_cart.png" Width="50px" Height="50px"/></a>
        </div>
        </div>
    </div>
    <div>
        <asp:DataList ID="Productlist" runat="server" DataKeyField="ProID" 
            RepeatColumns="4" RepeatDirection="Horizontal" BorderColor="#003300" 
            BorderStyle="Solid" BorderWidth="1px" CellPadding="5" CellSpacing="3" 
            Width="800px" OnSelectedIndexChanged="Productlist_SelectedIndexChanged">
        <ItemTemplate>
        <div class="prolist">
            <table cellpadding="5" cellspacing="3" align="center">
                <tr>
                    <td>
                        <asp:Image ID="Image3" runat="server" ImageUrl='<%# Eval("Image") %>' Width="100px" Height="100px"/>
                    </td>
                </tr>
                <tr>
                    <td class="price">
                        Price:<asp:Label ID="Price" runat="server" Text='<%# Eval("Price") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="detail">
                       <asp:LinkButton ID="LinkButton1" runat="server" CommandName="Select">Detail</asp:LinkButton>
                    </d>
                </tr>
            </table>
            </div> 
        </ItemTemplate>
        </asp:DataList>
    </div>
      <div class="container d-flex justify-content-center mt-50 mb-50">
        <div class="row" style="padding-left:5px;">
            <div class="col-md-4 mt-2">
                <div class="card">
                    <div class="card-body">
                        <div class="card-img-actions">
                             <img src="https://res.cloudinary.com/dxfq3iotg/image/upload/v1562074043/234.png" class="card-img img-fluid" width="96" height="350" alt="">
                         </div>                
                     </div>
                    <div class="card-body bg-light text-center">
                        <div class="mb-2">
                              <h6 class="font-weight-semibold mb-2">
                                    <a href="#" class="text-default mb-2" data-abc="true">Toshiba Notebook with 500GB HDD & 8GB RAM</a>
                              </h6>
                               <a href="#" class="text-muted" data-abc="true">Laptops & Notebooks</a>
                         </div>                

                         <h3 class="mb-0 font-weight-semibold">$250.99</h3>
                         <button type="button" class="btn bg-danger"><i class="fa fa-cart-plus mr-2"></i> Add to cart</button>
                    </div>
                                    
               </div>   
           </div> 
            <div class="col-md-4 mt-2">
                <div class="card">
                    <div class="card-body">
                        <div class="card-img-actions">
                             <img src="https://res.cloudinary.com/dxfq3iotg/image/upload/v1562074043/234.png" class="card-img img-fluid" width="96" height="350" alt="">
                         </div>                
                     </div>
                    <div class="card-body bg-light text-center">
                        <div class="mb-2">
                              <h6 class="font-weight-semibold mb-2">
                                    <a href="#" class="text-default mb-2" data-abc="true">Toshiba Notebook with 500GB HDD & 8GB RAM</a>
                              </h6>
                               <a href="#" class="text-muted" data-abc="true">Laptops & Notebooks</a>
                         </div>                

                         <h3 class="mb-0 font-weight-semibold">$250.99</h3>
                         <button type="button" class="btn bg-danger"><i class="fa fa-cart-plus mr-2"></i> Add to cart</button>
                    </div>
                                    
               </div>   
           </div> 
            <div class="col-md-4 mt-2">
                <div class="card">
                    <div class="card-body">
                        <div class="card-img-actions">
                             <img src="https://res.cloudinary.com/dxfq3iotg/image/upload/v1562074043/234.png" class="card-img img-fluid" width="96" height="350" alt="">
                         </div>                
                     </div>
                    <div class="card-body bg-light text-center">
                        <div class="mb-2">
                              <h6 class="font-weight-semibold mb-2">
                                    <a href="#" class="text-default mb-2" data-abc="true">Toshiba Notebook with 500GB HDD & 8GB RAM</a>
                              </h6>
                               <a href="#" class="text-muted" data-abc="true">Laptops & Notebooks</a>
                         </div>                

                         <h3 class="mb-0 font-weight-semibold">$250.99</h3>
                         <button type="button" class="btn bg-danger"><i class="fa fa-cart-plus mr-2"></i> Add to cart</button>
                    </div>
                                    
               </div>   
           </div> 
            <div class="col-md-4 mt-2">
                <div class="card">
                    <div class="card-body">
                        <div class="card-img-actions">
                             <img src="https://res.cloudinary.com/dxfq3iotg/image/upload/v1562074043/234.png" class="card-img img-fluid" width="96" height="350" alt="">
                         </div>                
                     </div>
                    <div class="card-body bg-light text-center">
                        <div class="mb-2">
                              <h6 class="font-weight-semibold mb-2">
                                    <a href="#" class="text-default mb-2" data-abc="true">Toshiba Notebook with 500GB HDD & 8GB RAM</a>
                              </h6>
                               <a href="#" class="text-muted" data-abc="true">Laptops & Notebooks</a>
                         </div>                

                         <h3 class="mb-0 font-weight-semibold">$250.99</h3>
                         <button type="button" class="btn bg-danger"><i class="fa fa-cart-plus mr-2"></i> Add to cart</button>
                    </div>
                                    
               </div>   
           </div>
        </div>

      </div>
    </section>
  <!-- Shop Session End -->

  <!-- About Session Start -->
    <div class="container-fluid bg-dark text-white" id="about">
      <div class="row">
        <div class="col-md-6 col-sm-12" data-aos="fade-right">
          <h2 class="text-left">About Us</h2>
            <br />
          <p style="line-height:30px; text-align:left;">
           ကျွန်တော်တို့ Zaygo City မှာဆိုရင် လူကြီးမင်းတို့ အိမ်မှာ အသုံးမလိုတော့တဲ့ တစ်ခါသုံး စက်ပစ္စည်းများကို ပြန်လည်ရောင်းချနိုင်ပြီး မိမိတို့ အိမ်အတွက်လိုအပ်တဲ့ စက်ပစ္စည်းများကိုလည်း တစ်ပတ်ရစ် ဈေးနှုန်းများဖြင့် သက်သက်သာသာ ဝယ်ယူနိုင်ပါပြီ။
          </p>
          
      </div>
      <div class="col-md-6 col-sm-12" data-aos="fade-left">
          <img src="../Images/about.png" class="img-fluid" alt="">
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
                <img src="../Images/menubar1.png" alt="" class="menubar">
                <h3 class="card-title text-primary pt-4">Zaygo City</h3>
                <p class="card-text">ပိုတာရောင်း လိုတာဝယ်ဖို့ အခုပဲ အကောင့်ဖွင့်လိုက်ပါ</p>
                <a href="#" class="btn btn-primary">Login</a>
              </div>
              <img src="../Images/zaygo.png" class="appImg" alt="" width="130px" height="130px">
              <button class="innerBottom" style="background-color:white ;"></button>
            </div>
            <div class="card" id="phone2">
              <button class="top"></button>
              <button class="inner"></button>
              <button class="inner-circle"></button>
              <div class="card-body">
                <span>Shop</span>
                <img src="../Images/menuBar.png" alt="" class="menubar">
                <h3 class="card-title text-primary pt-4">Zaygo City</h3>
                <p class="card-text">ပိုတာရောင်း လိုတာဝယ်ဖို့ အခုပဲ အကောင့်ဖွင့်လိုက်ပါ</p>
                <a href="#" class="btn btn-primary">Login</a>
              </div>
              <img src="../Images/zaygo.png" class="appImg" alt="" width="130px" height="130px">
              <button class="innerBottom"></button>
            </div>
          </div>
        </div>
        <div class="col-md-6" data-aos="fade-up-left">
          <h2 class="text-left"><span style="color:#1b23bb; font-weight:bold;">App</span> is Available</h2>
            <hr style="color:#808080; font-weight:bold;"/>
          <p class="mt-5 text-left"><span style="color:#1b23bb; font-weight:bold; font-size:20px;">Zaygo City</span> ကို ချစ်တဲ့ Customer များအတွက် ယခုနောက်ပိုင်းမှာ website ကနေပဲ ရောင်းတာ ဝယ်တာအပြင် Mobile Phone ကို အသုံးပြုပြီး အလွယ်တကူ ရောင်းဝယ်နိုင်ဖို့အတွက် Mobile Application ကို ထုတ်ထားသည့်အတွက်ကြောင့် ယခုပဲ App ကို Download လုပ်ပြီး အလွယ်တကူ ရောင်းဝယ်နိုင်ပါပြီ။</p>
          <img src="../Images/appstore.png" alt="" id="appstore">
          <img src="../Images/playstore.png" alt=""  id="playstore">
        </div>
      </div>
    </div>
  <!-- App Session End -->

</asp:Content>

