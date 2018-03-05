using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace STIBalElections
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            /*
            //Clear Sessions for safety reasons... 
            Session.Clear();
            Session.RemoveAll();
            Session.Abandon();

            //Empty textboxes before fully loading the page just in case...

            txtFirstName.Text = "";
            txtLastName.Text = "";
            txtMiddleName.Text = "";
            */
        }

        protected void btnStartVote_Click(object sender, EventArgs e)
        {
            //Add inputs to temporary sessions.... 

            Session["NS"] = true;
            Session["FirstName"] = txtFirstName.Text.Trim();
            Session["MiddleName"] = txtMiddleName.Text.Trim();
            Session["LastName"] = txtLastName.Text.Trim();
            Session["Grade"] = ddlGrade.SelectedValue.ToString();
            Session["Section"] = ddlStrand.SelectedItem.ToString();
            Session["SectionShort"] = ddlStrand.SelectedValue.ToString();

            Response.Redirect("Ballot.aspx");


        }
    }
}