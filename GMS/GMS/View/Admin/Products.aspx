<%@ Page Title="RediGo Admin | Products" Language="C#" MasterPageFile="~/View/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Products.aspx.cs" Inherits="GMS.View.Admin.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<style>
    .corners 
    { 
        border: 10px solid #dc3545; 
        -moz-border-radius: 8px; 
        border-radius: 10px;
        overflow: hidden;
        -webkit-border-radius: 8px;
    }
</style>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Mybody" runat="server">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-3 pe-0 me-5"></div>
            <div class="col-md-5 ps-2 ms-4"><br/><img src="../../Asset/Images/products.png" alt="" width="55" height="70"/><h4 class="text-danger">Manage Products</h4></div>
        </div>
        <div class="row mb-5">
            <div class="col-md-3 ms-5 me-3">
                <h2 class="text-danger">Product Details</h2>
               
                    <div class="mb-3">
                        <label for="exampleInputEmail1" class="form-label">Product Name</label>
                        <input type="text" class="form-control" id="PNameTb" runat="server" />
                    </div>

                    <div class="mb-3">
                        <label for="CategoryCb" class="form-label">Product Category</label>
                        <!--<input type="text" class="form-control" id="CategoryCb" runat="server" />-->
                        <asp:DropDownList ID="CategoryCbx" runat="server" class="form-control"/>
                    </div>

                    <div class="mb-3">
                        <label for="exampleInputEmail1" class="form-label">Product Price</label>
                        <input type="text" class="form-control" id="PriceTb" runat="server" />
                    </div>

                    <div class="mb-3">
                        <label for="exampleInputEmail1" class="form-label">Product Quantity</label>
                        <input type="text" class="form-control" id="ProdQtyTb" runat="server" />
                    </div>

                    <div class="mb-3">
                        <label for="exampleInputEmail1" class="form-label">Expiry Date</label>
                        <asp:TextBox ID="ExpDatex" runat="server" class="form-control" TextMode="Date" />
                    </div>
               
                    <label id="ErrMsg" runat="server" class="text-danger"></label><br/>
                    <asp:Button ID="EditBtnx" runat="server" Text="   Edit   " 
                    Class="btn btn-danger" onclick="EditBtnx_Click"/>
                    <asp:Button ID="SaveBtn" runat="server" Text="  Save  " 
                    Class="btn btn-danger" onclick="SaveBtn_Click" />
                    <asp:Button ID="DelBtn" runat="server" Text=" Delete " 
                    Class="btn btn-danger" onclick="DelBtn_Click" />
            </div>
            <div class="col-md-8 mt-3" style="height: 500px; overflow: auto;">
                <div class="corners">
                    <asp:GridView runat="server" class="table table-danger table-hover mb-0" ID="ProdGV" AutoGenerateSelectButton="True" OnSelectedIndexChanged="ProdGV_SelectedIndexChanged"> 
                    </asp:GridView>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
