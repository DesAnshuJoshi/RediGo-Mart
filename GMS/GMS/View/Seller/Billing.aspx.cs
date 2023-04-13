using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace GMS.View.Seller
{
    public partial class Billing : System.Web.UI.Page
    {
        Models.Functions Con;
        string SellerName = Login2.SName;
        int Seller = Login2.SKey;
        protected void Page_Load(object sender, EventArgs e)
        {
            Con = new Models.Functions();
            ShowProducts();
            if (!this.IsPostBack)
            {
                DataTable dt = new DataTable();
                dt.Columns.AddRange(new DataColumn[5]
                    {
                        new DataColumn("ID"),
                        new DataColumn("Product"),
                        new DataColumn("Price"),
                        new DataColumn("Quantity"),
                        new DataColumn("Total"),
                    });
                ViewState["Bill"] = dt;
                this.BindGrid();
            }
            SellName.Text = SellerName;
        }

        protected void BindGrid()
        {
            BillGenGV.DataSource = (DataTable)ViewState["Bill"];
            BillGenGV.DataBind();
        }
        //Add this method
        public override void VerifyRenderingInServerForm(Control control)
        {

        }
        private void InsertBills()
        {
            string Query = "INSERT INTO BillTbl (BillDate, Seller, Amount) VALUES (GETDATE(), "+ Seller +", "+ Amount +")";
            Con.SetData(Query);
            ErrMsg.InnerText = "Bill Inserted!";
        }
        private void ShowProducts()
        {
            string Query = "select PrId as ID, PrName as Name, PrCat as Category, PrPrice as Price, PrQty as Quantity from ProductTbl";
            BillGV.DataSource = Con.getData(Query);
            BillGV.DataBind();
        }
        int Stock, Key = 0;
        protected void BillGV_SelectedIndexChanged(object sender, EventArgs e)
        {
            PNameTb.Value = BillGV.SelectedRow.Cells[2].Text;
            //CategoryCbx.SelectedItem.Value = BillGV.SelectedRow.Cells[3].Text;
            PrPriceTb.Value = BillGV.SelectedRow.Cells[4].Text;
            

            if (PNameTb.Value == "")
            {
                Key = 0;
            }
            else
            {
                Key = Convert.ToInt32(BillGV.SelectedRow.Cells[1].Text);
            }
        }
        private void UpdateStock()
        {
            int newQty;
            newQty = Convert.ToInt32(BillGV.SelectedRow.Cells[5].Text) - Convert.ToInt32(PrQtyTb.Value);
            string Query = "update ProductTbl set PrQty = '{0}' where PrId = '{1}'";
            Query = string.Format(Query, newQty, BillGV.SelectedRow.Cells[1].Text);
            Con.SetData(Query);
            ShowProducts();
            ErrMsg.InnerText = "Stock Updated!";
        }
        int gndTotal = 0;
        public static int Amount;
        protected void AddToBill_Click(object sender, EventArgs e)
        {
            
            if(PNameTb.Value == "" || PrPriceTb.Value == "" || PrQtyTb.Value == "")
            {
                ClientScript.RegisterClientScriptBlock(this.GetType(), "d", "swal('Ruff!', 'Items not selected!', 'error');", true);
            }
            else
            {
                int total = Convert.ToInt32(PrQtyTb.Value) * Convert.ToInt32(PrPriceTb.Value);
                DataTable dt = (DataTable)ViewState["Bill"];
                dt.Rows.Add
                    (
                        BillGenGV.Rows.Count + 1,
                        PNameTb.Value.Trim(),
                        PrPriceTb.Value.Trim(),
                        PrQtyTb.Value.Trim(),
                        total
                     );
                ViewState["Bill"] = dt;
                this.BindGrid();
                UpdateStock();
                gndTotal = 0;
                for (int i = 0; i <= BillGenGV.Rows.Count - 1; i++)
                {
                    gndTotal = gndTotal + Int32.Parse(BillGenGV.Rows[i].Cells[4].Text.ToString());
                }
                Amount = gndTotal;
                grdTotalTb.InnerText = "₹ " + Amount;
                grdTotalTb1.Text = "₹ " + Amount; 
                //JSTotal.InnerText = "₹ " + Amount; 
                ClientScript.RegisterClientScriptBlock(this.GetType(),"k","swal('Wodoo!','Items have been added to the bill','success');", true);
                PNameTb.Value = PrPriceTb.Value = PrQtyTb.Value = string.Empty;
            }
      }
            
        protected void PrintBtn_Click(object sender, EventArgs e)
        {
            InsertBills();
            ClientScript.RegisterClientScriptBlock(this.GetType(), "f", "swal('Hooray!', 'Bill Generated!', 'success');", true);
            BillGenGV.DataSource = null;
            BillGenGV.DataBind();
            grdTotalTb.InnerText = String.Empty;
        }

        protected void Reset_Click(object sender, EventArgs e)
        {
            if (PrPriceTb.Value == "" || PrQtyTb.Value == "" || PNameTb.Value == "")
            {
                ClientScript.RegisterClientScriptBlock(this.GetType(), "k", "swal('Oops!', 'Fields are already empty!', 'error');", true);
            }
            else
            {
                ClientScript.RegisterClientScriptBlock(this.GetType(), "k", "swal('Woo!', 'Data has been cleared!', 'success');", true);
                PNameTb.Value = PrPriceTb.Value = PrQtyTb.Value = string.Empty;
            }
        }
    }
}