using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace GMS.View
{
    public partial class Login2 : System.Web.UI.Page
    {
        Models.Functions Con;
        protected void Page_Load(object sender, EventArgs e)
        {
            Con = new Models.Functions();
        }
        public static string SName;
        public static int SKey;
        public static string SAdd;
        //Add this method
        public override void VerifyRenderingInServerForm(Control control)
        {
        
        }

        protected void LoginBtn_Click(object sender, EventArgs e)
        {
            if (EmailTb.Text == "" || PassTb.Value == "")
            {
                ClientScript.RegisterClientScriptBlock(this.GetType(), "k", "swal('Stop!', 'Enter valid credentials!', 'error');", true);
            }
            else if (AdminRadio.Checked)
            {
                if (EmailTb.Text == "admin@redigo.com" && PassTb.Value == "admin123")
                {
                    Response.Redirect("Admin/Dashboard.aspx");
                }
                else
                {
                    //InfoMsg.InnerText = "Invalid Admin Credentials";
                    ClientScript.RegisterClientScriptBlock(this.GetType(), "k", "swal('Ruh-Oh!', 'Admin Credentials are Invalid', 'error')", true);
                    EmailTb.Text = PassTb.Value = String.Empty;
                }
            }
            else
            {
                string Query = "select SellId, SellName, SellEmail, SellPassword from SellerTbl where SellEmail = '{0}' and SellPassword = '{1}'";
                Query = string.Format(Query, EmailTb.Text, PassTb.Value);
                DataTable dt = Con.getData(Query);
                if (dt.Rows.Count == 0)
                {
                    ClientScript.RegisterClientScriptBlock(this.GetType(), "k", "swal('Ruh-Oh!', 'Seller Credentials are Invalid', 'error')", true);
                    EmailTb.Text = PassTb.Value = String.Empty;
                }
                else
                {
                    SName = EmailTb.Text;
                    SKey = Convert.ToInt32(dt.Rows[0][0].ToString());
                    Response.Redirect("Seller/Billing.aspx");
                }
            }
        }
    }
}