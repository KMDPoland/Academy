using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class Formularz : System.Web.UI.Page
    {
        protected void Button1_Click(object sender, EventArgs e)
        {
            Label1.Text = "Witaj " + TextBox1.Text;
            Label2.Text = "Twój adres Email: " + TextBox2.Text;
            Label3.Text = "Twój numer telefonu: " + TextBox3.Text;
            Label4.Text = "Twój kraj: " + TextBox4.Text;
            Label5.Text = "Twoja miejscowość: " + TextBox5.Text;
            Label6.Text = "Twój kod pocztowy: " + TextBox6.Text;
            Label7.Text = "Twoja data: " + TextBox7.Text;
        }
    }
}