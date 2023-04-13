using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GMS.View.Admin
{
    public partial class Categories : System.Web.UI.Page
    {
        Models.Functions Con;
        protected void Page_Load(object sender, EventArgs e)
        {
            Con = new Models.Functions();
            ShowCategory();
        }
        //Add this method
        public override void VerifyRenderingInServerForm(Control control)
        {
            
        }
        private void ShowCategory()
        {
            string Query = "select * from CategoryTbl";
            CatGV.DataSource = Con.getData(Query);
            CatGV.DataBind();
        }

        protected void SaveBtn_Click(object sender, EventArgs e)
        {
            try
            {
                if (CatNameTb.Value == "" || CatRemarkTb.Value == "")
                {
                    ClientScript.RegisterClientScriptBlock(this.GetType(), "d", "swal('Oh-no!', 'Details cannot be empty!', 'error')", true);
                }
                else
                {
                    string CName = CatNameTb.Value;
                    string CRem = CatRemarkTb.Value;

                    string Query = "insert into CategoryTbl values('{0}','{1}')";
                    Query = string.Format(Query, CName, CRem);
                    Con.SetData(Query);
                    ShowCategory();
                    ClientScript.RegisterClientScriptBlock(this.GetType(), "k", "swal('Hooray!', 'Category Added!', 'success');", true);
                    CatNameTb.Value = "";
                    CatRemarkTb.Value = "";
                }
            }
            catch (Exception Ex)
            {
                ErrMsg.InnerText = Ex.Message;
            }
        }

        protected void DelBtn_Click(object sender, EventArgs e)
        {
            try
            {
                if (CatNameTb.Value == "")
                {
                    ClientScript.RegisterClientScriptBlock(this.GetType(), "d", "swal('Ruff!', 'Details cannot be empty!', 'error')", true);
                }
                else
                {
                    string CName = CatNameTb.Value;

                    string Query = "delete from CategoryTbl where CatId = '{0}'";
                    Query = string.Format(Query, CatGV.SelectedRow.Cells[1].Text);
                    Con.SetData(Query);
                    ShowCategory();
                    ClientScript.RegisterClientScriptBlock(this.GetType(), "k", "swal('Fab!', 'Category Deleted!', 'warning');", true);
                    CatNameTb.Value = "";
                    CatRemarkTb.Value = "";
                }
            }
            catch (Exception Ex)
            {
                ErrMsg.InnerText = Ex.Message;
            }
        }

        int Key = 0;
        protected void CatGV_SelectedIndexChanged(object sender, EventArgs e)
        {
            CatNameTb.Value = CatGV.SelectedRow.Cells[2].Text;
            CatRemarkTb.Value = CatGV.SelectedRow.Cells[3].Text;

            if (CatNameTb.Value == "")
            {
                Key = 0;
            }
            else
            {
                Key = Convert.ToInt32(CatGV.SelectedRow.Cells[1].Text);
            }
        }

        protected void EditBtn_Click(object sender, EventArgs e)
        {
            try
            {
                if (CatNameTb.Value == "" || CatRemarkTb.Value == "")
                {
                    ClientScript.RegisterClientScriptBlock(this.GetType(), "d", "swal('Frigg!', 'Details cannot be empty!', 'error')", true);
                }
                else
                {
                    string CName = CatNameTb.Value;
                    string CRem = CatRemarkTb.Value;

                    string Query = "update CategoryTbl set CatName = '{0}', CatDescription = '{1}' where CatId = '{2}'";
                    Query = string.Format(Query, CName, CRem, CatGV.SelectedRow.Cells[1].Text);
                    Con.SetData(Query);
                    ShowCategory();
                    ClientScript.RegisterClientScriptBlock(this.GetType(), "k", "swal('Woo-hoo!', 'Changes Saved!', 'success');", true);
                    CatNameTb.Value = "";
                    CatRemarkTb.Value = "";
                }
            }
            catch (Exception Ex)
            {
                ErrMsg.InnerText = Ex.Message;
            }
        }
    }
}