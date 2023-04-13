<%@ Page Title="RediGo Mart | Billing" Language="C#" MasterPageFile="~/View/Seller/SellerMaster.Master" AutoEventWireup="true" CodeBehind="Billing.aspx.cs" Inherits="GMS.View.Seller.Billing" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <script type="text/javascript">
        function PrintPanel() {
            var PGrid = document.getElementById('<%=BillGenGV.ClientID %>');
            var GTOT = document.getElementById('<%=grdTotalTb1.ClientID %>').value;
            var SellerName = document.getElementById('<%=SellName.ClientID %>').value;
            var Pwin = window.open("", "PrintGrid", "left-100,top-100,width-1024,height-768,tollbar 0,scrollbars=1,status=0,resizable=1");
            var date = new Date();
            //var current_date = date.getFullYear() + "-" + (date.getMonth() + 1) + "-" + date.getDate();
            var current_date = date.getDate() + "-" + (date.getMonth() + 1) + "-" + date.getFullYear();
            var hours = date.getHours();
            var minutes = date.getMinutes();
            var seconds = date.getSeconds();
            var ampm = hours >= 12 ? 'pm' : 'am';
            hours = hours % 12;
            hours = hours ? hours : 12; // the hour '0' should be '12'
            minutes = minutes < 10 ? '0' + minutes : minutes;
            var strTime = hours + ':' + minutes + ':' + seconds + ' ' + ampm;
            var date_time = current_date + " | " + strTime;
            Pwin.document.write("<style type='text/css'>body{font-family: sans-serif;background-color: #dee2e6;}hr{margin-top: 0px;margin-bottom: 15px;border: 0;border-top: 5px solid #dc3545;border-radius: 50px;}table{border-radius: 5px;}table th, table td {border:1px solid #000;padding:1rem;border-radius: 5px;}</style>");
            Pwin.document.write("<center>");
            Pwin.document.write("<h1 style='text-align: center; color: #dc3545;'>RediGo Mart</h1>");
            Pwin.document.write("<p>#------ Purchase Invoice ------#</p>");
            Pwin.document.write("<table style='border: none; margin-bottom:0; padding-bottom: 0;'><tr><td style='border: none;'>Seller: " + SellerName + "</td><td style='border: none;padding-left: 5rem; padding-right: 5rem;'></td><td style='border: none;'>Bill Date: " + date_time + "</td></tr></table>");
            Pwin.document.write("<hr>");
            Pwin.document.write(PGrid.outerHTML);
            Pwin.document.write("<table style='border: 0;'><tr><td style='border: 0;padding: 2rem 1rem 0 0;'><h3>Grand Total: </h3></td><td style='border: 0;padding: 2rem 0 0 0;color:#dc3545;'><h1>" + GTOT + "/-</h1></td></tr></table>");
            Pwin.document.write("</center>");
            Pwin.document.write("<footer style='font-size:11px;text-align: center;position: fixed;bottom: 5px;left:42.5%;'>Thank you for shopping with us ;)</footer>");
            Pwin.document.close();
            Pwin.focus();
            Pwin.print();
            Pwin.close();
        }
    </script>
    <!--<script type="text/javascript">
        function PrintPanel() {
            var PGrid = document.getElementById('<%=BillGenGV.ClientID %>');
            PGrid.border = 0;
            var Pwin = window.open("", "PrintGrid", "left-100,top-100,width-1024,height-768,tollbar 0,scrollbars=1,status=0,resizable=1");
            Pwin.document.write(PGrid.outerHTML);
            Pwin.document.close();
            Pwin.focus();
            Pwin.print();
            Pwin.close();
        }
    </script>-->
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
    <asp:TextBox ID="SellName" runat="server" hidden></asp:TextBox>
    <div class="container-fluid">
        <div class="row" style="margin: 2rem 2.8rem 0 2rem;">
            <div class="col-md-5">
                <div class="row">
                    <div class="col">
                        <br />
                        <div class="mb-3">
                            <label for="exampleInputEmail1" class="form-label">Product Name</label>
                            <input type="text" class="form-control" id="PNameTb" runat="server"/>
                        </div>
                        <div class="mb-3">
                            <label for="exampleInputEmail1" class="form-label">Product Prices</label>
                            <input type="text" class="form-control" id="PrPriceTb" runat="server"/>
                        </div>
                        <div class="mb-3">
                            <label for="exampleInputEmail1" class="form-label">Product Qty</label>
                            <input type="text" class="form-control" id="PrQtyTb" runat="server"/>
                        </div>
                    </div>

                    <div class="col">
                        <img src="../../Asset/Images/check_rupee.png" class="ms-5" alt="" width="90" height="100 "/><br/><br/><br/>
                        <label id="ErrMsg" runat="server" class="text-danger" style="margin-left: 2.4rem;"></label><br/><br/><br />
                        <asp:Button ID="AddToBill" runat="server" Text="Add to Bill" 
                            class="btn btn-warning mt-2 ms-2" onclick="AddToBill_Click"/>
                        <asp:Button ID="Reset" runat="server" Text="  Clear  "  
                            class="btn btn-danger mt-2 ms-2" onclick="Reset_Click"/>
                    </div>
                </div>

                <div class="row" style="height: 250px; overflow: auto;">
                    <div class="col"> 
                        <div class="corners" style="margin-top: 2rem;">
                        <asp:GridView ID="BillGV" class="table table-danger table-hover m-0" 
                            AutoGenerateSelectButton="true"  runat="server" 
                            onselectedindexchanged="BillGV_SelectedIndexChanged"> </asp:GridView>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-md-7">
                <div class="row">
                    <div class="col-3"></div>
                    <div class="col">
                        <h1 class="text-warning pl-2 ms-5">Client Billing</h1>
                    </div>
                </div>
                <div class="row" style="margin-left: 2rem; margin-top: 1rem; height: 350px; overflow: auto;">
                    <div class="corners" style="padding: 0;">
                        <asp:GridView ID="BillGenGV" class="table table-warning table-hover m-0" 
                            runat="server">
                        </asp:GridView>
                    </div>
                </div>
                <div class="row mt-5 ms-4">
                    <div class="col pt-2"><h3>Grand Total: </h3></div>
                    <div class="col"><h1 id="grdTotalTb" class="text-danger" runat="server"></h1></div>
                    <asp:TextBox runat="server" ID="grdTotalTb1" value="0" hidden></asp:TextBox>
                    <div class="col d-grid">
                        <asp:Button ID="PrintBtn" runat="server" Text="  Print Bill  " 
                            Class="btn btn-warning btn-block" OnClientClick="PrintPanel()"
                            onclick="PrintBtn_Click"/>
                        
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
