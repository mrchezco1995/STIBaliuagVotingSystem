using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace STIBalElections
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblName.Text = (string)(Session["FirstName"]);

            //Clear sessions before redirecting back to home...
            Session.RemoveAll();
            Session.Clear();
            Session.Abandon();
        }
    }
}