using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using STIBalElections;

namespace STIBalElections
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //DO NOT LET USERS ACCESS THIS PAGE IF NOT REGISTERED FIRST!!! 
            try
            {
                if ((Boolean)(Session["NS"]) == true)
                {
                    //do nothing.......
                }
                else
                {
                    Response.Redirect("Default.aspx");
                }

            }
            catch(SystemException ex)
            {
                System.Diagnostics.Debug.WriteLine("Null found! Redirecting user back to Default. Error details: " + ex.Message);
                Response.Redirect("Default.aspx");
            }
            // try these before loading the page
            try
            {
                lblStudentName.Text = (string)(Session["FirstName"]);
                lblFullName.Text = (string)(Session["LastName"]) + ", " + (string)(Session["FirstName"]) + " " + (string)(Session["MiddleName"]);
                lblStrand.Text = (string)(Session["Grade"]) + " - " + (string)(Session["Section"]) + " (" + (string)(Session["SectionShort"]) + ")";
            }
            // if Sessions are null..... 
            catch(NullReferenceException ex)
            {
                System.Diagnostics.Debug.WriteLine("Null detected while opening ballot! Redirecting back to home page... Error details: " + ex.Message);
                //Redirect user back to homepage
                Session.Clear();
                Session.RemoveAll();
                Session.Abandon();
                Response.Redirect("Default.aspx");
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            //Add to session
            Session["pres"] = rblPres.SelectedValue.ToString();
            Session["vpres"] = rblVpres.SelectedValue.ToString();
            Session["sec"] = rblSec.SelectedValue.ToString();
            Session["treas"] = rblTreas.SelectedValue.ToString();
            Session["aud"] = rblAud.SelectedValue.ToString();
            Session["pro"] = rblPro.SelectedValue.ToString();
            Session["g11"] = rblG11r.SelectedValue.ToString();
            Session["g12"] = rblG12r.SelectedValue.ToString();
            // Comment this vvv if g13 isn't needed (SHS)
            // Session["g13"] = rblG13r.SelectedValue.ToString(); 

            //Add to labels first for the voter's review...
            lblPresident.Text = (string)(Session["pres"]);
            lblVicePresident.Text = (string)(Session["vpres"]);
            lblSecretary.Text = (string)(Session["sec"]);
            lblTreasurer.Text = (string)(Session["treas"]);
            lblAuditor.Text = (string)(Session["aud"]);
            lblPro.Text = (string)(Session["pro"]);
            lblG11.Text = (string)(Session["g11"]);
            lblG12.Text = (string)(Session["g12"]);
            // Comment this vvv if g13 isn't needed (SHS)
            // lblG13.Text = (string)(Session["g13"]);

            //hide top div and show review div
            dvBallotsheet.Visible = false;
            dvReview.Visible = true;
        }

        private void processvote()
        {
            MySqlConnection conn;
            MySqlCommand cmd;
            string connstring = System.Configuration.ConfigurationManager.ConnectionStrings["AppConnString"].ToString();

            //if G13 is needed use code below else comment it and use the other one. 
            /**string query = "insert into stielections.voters (lastname, firstname, middlename, grade, strand, presvote, vpresvote, secvote, treasvote, audvote, provote, g11repvote, g12repvote, g13repvote) values ('"
                            + sqlescape.MySqlEscape((string)(Session["LastName"])) + "', '"
                            + sqlescape.MySqlEscape((string)(Session["FirstName"])) + "', '"
                            + sqlescape.MySqlEscape((string)(Session["MiddleName"])) + "', '"
                            + sqlescape.MySqlEscape((string)(Session["Grade"])) + "', '"
                            + sqlescape.MySqlEscape((string)(Session["SectionShort"])) + "', ' "
                            + (string)(Session["pres"]) + "', '"
                            + (string)(Session["vpres"]) + "', '"
                            + (string)(Session["sec"]) + "', '"
                            + (string)(Session["treas"]) + "', '"
                            + (string)(Session["aud"]) + "', '"
                            + (string)(Session["pro"]) + "', '"
                            + (string)(Session["g11"]) + "', '"
                            + (string)(Session["g12"]) + "', '"
                            + (string)(Session["g13"]) + "')";

            **/
            string query = "insert into stielections.voters (lastname, firstname, middlename, grade, strand, presvote, vpresvote, secvote, treasvote, audvote, provote, g11repvote, g12repvote) values ('"
                            + sqlescape.MySqlEscape((string)(Session["LastName"])) + "', '"
                            + sqlescape.MySqlEscape((string)(Session["FirstName"])) + "', '"
                            + sqlescape.MySqlEscape((string)(Session["MiddleName"])) + "', '"
                            + sqlescape.MySqlEscape((string)(Session["Grade"])) + "', '"
                            + sqlescape.MySqlEscape((string)(Session["SectionShort"])) + "', ' "
                            + (string)(Session["pres"]) + "', '"
                            + (string)(Session["vpres"]) + "', '"
                            + (string)(Session["sec"]) + "', '"
                            + (string)(Session["treas"]) + "', '"
                            + (string)(Session["aud"]) + "', '"
                            + (string)(Session["pro"]) + "', '"
                            + (string)(Session["g11"]) + "', '"
                            + (string)(Session["g12"]) + "')";
            conn = new MySqlConnection(connstring);
            conn.Open();
            cmd = new MySqlCommand(query, conn);
            cmd.ExecuteNonQuery();
            conn.Close();
        }

        protected void btnSubVote_Click(object sender, EventArgs e)
        {
            try
            {
                processvote();
                Response.Redirect("Success.aspx");
            }
            catch(MySqlException ex)
            {
                System.Diagnostics.Debug.WriteLine("System Encountered an SQL Error! Please check! Error details: " + ex.Message);
                Response.Write("MySQL Error! Something just happened at MySQL! Please report to Management! Error details: " + ex.Message);
            }
            catch(SystemException ex)
            {
                System.Diagnostics.Debug.WriteLine("System Encountered a System Exception! Please check! Error details: " + ex.Message);
                Response.Write("System Error! Please report to Management immediately! Error details: " + ex.Message);
            }
        }

        protected void btnReturn_Click(object sender, EventArgs e)
        {
            dvBallotsheet.Visible = true;
            dvReview.Visible = false;
        }
    }
}