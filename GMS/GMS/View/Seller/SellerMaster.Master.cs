using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GMS.View.Seller
{
    public partial class SellerMaster : System.Web.UI.MasterPage
    {
        string SellerName = Login2.SName;
        protected void Page_Load(object sender, EventArgs e)
        {
            sellnm.Text = SellerName;
        }
    }
}