using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GMS.View.Admin
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        Models.Functions Con;
        protected void Page_Load(object sender, EventArgs e)
        {
            Con = new Models.Functions();
            GetCategories();
            ShowProducts();
        }
        private void GetCategories()
        {
            if(!IsPostBack)
            {
                string Query = "select * from CategoryTbl";
                CategoryCbx.DataTextField = Con.getData(Query).Columns["CatName"].ToString();
                CategoryCbx.DataValueField = Con.getData(Query).Columns["CatId"].ToString();
                CategoryCbx.DataSource = Con.getData(Query);
                CategoryCbx.DataBind();
            }
        }
        //Add this method
        public override void VerifyRenderingInServerForm(Control control)
        {

        }
        private void ShowProducts()
        {
            string Query = "select * from ProductTbl";
            ProdGV.DataSource = Con.getData(Query);
            ProdGV.DataBind();
        }
        protected void SaveBtn_Click(object sender, EventArgs e)
        {
            try
            {
                if (PNameTb.Value == "" || CategoryCbx.DataTextField == "" || PriceTb.Value == "" || ProdQtyTb.Value == "")
                {
                    ClientScript.RegisterClientScriptBlock(this.GetType(), "d", "swal('Ruh-Oh!', 'Details cannot be empty!', 'error')", true);
                }
                else
                {
                    string PName = PNameTb.Value;
                    string PCat = CategoryCbx.SelectedValue;
                    string PPrice = PriceTb.Value;
                    string PQty = ProdQtyTb.Value;
                    string PExpDt = ExpDatex.Text;

                    string Query = "insert into ProductTbl values('{0}','{1}','{2}','{3}','{4}')";
                    Query = string.Format(Query, PName, PCat, PPrice, PQty, PExpDt);
                    Con.SetData(Query);
                    ShowProducts();
                    ClientScript.RegisterClientScriptBlock(this.GetType(), "k", "swal('Weee!', 'Product Added!', 'success');", true);
                    PNameTb.Value = "";
                    PriceTb.Value = "";
                    ProdQtyTb.Value = "";
                    ExpDatex.Text = "";

                }
            }
            catch (Exception Ex)
            {
                ErrMsg.InnerText = Ex.Message;
            }
        }
        int Key = 0;
        protected void ProdGV_SelectedIndexChanged(object sender, EventArgs e)
        {
            PNameTb.Value = ProdGV.SelectedRow.Cells[2].Text;
            CategoryCbx.SelectedItem.Value = ProdGV.SelectedRow.Cells[3].Text;
            PriceTb.Value = ProdGV.SelectedRow.Cells[4].Text;
            ProdQtyTb.Value = ProdGV.SelectedRow.Cells[5].Text;
            ExpDatex.Text = ProdGV.SelectedRow.Cells[6].Text;

            if (PNameTb.Value == "")
            {
                Key = 0;
            }
            else
            {
                Key = Convert.ToInt32(ProdGV.SelectedRow.Cells[1].Text);
            }
        }

        protected void DelBtn_Click(object sender, EventArgs e)
        {
            try
            {
                if (PNameTb.Value == "")
                {
                    ClientScript.RegisterClientScriptBlock(this.GetType(), "d", "swal('Oh-no!', 'Details cannot be empty!', 'error');", true);
                }
                else
                {
                    string SName = PNameTb.Value;

                    string Query = "delete from ProductTbl where PrId = '{0}'";
                    Query = string.Format(Query, ProdGV.SelectedRow.Cells[1].Text);
                    Con.SetData(Query);
                    ShowProducts();
                    ClientScript.RegisterClientScriptBlock(this.GetType(), "k", "swal('Woo!', 'Product Deleted!', 'warning');", true);
                    PNameTb.Value = "";
                    PriceTb.Value = "";
                    ProdQtyTb.Value = "";
                    ExpDatex.Text = "";
                    
                }
            }
            catch (Exception Ex)
            {
                ErrMsg.InnerText = Ex.Message;
            }
        }

        protected void EditBtnx_Click(object sender, EventArgs e)
        {
            try
            {
                if (PNameTb.Value == "" || CategoryCbx.DataTextField == "" || PriceTb.Value == "" || ProdQtyTb.Value == "")
                {
                    ClientScript.RegisterClientScriptBlock(this.GetType(), "d", "swal('Ruff!', 'Details cannot be empty!', 'error');", true);
                }
                else
                {
                    string PName = PNameTb.Value;
                    string PCat = CategoryCbx.SelectedValue;
                    string PPrice = PriceTb.Value;
                    string PQty = ProdQtyTb.Value;
                    string PExpDt = ExpDatex.Text;

                    string Query = "update ProductTbl set PrName = '{0}', PrCat = {1}, PrPrice = {2}, PrQty = {3}, PrExpDate = '{4}' where PrId = '{5}'";
                    Query = string.Format(Query, PName, PCat, PPrice, PQty, PExpDt, ProdGV.SelectedRow.Cells[1].Text);
                    Con.SetData(Query);
                    ShowProducts();
                    ClientScript.RegisterClientScriptBlock(this.GetType(), "u", "swal('Glory!', 'Product Updated!', 'info');", true);
                    PNameTb.Value = "";
                    PriceTb.Value = "";
                    ProdQtyTb.Value = "";
                    ExpDatex.Text = "";
                }
            }
            catch (Exception Ex)
            {
                ErrMsg.InnerText = Ex.Message;
            }
        }

        
        }
    }