<%@ Page Title="RediGo Admin | Dashboard" Language="C#" MasterPageFile="~/View/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="GMS.View.Admin.Dashboard" Async="true"%>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@500&display=swap" rel="stylesheet" />
    <style>
        .container-fluid
        {
            font-family: 'Poppins', Sans-Serif;
        }
    </style>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/three.js/r121/three.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/vanta@latest/dist/vanta.birds.min.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Mybody" runat="server">
    <div id="animate" style="overflow: hidden;">
    <!--<h1>Dashboard</h1>-->
    <div class="container-fluid">
        <div class="row mb-5" style="height:80px;">
            <div class="col-md-2"></div>
            <div class="col-md-8">
                <div class="row">
                    <div class="col-3  me-5">
                        <!--<img src="../../Asset/Images/dashboard_layout.png" width="30px" alt=""/>-->
                    </div>
                    <div class="col-8 mt-4 mb-5">
                        <h2 class="text-danger" style="background-color: rgba(255,255,255,0.5);width: 322px;border-radius: 20px;padding: .5rem;">RediGo Dashboard</h2>
                    </div>
                </div>
            </div>
            <div class="col-md-1"></div>
        </div>

        <div class="row ps-5">
            <div class="col-1"></div>
            <div class="col-10">
                <div class="row">
                    <div class="col-md-3 rounded" style="background: rgba(220, 53, 69, 0.51);">
                        <div class="row">
                            <div class="col-md-2"><img src="../../Asset/Images/estimate.png" class="rounded mt-4 ms-2" width="50px" style="filter: invert(1);" alt="" /></div>
                            <div class="col-md-10">
                                <h3 class="text-white ms-5 pt-2"><a href="Products.aspx" style="text-decoration: none; color: #fff;">Products</a></h3>
                                <h1 class="text-white ps-5 ms-auto" runat="server" id="PNumTb">Num</h1>
                            </div>
                        </div>
                    </div>


                    <div class="col-md-1">
                    
                    </div>

                    <div class="col-md-3 rounded" style="background: rgba(220, 53, 69, 0.51);">
                        <div class="row">
                            <div class="col-md-2"><img src="../../Asset/Images/categories.png" class="mt-4 ms-2" width="50px" style="filter: invert(1);" alt="" /></div>
                            <div class="col-md-10">
                                <h3 class="text-white ms-5 pt-2"><a href="Categories.aspx" style="text-decoration: none; color: #fff;">Categories</a></h3>
                                <h1 class="text-white ps-5 ms-auto" runat="server" id="CatNumTb">Num</h1>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-1">
                    
                    </div>

                    <div class="col-md-3 rounded" style="background: rgba(220, 53, 69, 0.51);">
                        <div class="row">
                            <div class="col-md-2"><img src="../../Asset/Images/seller-db.png" class="mt-4 ms-2" style="filter: invert(1);" width="50px" alt="" /></div>
                            <div class="col-md-10">
                                <h3 class="text-white ms-5 pt-2"><a href="Sellers.aspx" style="text-decoration: none; color: #fff;">Sellers</a></h3>
                                <h1 class="text-white ps-5 ms-auto" runat="server" id="SellNumTb">Num</h1>
                            </div>
                        </div>
                    </div>
                    

                    <div class="col-md-1">
                    
                    </div>

                </div>
            </div>
        </div>

        <div class="row mb-5 mt-5"></div>

        <div class="row" style="padding-bottom: 4.05rem;">
            <div class="col-1"></div>
            <div class="col-10">
            <div class="row mb-3">
                <div class="col">
                    
                </div>
                <div class="col" style="padding-left: 10rem;padding-right: 12.5rem;">
                    <div class="mb-2" style="width: 500px;">
                        <h3 class="text-danger">Select Seller<asp:DropDownList ID="SellerCbx" runat="server" class="form-control" 
                            onselectedindexchanged="SellerCbx_SelectedIndexChanged" AutoPostBack="true" BackColor="#DC3545" ForeColor="White" /></h3>
                    </div>
                </div>
                <div class="col"></div>
             </div>
                <div class="row ps-5">
                    <div class="col-md-3 rounded" style="background: rgba(220, 53, 69, 0.51);">
                        <div class="row">
                            <div class="col-md-2"><img src="../../Asset/Images/popular.png" class="mt-4 ms-2" width="50px" style="filter: invert(1);" alt="" /></div>
                            <div class="col-md-10">
                                <h3 class="text-white ms-5 pt-2">Popularity</h3>
                                <h1 class="text-white ps-5 ms-auto" runat="server" id="PopNumTb">Num</h1>
                            </div>
                        </div>
                    </div>


                    <div class="col-md-1">
                    
                    </div>

                    <div class="col-md-3 rounded" style="background: rgba(220, 53, 69, 0.51);">
                        <div class="row">
                            <div class="col-md-2"><img src="../../Asset/Images/sale.png" class="mt-4 ms-2" width="50px" style="filter: invert(1);" alt="" /></div>
                            <div class="col-md-10">
                                <h3 class="text-white ms-5 pt-2">Sale</h3>
                                <h1 class="text-white ps-5 ms-auto" runat="server" id="TSaleNumTb">Num</h1>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-1">
                    
                    </div>


                    <div class="col-md-3 rounded" style="background: rgba(220, 53, 69, 0.51);">
                        <div class="row">
                            <div class="col-md-2"><img src="../../Asset/Images/rupee-indian.png" class="mt-4 ms-2" style="filter: invert(1);" width="50px" alt="" /></div>
                            <div class="col-md-10">
                                <h3 class="text-white ms-5 pt-2">Finance</h3>
                                <h1 class="text-white ps-5 ms-auto" runat="server" id="FinNumTb">Num</h1>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
            <div class="col-1"></div>
        </div>

    </div>
    </div>
    <script type="text/javascript">
        VANTA.BIRDS({
            el: "#animate",
            mouseControls: true,
            touchControls: true,
            gyroControls: false,
            minHeight: 200.00,
            minWidth: 200.00,
            scale: 1.00,
            scaleMobile: 1.00,
            backgroundColor: 0xffd7dd,
            color1: 0x2f0000,
            color2: 0xffa3ad,
            wingSpan: 20.00,
            separation: 19.00,
            alignment: 15.00,
            cohesion: 100.00
        })
</script>
</asp:Content>
