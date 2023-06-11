using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
namespace KnjigaUtisakaaA
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
            using (SqlConnection connection = new SqlConnection(
               @"Data Source =.\SQLEXPRESS; Initial Catalog = KnjigaUtisakaSK; Integrated Security = True"))
            {
                connection.Open();
                string InsertCommand = "INSERT INTO Utisak(Ime,Email,Komentar) values(@ime,@email,@komentar)";
                using (SqlCommand command = new SqlCommand(InsertCommand, connection))
                {
                    
                    command.Parameters.AddWithValue("@ime", TextBox1.Text);
                    command.Parameters.AddWithValue("@email", TextBox2.Text);
                    command.Parameters.AddWithValue("@komentar", TextBox3.Text);
                    command.ExecuteNonQuery();
                   
                }
                    
            }
        }
    }
}