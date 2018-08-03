using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Smart_hajj
{
    public partial class Statstics : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        [WebMethod]
        public static List<object> GetChartData()
        {
            string query = "SELECT nationality, totals ";
            query += " FROM statistics group by nationality";
            string constr = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
            List<object> chartData = new List<object>();
            chartData.Add(new object[]
        {
        "nationality", "totals"
        });
            using (MySqlConnection con = new MySqlConnection(constr))
            {
                using (MySqlCommand cmd = new MySqlCommand(query))
                {
                    cmd.CommandType = CommandType.Text;
                    cmd.Connection = con;
                    con.Open();
                    using (MySqlDataReader sdr = cmd.ExecuteReader())
                    {
                        while (sdr.Read())
                        {
                            chartData.Add(new object[]
                        {
                        sdr["nationality"], sdr["totals"]
                        });
                        }
                    }
                    con.Close();
                    return chartData;
                }
            }

        }

    }
}