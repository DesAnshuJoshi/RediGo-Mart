<%@ Page Title="RediGo Admin | Categories" Language="C#" MasterPageFile="~/View/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Categories.aspx.cs" Inherits="GMS.View.Admin.Categories" %>
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
<asp:Content ID="Content2" ContentPlaceHolderID="MyBody" runat="server">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-3 pe-0 me-5"></div>
            <div class="col-md-5 ps-2 ms-4"><br/><img src="../../Asset/Images/category.png" width="70" height="70" alt=""/><h4 class="text-danger">Manage Categories</h4></div>
        </div>
        <div class="row">
            <div class="col-md-3 ms-5 me-3">
                <h2 class="text-danger">Category Details</h2>
               
                    <div class="mb-3">
                        <label for="exampleInputEmail1" class="form-label">Category Name</label>
                        <input type="text" class="form-control" id="CatNameTb" runat="server" />
                    </div>

                    <div class="mb-3">
                        <label for="exampleInputEmail1" class="form-label">Category Remarks</label>
                        <input type="text" class="form-control" id="CatRemarkTb" runat="server" />
                    </div>

                    <br /><br /><br />
               
                    <label id="ErrMsg" runat="server" class="text-danger"></label><br/>
                    <asp:Button ID="EditBtn" runat="server" Text="   Edit   " 
                    Class="btn btn-danger" onclick="EditBtn_Click" />
                    <asp:Button ID="SaveBtn" runat="server" Text="  Save  " Class="btn btn-danger" onclick="SaveBtn_Click" />
                    <asp:Button ID="DelBtn" runat="server" Text=" Delete " 
                    Class="btn btn-danger" onclick="DelBtn_Click" />
            </div>
            <div class="col-md-8 mt-3" style="height: 335px; overflow: auto;">
            <div class="corners">
                <asp:GridView runat="server" class="table table-danger table-hover mb-0" ID="CatGV" 
                    AutoGenerateSelectButton="True" 
                    onselectedindexchanged="CatGV_SelectedIndexChanged"> 
                </asp:GridView>
            </div>
            </div>
        </div>
    </div>
</asp:Content>
