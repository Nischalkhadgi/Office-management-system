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
    public partial class Teacher_Student : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        OleDbConnection bootconn = new OleDbConnection("Provider=MSDAORA; Data Source=XE; Persist Security Info=True;User" +
            " ID=bootxtech;Password=namaste;Unicode=True");
        protected void submitBtn3_Click(object sender, EventArgs e)
        {
            bootconn.Open(); 
            
            var TID = DropTeacherId.SelectedValue; /*selecting value */

            OleDbCommand sql = new OleDbCommand("SELECT S.STUDENTID, S.STUDENTNAME FROM STUDENT S, ASSIGNMENT CS, CLASS C " +
                "WHERE C.TEACHERID = '" + TID + "' AND S.STUDENTID=CS.STUDENTID AND C.COURSEID=CS.COURSEID ", bootconn); 
            /*selection query */
            sql.ExecuteNonQuery();

            OleDbDataReader dr;
            dr = sql.ExecuteReader();
            DataTable dt = new DataTable();
            dt.Load(dr);
            /*datagrid */
            GridView1.DataSource = dt.DefaultView;
            GridView1.DataBind();
            dr.Close();
            /*selection query */
            OleDbCommand sql1 = new OleDbCommand("SELECT TEACHERNAME FROM TEACHER " +
                "WHERE TEACHERID = '" + TID + "' ", bootconn);
            sql1.ExecuteNonQuery();

            OleDbDataReader dr1;
            dr1 = sql1.ExecuteReader();
            while (dr1.Read())
            {
                string nam = (string)dr1["TEACHERNAME"].ToString();
                TextBox1.Text = nam;
            }
            dr1.Close();

            bootconn.Close();
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            
        }
        
    }
}