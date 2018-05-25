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
    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the interface name "IDbService" in both code and config file together.
    [ServiceContract]
    public interface IDbService
    {
        [OperationContract]
        void OpenConnection();
        [OperationContract]
        void CloseConnection();
        [OperationContract]
        void ExecuteQueries(string query);
        [OperationContract]
        SqlDataReader DataReader(string query);
        [OperationContract]
        DataTable ShowDataInGridView(string Query_);
        [OperationContract]
        Boolean LogIn(String x, String y);

    }
}
