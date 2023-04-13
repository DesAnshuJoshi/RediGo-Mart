<%@ Page Title="RediGo Admin | Sellers" Language="C#" MasterPageFile="~/View/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Sellers.aspx.cs" Inherits="GMS.View.Admin.Sellers" %>
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
            <div class="col-md-5 ps-2 ms-4"><br/><img src="../../Asset/Images/users.png" alt="" width="70" height="70"/><h4 class="text-danger">Manage Sellers</h4></div>
        </div>
        <div class="row mb-5">
            <div class="col-md-3 ms-5 me-3">
                <h2 class="text-danger">Seller Details</h2>
               
                    <div class="mb-3">
                        <label for="SNameTb" class="form-label">Seller Name</label>
                        <input type="text" class="form-control" id="SNameTb" runat="server" />
                    </div>

                    <div class="mb-3">
                        <label for="SEmailTb" class="form-label">Seller Email</label>
                        <!--Regular input doesn't support mail type-->
                        <asp:TextBox runat="server" TextMode="Email" class="form-control" id="SEmailTb" />
                    </div>

                    <div class="mb-3">
                        <label for="exampleInputEmail1" class="form-label">Seller Password</label>
                        <input type="text" class="form-control" id="sellerPassTb" runat="server" />
                    </div>

                    <div class="mb-3">
                        <label for="exampleInputEmail1" class="form-label">Seller Phone</label>
                        <input type="text" class="form-control" id="PhoneTb" runat="server" />
                    </div>

                    <div class="mb-3">
                        <label for="exampleInputEmail1" class="form-label">Seller Address</label>
                        <input type="text" class="form-control" id="SellAddressTb" runat="server" />
                    </div>
               
                    <label id="ErrMsg" runat="server" class="text-danger"></label><br/>
                    <asp:Button ID="EditBtn" runat="server" Text="   Edit   " Class="btn btn-danger" onclick="EditBtn_Click" />
                    <asp:Button ID="SaveBtn" runat="server" Text="  Save  " Class="btn btn-danger" onclick="SaveBtn_Click" />
                    <asp:Button ID="DeleteBtn" runat="server" Text=" Delete " Class="btn btn-danger" onclick="DeleteBtn_Click" />
            </div>
            <div class="col-md-8 mt-3" style="height: 520px; overflow: auto;">
                <div class="corners">
                <asp:GridView runat="server" class="table table-danger table-hover m-0" ID="SellerGV" 
                    AutoGenerateSelectButton="True" 
                    onselectedindexchanged="SellerGV_SelectedIndexChanged"> </asp:GridView>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
