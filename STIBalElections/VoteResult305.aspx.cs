using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using STIBalElections;
using MySql.Data.MySqlClient;
using System.Drawing;

namespace STIBalElections
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        private void gentable()
        {
            MySqlConnection conn;
            MySqlCommand cmd;
            MySqlDataReader reader;
            string connstring = System.Configuration.ConfigurationManager.ConnectionStrings["AppConnString"].ToString();

            #region Code for President
            string query = "select membername, partylist from stielections.candidates where position = 'president'";
            conn = new MySqlConnection(connstring);
            conn.Open();
            cmd = new MySqlCommand(query, conn);
            List<string> pres = new List<string>();
            reader = cmd.ExecuteReader();
            while (reader.HasRows && reader.Read())
            {
                pres.Add(reader.GetString(0) + " (" + reader.GetString(1) + ")");
            }
            reader.Close();
            lblPres1.Text = pres[0];
            lblPres2.Text = pres[1];

            query = "select count(1) from stielections.voters where presvote like '%" + pres[0] + "%'";
            cmd = new MySqlCommand(query, conn);
            reader = cmd.ExecuteReader();
            while (reader.HasRows && reader.Read())
            {
                lblPres1c.Text = reader.GetString(0);
            }
            reader.Close();
            query = "select count(1) from stielections.voters where presvote like '%" + pres[1] + "%'";
            cmd = new MySqlCommand(query, conn);
            reader = cmd.ExecuteReader();
            while (reader.HasRows && reader.Read())
            {
                lblPres2c.Text = reader.GetString(0);
            }
            reader.Close();
            query = "select count(1) from stielections.voters where presvote like '%none%'";
            cmd = new MySqlCommand(query, conn);
            reader = cmd.ExecuteReader();
            while (reader.HasRows && reader.Read())
            {
                lblPresN.Text = reader.GetString(0);
            }
            reader.Close();
            #endregion

            #region Code for Vice President
            query = "select membername, partylist from stielections.candidates where position = 'vice president'";
            conn = new MySqlConnection(connstring);
            conn.Open();
            cmd = new MySqlCommand(query, conn);
            List<string> vpres = new List<string>();
            reader = cmd.ExecuteReader();
            while (reader.HasRows && reader.Read())
            {
                vpres.Add(reader.GetString(0) + " (" + reader.GetString(1) + ")");
            }
            reader.Close();
            lblVpres1.Text = vpres[0];
            lblVpres2.Text = vpres[1];

            query = "select count(1) from stielections.voters where vpresvote like '%" + vpres[0] + "%'";
            cmd = new MySqlCommand(query, conn);
            reader = cmd.ExecuteReader();
            while (reader.HasRows && reader.Read())
            {
                lblVpres1c.Text = reader.GetString(0);
            }
            reader.Close();
            query = "select count(1) from stielections.voters where vpresvote like '%" + vpres[1] + "%'";
            cmd = new MySqlCommand(query, conn);
            reader = cmd.ExecuteReader();
            while (reader.HasRows && reader.Read())
            {
                lblVpres2c.Text = reader.GetString(0);
            }
            reader.Close();
            query = "select count(1) from stielections.voters where vpresvote = 'none'";
            cmd = new MySqlCommand(query, conn);
            reader = cmd.ExecuteReader();
            while (reader.HasRows && reader.Read())
            {
                lblVpresN.Text = reader.GetString(0);
            }
            reader.Close();
            #endregion

            #region Code for Secretary
            query = "select membername, partylist from stielections.candidates where position = 'secretary'";
            conn = new MySqlConnection(connstring);
            conn.Open();
            cmd = new MySqlCommand(query, conn);
            List<string> sec = new List<string>();
            reader = cmd.ExecuteReader();
            while (reader.HasRows && reader.Read())
            {
                sec.Add(reader.GetString(0) + " (" + reader.GetString(1) + ")");
            }
            reader.Close();
            lblSec1.Text = sec[0];
            lblSec2.Text = sec[1];

            query = "select count(1) from stielections.voters where secvote like '%" + sec[0] + "%'";
            cmd = new MySqlCommand(query, conn);
            reader = cmd.ExecuteReader();
            while (reader.HasRows && reader.Read())
            {
                lblSec1c.Text = reader.GetString(0);
            }
            reader.Close();
            query = "select count(1) from stielections.voters where secvote like '%" + sec[1] + "%'";
            cmd = new MySqlCommand(query, conn);
            reader = cmd.ExecuteReader();
            while (reader.HasRows && reader.Read())
            {
                lblSec2c.Text = reader.GetString(0);
            }
            reader.Close();
            query = "select count(1) from stielections.voters where secvote = 'none'";
            cmd = new MySqlCommand(query, conn);
            reader = cmd.ExecuteReader();
            while (reader.HasRows && reader.Read())
            {
                lblSecN.Text = reader.GetString(0);
            }
            reader.Close();
            #endregion

            #region Code for Treasurer
            query = "select membername, partylist from stielections.candidates where position = 'treasurer'";
            conn = new MySqlConnection(connstring);
            conn.Open();
            cmd = new MySqlCommand(query, conn);
            List<string> treas = new List<string>();
            reader = cmd.ExecuteReader();
            while (reader.HasRows && reader.Read())
            {
                treas.Add(reader.GetString(0) + " (" + reader.GetString(1) + ")");
            }
            reader.Close();
            lblTreas1.Text = treas[0];
            lblTreas2.Text = treas[1];

            query = "select count(1) from stielections.voters where treasvote like '%" + treas[0] + "%'";
            cmd = new MySqlCommand(query, conn);
            reader = cmd.ExecuteReader();
            while (reader.HasRows && reader.Read())
            {
                lblTreas1c.Text = reader.GetString(0);
            }
            reader.Close();
            query = "select count(1) from stielections.voters where treasvote like '%" + treas[1] + "%'";
            cmd = new MySqlCommand(query, conn);
            reader = cmd.ExecuteReader();
            while (reader.HasRows && reader.Read())
            {
                lblTreas2c.Text = reader.GetString(0);
            }
            reader.Close();
            query = "select count(1) from stielections.voters where treasvote = 'none'";
            cmd = new MySqlCommand(query, conn);
            reader = cmd.ExecuteReader();
            while (reader.HasRows && reader.Read())
            {
                lblTreasN.Text = reader.GetString(0);
            }
            reader.Close();
            #endregion

            #region Code for Auditor
            query = "select membername, partylist from stielections.candidates where position = 'auditor'";
            conn = new MySqlConnection(connstring);
            conn.Open();
            cmd = new MySqlCommand(query, conn);
            List<string> aud = new List<string>();
            reader = cmd.ExecuteReader();
            while (reader.HasRows && reader.Read())
            {
                aud.Add(reader.GetString(0) + " (" + reader.GetString(1) + ")");
            }
            reader.Close();
            lblAud1.Text = aud[0];
            lblAud2.Text = aud[1];

            query = "select count(1) from stielections.voters where audvote like '%" + aud[0] + "%'";
            cmd = new MySqlCommand(query, conn);
            reader = cmd.ExecuteReader();
            while (reader.HasRows && reader.Read())
            {
                lblAud1c.Text = reader.GetString(0);
            }
            reader.Close();
            query = "select count(1) from stielections.voters where audvote like '%" + aud[1] + "%'";
            cmd = new MySqlCommand(query, conn);
            reader = cmd.ExecuteReader();
            while (reader.HasRows && reader.Read())
            {
                lblAud2c.Text = reader.GetString(0);
            }
            reader.Close();
            query = "select count(1) from stielections.voters where audvote = 'none'";
            cmd = new MySqlCommand(query, conn);
            reader = cmd.ExecuteReader();
            while (reader.HasRows && reader.Read())
            {
                lblAudN.Text = reader.GetString(0);
            }
            reader.Close();
            #endregion

            #region Code for P.R.O._F
            query = "select membername, partylist from stielections.candidates where position = 'p.r.o._f'";
            conn = new MySqlConnection(connstring);
            conn.Open();
            cmd = new MySqlCommand(query, conn);
            List<string> pro = new List<string>();
            reader = cmd.ExecuteReader();
            while (reader.HasRows && reader.Read())
            {
                pro.Add(reader.GetString(0) + " (" + reader.GetString(1) + ")");
            }
            reader.Close();
            lblPro1.Text = pro[0];
            lblPro2.Text = pro[1];

            query = "select count(1) from stielections.voters where provote like '%" + pro[0] + "%'";
            cmd = new MySqlCommand(query, conn);
            reader = cmd.ExecuteReader();
            while (reader.HasRows && reader.Read())
            {
                lblPro1c.Text = reader.GetString(0);
            }
            reader.Close();
            query = "select count(1) from stielections.voters where provote like '%" + pro[1] + "%'";
            cmd = new MySqlCommand(query, conn);
            reader = cmd.ExecuteReader();
            while (reader.HasRows && reader.Read())
            {
                lblPro2c.Text = reader.GetString(0);
            }
            reader.Close();
            query = "select count(1) from stielections.voters where provote = 'none'";
            cmd = new MySqlCommand(query, conn);
            reader = cmd.ExecuteReader();
            while (reader.HasRows && reader.Read())
            {
                lblProN.Text = reader.GetString(0);
            }
            reader.Close();
            #endregion

            #region Code for P.R.O._M
            query = "select membername, partylist from stielections.candidates where position = 'p.r.o._m'";
            conn = new MySqlConnection(connstring);
            conn.Open();
            cmd = new MySqlCommand(query, conn);
            List<string> g11 = new List<string>();
            reader = cmd.ExecuteReader();
            while (reader.HasRows && reader.Read())
            {
                g11.Add(reader.GetString(0) + " (" + reader.GetString(1) + ")");
            }
            reader.Close();
            lblG11rep1.Text = g11[0];
            lblG11rep2.Text = g11[1];

            query = "select count(1) from stielections.voters where g11repvote like '%" + g11[0] + "%'";
            cmd = new MySqlCommand(query, conn);
            reader = cmd.ExecuteReader();
            while (reader.HasRows && reader.Read())
            {
                lblG11rep1c.Text = reader.GetString(0);
            }
            reader.Close();
            query = "select count(1) from stielections.voters where g11repvote like '%" + g11[1] + "%'";
            cmd = new MySqlCommand(query, conn);
            reader = cmd.ExecuteReader();
            while (reader.HasRows && reader.Read())
            {
                lblG11rep2c.Text = reader.GetString(0);
            }
            reader.Close();
            query = "select count(1) from stielections.voters where g11repvote = 'none'";
            cmd = new MySqlCommand(query, conn);
            reader = cmd.ExecuteReader();
            while (reader.HasRows && reader.Read())
            {
                lblG11repN.Text = reader.GetString(0);
            }
            reader.Close();
            #endregion

            #region Code for G12 Rep
            query = "select membername, partylist from stielections.candidates where position = 'Grade 12 Representative'";
            conn = new MySqlConnection(connstring);
            conn.Open();
            cmd = new MySqlCommand(query, conn);
            List<string> g12 = new List<string>();
            reader = cmd.ExecuteReader();
            while (reader.HasRows && reader.Read())
            {
                g12.Add(reader.GetString(0) + " (" + reader.GetString(1) + ")");
            }
            reader.Close();
            lblG12rep1.Text = g12[0];
            lblG12rep2.Text = g12[1];

            query = "select count(1) from stielections.voters where g12repvote like '%" + g12[0] + "%'";
            cmd = new MySqlCommand(query, conn);
            reader = cmd.ExecuteReader();
            while (reader.HasRows && reader.Read())
            {
                lblG12rep1c.Text = reader.GetString(0);
            }
            reader.Close();
            query = "select count(1) from stielections.voters where g12repvote like '%" + g12[1] + "%'";
            cmd = new MySqlCommand(query, conn);
            reader = cmd.ExecuteReader();
            while (reader.HasRows && reader.Read())
            {
                lblG12rep2c.Text = reader.GetString(0);
            }
            reader.Close();
            query = "select count(1) from stielections.voters where g12repvote = 'none'";
            cmd = new MySqlCommand(query, conn);
            reader = cmd.ExecuteReader();
            while (reader.HasRows && reader.Read())
            {
                lblG12repN.Text = reader.GetString(0);
            }
            reader.Close();
            #endregion

            //uncomment the code inside if you need G13
            #region Code for G13 Rep
            /**
            query = "select membername, partylist from stielections.candidates where position = '4th Year Representative'";
            conn = new MySqlConnection(connstring);
            conn.Open();
            cmd = new MySqlCommand(query, conn);
            List<string> g13 = new List<string>();
            reader = cmd.ExecuteReader();
            while (reader.HasRows && reader.Read())
            {
                g13.Add(reader.GetString(0) + " (" + reader.GetString(1) + ")");
            }
            reader.Close();
            lblG13rep1.Text = g13[0];
            lblG13rep2.Text = g13[1];

            query = "select count(1) from stielections.voters where g13repvote like '%" + g13[0] + "%'";
            cmd = new MySqlCommand(query, conn);
            reader = cmd.ExecuteReader();
            while (reader.HasRows && reader.Read())
            {
                lblG13rep1c.Text = reader.GetString(0);
            }
            reader.Close();
            query = "select count(1) from stielections.voters where g13repvote like '%" + g13[1] + "%'";
            cmd = new MySqlCommand(query, conn);
            reader = cmd.ExecuteReader();
            while (reader.HasRows && reader.Read())
            {
                lblG13rep2c.Text = reader.GetString(0);
            }
            reader.Close();
            query = "select count(1) from stielections.voters where g13repvote = 'none'";
            cmd = new MySqlCommand(query, conn);
            reader = cmd.ExecuteReader();
            while (reader.HasRows && reader.Read())
            {
                lblG13repN.Text = reader.GetString(0);
            }
            reader.Close();
            **/
            #endregion

            #region Code for Counting voters
            query = "select count(1) from stielections.voters";
            conn = new MySqlConnection(connstring);
            conn.Open();
            cmd = new MySqlCommand(query, conn);
            reader = cmd.ExecuteReader();
            while (reader.HasRows && reader.Read())
            {
                txtVoters.Text = reader.GetString(0);
            }
            reader.Close();

            #endregion

            conn.Close();
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            //Enter this password to access hidden page...

            if (txtPass.Text == "password12345")
            {
                gentable();
                dvAuth.Visible = false;
                dvVoteResult.Visible = true;
            }
            else
            {
                lblStat.Text = "WRONG PASSWORD!";
                lblStat.ForeColor = Color.Red;
            }
        }

        protected void btnRefresh_Click(object sender, EventArgs e)
        {
            gentable();
        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {
            dvAuth.Visible = true;
            dvVoteResult.Visible = false;
        }
    }
}