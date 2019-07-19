using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.Data;

namespace BootXtech
{
    public partial class assignment : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        OleDbConnection bootconn = new OleDbConnection("Provider=MSDAORA; Data Source=XE; Persist Security" +
            " Info=True;User ID=bootxtech;Password=namaste;Unicode=True");
        protected void submitBtn1_Click(object sender, EventArgs e)
        {
            bootconn.Open();
            var CID = DropCourseId.SelectedValue; /*selecting value*/

            OleDbCommand sql = new OleDbCommand("SELECT S.STUDENTID, S.STUDENTNAME, CS.MARKSINCW1, CS.MARKSINCW2, " +
                "CS.MARKSINCW3, CS.TOTALMARKS," +
                " CS.COMPLETEDYEAR FROM STUDENT S, ASSIGNMENT CS WHERE CS.COURSEID = '" + CID + "' " +
                "AND S.STUDENTID=CS.STUDENTID ", bootconn);
            /*select query*/
            sql.ExecuteNonQuery();

            OleDbDataReader dr;
            dr = sql.ExecuteReader();
            DataTable dt = new DataTable();
            dt.Load(dr);
            GridView1.DataSource = dt.DefaultView;
            /*data gridview*/
            GridView1.DataBind();
            /**data binding**/
            dr.Close();

            

            OleDbCommand sql1 = new OleDbCommand("SELECT COURSENAME FROM COURSE " +
                "WHERE COURSEID = '" + CID + "' ", bootconn);
            sql1.ExecuteNonQuery();

            OleDbDataReader dr1;
            dr1 = sql1.ExecuteReader();
            while (dr1.Read())
            {
                string nam = (string)dr1["COURSENAME"].ToString();
                TextBox1.Text = nam;
            }
            dr1.Close();

            bootconn.Close();
        }

        protected void GridView1_RowUpdated(object sender, GridViewUpdatedEventArgs e)
        {
            
        }
    }
}