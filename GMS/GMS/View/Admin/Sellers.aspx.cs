using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GMS.View.Admin
{
    public partial class Sellers : System.Web.UI.Page
    {
        Models.Functions Con;
        protected void Page_Load(object sender, EventArgs e)
        {
            Con = new Models.Functions();
            ShowSellers();
        }
        //Add this method
        public override void VerifyRenderingInServerForm(Control control)
        {
            
        }
        private void ShowSellers()
        {
            string Query = "select * from SellerTbl";
            SellerGV.DataSource = Con.getData(Query);
            SellerGV.DataBind();
        }
        protected void SaveBtn_Click(object sender, EventArgs e)
        {
            //email type is an asp control hence cntrl.text used. If further in project this creates an issue, change it to regular text mode.
            try
            {
                if (sellerPassTb.Value == "" || SEmailTb.Text == "" || SNameTb.Value == "" || PhoneTb.Value == "" || SellAddressTb.Value == "")
                {
                    ClientScript.RegisterClientScriptBlock(this.GetType(), "d", "swal('Woops!', 'Details cannot be empty!', 'error');", true);
                }
                else
                {
                    string SName = SNameTb.Value;
                    string SEmail = SEmailTb.Text;
                    string Password = sellerPassTb.Value;
                    string Phone = PhoneTb.Value;
                    string Address = SellAddressTb.Value;

                    string Query = "insert into SellerTbl values('{0}','{1}','{2}','{3}','{4}')";
                    Query = string.Format(Query, SName, SEmail, Password, Phone, Address);
                    Con.SetData(Query);
                    ShowSellers();
                    ClientScript.RegisterClientScriptBlock(this.GetType(), "k", "swal('Yahoo!', 'Seller Added!', 'success');", true);
                    SNameTb.Value = "";
                    SEmailTb.Text = "";
                    sellerPassTb.Value = "";
                    PhoneTb.Value = "";
                    SellAddressTb.Value = "";
                }
            }
            catch(Exception Ex)
            {
                ErrMsg.InnerText = Ex.Message;
            }
        }
        int Key = 0;
        protected void SellerGV_SelectedIndexChanged(object sender, EventArgs e)
        {
            SNameTb.Value = SellerGV.SelectedRow.Cells[2].Text;
            SEmailTb.Text = SellerGV.SelectedRow.Cells[3].Text;
            sellerPassTb.Value = SellerGV.SelectedRow.Cells[4].Text;
            PhoneTb.Value = SellerGV.SelectedRow.Cells[5].Text;
            SellAddressTb.Value = SellerGV.SelectedRow.Cells[6].Text;

            if (SNameTb.Value == "")
            {
                Key = 0;
            }
            else
            {
                Key = Convert.ToInt32(SellerGV.SelectedRow.Cells[1].Text);
            }
        }

        protected void EditBtn_Click(object sender, EventArgs e)
        {
            try
            {
                if (sellerPassTb.Value == "" || SEmailTb.Text == "" || SNameTb.Value == "" || PhoneTb.Value == "" || SellAddressTb.Value == "")
                {
                    ClientScript.RegisterClientScriptBlock(this.GetType(), "d", "swal('Ruff!', 'Details cannot be empty!', 'error');", true);
                }
                else
                {
                    string SName = SNameTb.Value;
                    string SEmail = SEmailTb.Text;
                    string Password = sellerPassTb.Value;
                    string Phone = PhoneTb.Value;
                    string Address = SellAddressTb.Value;

                    string Query = "update SellerTbl set SellName = '{0}', SellEmail = '{1}', SellPassword = {2}, SellPhone = {3}, SellAddress = '{4}' where SellId = '{5}'";
                    Query = string.Format(Query, SName, SEmail, Password, Phone, Address, SellerGV.SelectedRow.Cells[1].Text);
                    Con.SetData(Query);
                    ShowSellers();
                    ClientScript.RegisterClientScriptBlock(this.GetType(), "d", "swal('Yay!', 'Seller Details Updated!', 'info');", true);
                    SNameTb.Value = "";
                    SEmailTb.Text = "";
                    sellerPassTb.Value = "";
                    PhoneTb.Value = "";
                    SellAddressTb.Value = "";
                }
            }
            catch (Exception Ex)
            {
                ErrMsg.InnerText = Ex.Message;
            }
        }

        protected void DeleteBtn_Click(object sender, EventArgs e)
        {
            try
            {
                if (sellerPassTb.Value == "")
                {
                    ClientScript.RegisterClientScriptBlock(this.GetType(), "d", "swal('Oops!', 'Details cannot be empty!', 'error');", true);
                }
                else
                {
                    string SName = SNameTb.Value;

                    string Query = "delete from SellerTbl where SellId = '{0}'";
                    Query = string.Format(Query, SellerGV.SelectedRow.Cells[1].Text);
                    Con.SetData(Query);
                    ShowSellers();
                    ClientScript.RegisterClientScriptBlock(this.GetType(), "k", "swal('Yeet!', 'Seller Deleted!', 'warning');", true);
                    SNameTb.Value = "";
                    SEmailTb.Text = "";
                    sellerPassTb.Value = "";
                    PhoneTb.Value = "";
                    SellAddressTb.Value = "";
                }
            }
            catch (Exception Ex)
            {
                ErrMsg.InnerText = Ex.Message;
            }
        }
        }
    }
