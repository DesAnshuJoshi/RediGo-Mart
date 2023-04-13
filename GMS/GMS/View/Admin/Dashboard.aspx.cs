using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GMS.View.Admin
{
    public partial class Dashboard : System.Web.UI.Page
    {
        Models.Functions Con;
        protected void Page_Load(object sender, EventArgs e)
        {
            Con = new Models.Functions();
            getProducts();
            getCategories();
            getFinance();
            getSellers();
            GetSeller();
            getSellSum();
        }
        private void GetSeller()
        {
            if (!IsPostBack)
            {
                string Query = "select * from SellerTbl";
                SellerCbx.DataTextField = Con.getData(Query).Columns["SellName"].ToString();
                SellerCbx.DataValueField = Con.getData(Query).Columns["SellId"].ToString();
                SellerCbx.DataSource = Con.getData(Query);
                SellerCbx.DataBind();
            }
        }
        private void getProducts()
        {
            if (!IsPostBack)
            {
                string Query = "select Count(*) from ProductTbl";
                PNumTb.InnerText = Con.getData(Query).Rows[0][0].ToString();
                PNumTb.DataBind();
            }
        }
        private void getCategories()
        {
            if (!IsPostBack)
            {
                string Query = "select Count(*) from CategoryTbl";
                CatNumTb.InnerText = Con.getData(Query).Rows[0][0].ToString();
                CatNumTb.DataBind();
            }
        }
        private void getFinance()
        {
            if (!IsPostBack)
            {
                string Query = "select Sum(PrPrice*PrQty) from ProductTbl";
                FinNumTb.InnerText = Con.getData(Query).Rows[0][0].ToString();
                FinNumTb.DataBind();
            }
        }
        private void get()
        {
            if (!IsPostBack)
            {
                string Query = "select Sum(PrPrice*PrQty) from ProductTbl";
                FinNumTb.InnerText = Con.getData(Query).Rows[0][0].ToString();
                FinNumTb.DataBind();
            }
        }
        private void getSellers()
        {
            if (!IsPostBack)
            {
                string Query = "select Count(*) from SellerTbl";
                SellNumTb.InnerText = Con.getData(Query).Rows[0][0].ToString();
                SellNumTb.DataBind();
            }
        }
        private void getSellSum()
        {
            if (!IsPostBack)
            {
                string Query = "SELECT SUM(Amount) AS Expr1 FROM BillTbl WHERE (Seller = " + SellerCbx.SelectedValue + " )";
                TSaleNumTb.InnerText = Con.getData(Query).Rows[0][0].ToString();
                TSaleNumTb.DataBind();

                Random rand = new Random();
                int number = rand.Next(1, 10);
                PopNumTb.InnerText = number.ToString() + " / 10";
            }
        }

        protected void SellerCbx_SelectedIndexChanged(object sender, EventArgs e)
        {
            getSellSum();
            string Query = "SELECT SUM(Amount) AS Expr1 FROM BillTbl WHERE (Seller = " + SellerCbx.SelectedValue + " )";
            TSaleNumTb.InnerText = Con.getData(Query).Rows[0][0].ToString();
            TSaleNumTb.DataBind();

            Random rand = new Random();
            int number = rand.Next(1, 10);
            PopNumTb.InnerText = number.ToString() + " / 10";
            
        }

    }
}