using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

//Ado .Net
using System.Data;
using System.Data.SqlClient;

using System.Configuration;

namespace TicketSystem
{
    public static class conn
    {
        static string Cadena = ConfigurationManager.ConnectionStrings["TSystemConnectionString"].ToString();
        
        public static DataTable ShowCategory()
        {

            DataSet ds = new DataSet();

            using (SqlDataAdapter da = new SqlDataAdapter("CheckCategory", Cadena))
            {
                da.SelectCommand.CommandType = CommandType.StoredProcedure;

                da.Fill(ds);

            }


            return ds.Tables[0];

        }


        public static string[] IngresarCategoria(string NombreCategoria, string Usuario)
        {
            string[] datos = new string[2];

            DataSet ds = new DataSet();

            using (SqlDataAdapter da = new SqlDataAdapter("InsertCategory", Cadena))
            {
                da.SelectCommand.CommandType = CommandType.StoredProcedure;

                da.SelectCommand.Parameters.Add("@cat_Descripcion", SqlDbType.VarChar).Value = NombreCategoria;
                da.SelectCommand.Parameters.Add("@idUser", SqlDbType.VarChar).Value = Usuario;

                da.Fill(ds);

            }


            datos[0] = ds.Tables[0].Rows[0][0].ToString();
            datos[1] = ds.Tables[0].Rows[0][1].ToString();

            ds.Dispose();

            return datos;

        }
    }
}