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
    public partial class TodoList : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        //It says your database dosent support the delete command
        //This is the error message I kept receiving 
        //Deleting is not supported by data source 'SqlDataSource1' unless DeleteCommand is specified.
        //Delete command was specified before but I took it out.



            //THis page was supposed to edit and delete data




        public string GetConnectionString()
        {

            return System.Configuration.ConfigurationManager.ConnectionStrings["TodoConnection"].ConnectionString;


        }


      
        
        /*
        //THis method will delete a row at where the user wants the row to be deleted
        private void todoGridview_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {

            GridViewRow row = (GridViewRow)todoGridview.Rows[e.RowIndex];
            SqlCommand cmd = new SqlCommand("Delete From todos WHERE ID = ' '");
            todoGridview.DataBind();
        }*/


        protected void todoRedirect(object sender, EventArgs e)
        {
            Response.Redirect("~/TodoDetails.aspx");
        }
        /*
        protected void todoGridview_SelectedIndexChanged(object sender, EventArgs e)
        {


            SqlCommand cmd = new SqlCommand("Update From todos (todoName,todoNotes,Completed)");
            todoGridview.DataBind();


        }*/

    }
}
