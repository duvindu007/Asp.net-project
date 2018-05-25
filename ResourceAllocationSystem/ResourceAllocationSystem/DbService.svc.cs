using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;

namespace ResourceAllocationSystem
{
    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the class name "DbService" in code, svc and config file together.
    // NOTE: In order to launch WCF Test Client for testing this service, please select DbService.svc or DbService.svc.cs at the Solution Explorer and start debugging.
    public class DbService : IDbService
    {
        String connectionstring = @"Data Source=.;Initial Catalog=RAS;Integrated Security=True";
        SqlConnection conn;


        public void OpenConnection()
        {

                conn = new SqlConnection(connectionstring);
                conn.Open();

        }

        public void CloseConnection()
        {
            conn.Close();


        }

        public void ExecuteQueries(string query)
        {


            SqlCommand cmd = new SqlCommand(query, conn);
            cmd.ExecuteNonQuery();



        }
        public SqlDataReader DataReader(string query)
        {
            SqlCommand cmd = new SqlCommand(query, conn);
            SqlDataReader dr = cmd.ExecuteReader();
            return dr;

        }

        public DataTable ShowDataInGridView(string Query_)
        {
            string constr = connectionstring;

            SqlConnection con = new SqlConnection(constr);
            SqlCommand cmd = new SqlCommand(Query_);


            SqlDataAdapter sda = new SqlDataAdapter();

            cmd.Connection = con;
            sda.SelectCommand = cmd;
            DataTable dt = new DataTable();

            dt.TableName = "Table";
            sda.Fill(dt);
            
            return dt;

        }


       public Boolean LogIn(String x,String y) {

            OpenConnection();
       
            SqlCommand cmd = new SqlCommand("select * from ADMIN_ where UserName = '" + x + "' and Password_ = '" + y + "'",conn);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count!=0) {

                return true;

            }
            else {
                return false;
                    
                    }
        }


        public Boolean Check(string a) {

            OpenConnection();
            SqlCommand cmd = new SqlCommand(a,conn);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count != 0) {

                return true;

            }
            else {

                return false;
            }
      
        }




    }
}

