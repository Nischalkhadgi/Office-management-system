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
    public partial class teacher_Course : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        OleDbConnection bootconn = new OleDbConnection("Provider=MSDAORA; Data Source=XE; Persist Security " +
            "Info=True;User ID=bootxtech;Password=namaste;Unicode=True");
        protected void submitBtn2_Click(object sender, EventArgs e)
        {
            bootconn.Open();


            var CID = DropCourseId.SelectedValue;  /*selecting value */


            OleDbCommand sql = new OleDbCommand("SELECT T.TEACHERNAME, C.TEACHERID, C.CLASSTYPE FROM TEACHER T," +
                " CLASS C WHERE C.COURSEID = '" + CID + "' AND C.TEACHERID=T.TEACHERID ", bootconn);
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
    }
}