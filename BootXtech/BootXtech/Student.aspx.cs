using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;

namespace BootXtech
{
    public partial class Student : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        OleDbConnection bootconn = new OleDbConnection("Provider=MSDAORA; Data Source=XE; Persist Security Info=True;User " +
            "ID=bootxtech;Password=namaste;Unicode=True");
        protected void submitBtn_Click(object sender, EventArgs e)
        {
            bootconn.Open(); //opening command
            var Id = TextStudentId.Text; //student id 
            var Name = TextStudentName.Text; 
            var Address = TextAddress.Text;
            var Email = TextEmail.Text;
            var ContactNo = TextContact.Text;
            var Dob = TextDob.Text;

            OleDbCommand bootOda = new OleDbCommand("insert into student values ('" + Id + "', '" + Name + "', '" + Address + "', " +
                "'" + ContactNo + "', '" + Email + "', '" + Dob + "')", bootconn);
            bootOda.ExecuteNonQuery(); //executing non query
            bootconn.Close(); //closing command
            Page.Response.Redirect(Page.Request.Url.ToString(), true); //page redirect
        }
    }
}