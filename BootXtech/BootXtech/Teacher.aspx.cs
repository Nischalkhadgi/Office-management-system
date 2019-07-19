using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;


namespace BootXtech
{
    public partial class Teacher : System.Web.UI.Page
    {
        OleDbConnection bootconn = new OleDbConnection("Provider=MSDAORA; Data Source=XE; Persist Security Info=True;User ID=bootxtech;Password=namaste;Unicode=True");
        protected void submitBtn_Click(object sender, EventArgs e) //submit button
        {
            bootconn.Open(); //opening command
            var Id = TextTeacherId.Text; //teacher id text
            var Name = TextTeacherName.Text;
            var Address = TextAddress.Text;
            var Email = TextEmail.Text;
            var ContactNo = TextContact.Text;
            var Dob = TextDob.Text;

            OleDbCommand bootOda = new OleDbCommand("insert into teacher values ('" +Id +"', '"+Name+"', '"+Address+"', '"+ContactNo+"', '"+Email+"', '"+Dob+"')", bootconn);
            bootOda.ExecuteNonQuery(); //executing non query
            bootconn.Close(); //closing bootconn
            Page.Response.Redirect(Page.Request.Url.ToString(), true); //page redirect
        }

        protected void dataGridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }

}











