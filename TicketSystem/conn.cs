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


    }
}