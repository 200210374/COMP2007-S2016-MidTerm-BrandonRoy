using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;





namespace COMP2007_S2016_MidTerm_BrandonRoy
{
    public partial class TodoDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }







        public string GetConnectionString()
        {

            return System.Configuration.ConfigurationManager.ConnectionStrings["TodoConnection"].ConnectionString;


        }



        protected void SaveButton(object sender, EventArgs e)
        {


            //This is used for the next method to grab user input

            DatabaseInsert(todoNametextBox.Text,
                              todoNotesTextBox.Text);




        }
        //This method makes an array 
        private void DatabaseInsert(string todoName, string todoNotes)
        {


            SqlConnection conn = new SqlConnection(GetConnectionString());
            string sql = "INSERT INTO todos (todoName, todoNotes) VALUES "
                        + " (@todoName, @todoNotes)";

            try
            {
                conn.Open();

                //I created an array that will hold the values made by the user. After the user clicks submit it will put it into the database.
                SqlCommand cmd = new SqlCommand(sql, conn);
                SqlParameter[] param = new SqlParameter[3];



                param[0] = new SqlParameter("@todoName", SqlDbType.Char, 10);
                param[1] = new SqlParameter("@todoNotes", SqlDbType.Char, 10);


                param[0].Value = todoName;
                param[1].Value = todoNotes;




                for (int x = 0; x < param.Length; x++)
                {
                    cmd.Parameters.Add(param[x]);
                }


                cmd.CommandType = CommandType.Text;
                cmd.ExecuteNonQuery();
            }
            catch (System.Data.SqlClient.SqlException ex)
            {
                string msg = "Insert Error:";
                msg += ex.Message;
                throw new Exception(msg);
            }
            finally
            {
                conn.Close();
            }
        }
    }
    }
