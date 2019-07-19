using System;
using System.Data.OleDb;
using System.Web.UI;
namespace BootXtech
{
    public partial class Class : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        OleDbConnection bootconn = new OleDbConnection("Provider=MSDAORA; Data Source=XE; Persist Security Info=True;User " +
            "ID=bootxtech;Password=namaste;Unicode=True");

        protected void submitBtn_Click(object sender, EventArgs e)
        {
            bootconn.Open(); //opening bootconn
            var Id = TextClassId.Text; //class id as text
            var Name = TextClassName.Text;
            var Type = TextClassType.Text;
            var Time = TextClassTime.Text;
            var Day = TextClassDay.Text;
            

            OleDbCommand bootOda = new OleDbCommand("insert into class values ('" + Id + "', '" + Name + "', '" + Type + "', '"+Time+"', '"+Day+"', '', '' )", bootconn);
            bootOda.ExecuteNonQuery(); //executing non query
            bootconn.Close(); //closing bootconn
            Page.Response.Redirect(Page.Request.Url.ToString(), true); //page redirect
        }
    }
}