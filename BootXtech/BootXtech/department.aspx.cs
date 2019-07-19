using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;

namespace BootXtech
{
    public partial class department : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        OleDbConnection bootconn = new OleDbConnection("Provider=MSDAORA; Data Source=XE; Persist Security Info=True;User " +
            "ID=bootxtech;Password=namaste;Unicode=True");
        protected void submitBtn_Click(object sender, EventArgs e)
        {
            bootconn.Open(); //opening bootconn
            var Id = TextDepartmentId.Text; //department id
            var Name = TextDepartmentName.Text;
            var Type = TextDepartmentType.Text;
           
            OleDbCommand bootOda = new OleDbCommand("insert into department values ('" + Id + "', '" + Name + "', '" + Type + "','')", bootconn);
            bootOda.ExecuteNonQuery(); //executing non query
            bootconn.Close(); //closing bootconn
            Page.Response.Redirect(Page.Request.Url.ToString(), true); //page redirect
        }
    }
}