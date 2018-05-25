﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Runtime Version:4.0.30319.42000
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace ResourceAllocationSystem.ServiceReference1 {
    
    
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    [System.ServiceModel.ServiceContractAttribute(ConfigurationName="ServiceReference1.IDbService")]
    public interface IDbService {
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IDbService/OpenConnection", ReplyAction="http://tempuri.org/IDbService/OpenConnectionResponse")]
        void OpenConnection();
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IDbService/OpenConnection", ReplyAction="http://tempuri.org/IDbService/OpenConnectionResponse")]
        System.Threading.Tasks.Task OpenConnectionAsync();
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IDbService/CloseConnection", ReplyAction="http://tempuri.org/IDbService/CloseConnectionResponse")]
        void CloseConnection();
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IDbService/CloseConnection", ReplyAction="http://tempuri.org/IDbService/CloseConnectionResponse")]
        System.Threading.Tasks.Task CloseConnectionAsync();
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IDbService/ExecuteQueries", ReplyAction="http://tempuri.org/IDbService/ExecuteQueriesResponse")]
        void ExecuteQueries(string query);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IDbService/ExecuteQueries", ReplyAction="http://tempuri.org/IDbService/ExecuteQueriesResponse")]
        System.Threading.Tasks.Task ExecuteQueriesAsync(string query);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IDbService/DataReader", ReplyAction="http://tempuri.org/IDbService/DataReaderResponse")]
        [System.ServiceModel.ServiceKnownTypeAttribute(typeof(object[]))]
        object[] DataReader(string query);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IDbService/DataReader", ReplyAction="http://tempuri.org/IDbService/DataReaderResponse")]
        System.Threading.Tasks.Task<object[]> DataReaderAsync(string query);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IDbService/ShowDataInGridView", ReplyAction="http://tempuri.org/IDbService/ShowDataInGridViewResponse")]
        System.Data.DataTable ShowDataInGridView(string Query_);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IDbService/ShowDataInGridView", ReplyAction="http://tempuri.org/IDbService/ShowDataInGridViewResponse")]
        System.Threading.Tasks.Task<System.Data.DataTable> ShowDataInGridViewAsync(string Query_);
    }
    
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    public interface IDbServiceChannel : ResourceAllocationSystem.ServiceReference1.IDbService, System.ServiceModel.IClientChannel {
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    public partial class DbServiceClient : System.ServiceModel.ClientBase<ResourceAllocationSystem.ServiceReference1.IDbService>, ResourceAllocationSystem.ServiceReference1.IDbService {
        
        public DbServiceClient() {
        }
        
        public DbServiceClient(string endpointConfigurationName) : 
                base(endpointConfigurationName) {
        }
        
        public DbServiceClient(string endpointConfigurationName, string remoteAddress) : 
                base(endpointConfigurationName, remoteAddress) {
        }
        
        public DbServiceClient(string endpointConfigurationName, System.ServiceModel.EndpointAddress remoteAddress) : 
                base(endpointConfigurationName, remoteAddress) {
        }
        
        public DbServiceClient(System.ServiceModel.Channels.Binding binding, System.ServiceModel.EndpointAddress remoteAddress) : 
                base(binding, remoteAddress) {
        }
        
        public void OpenConnection() {
            base.Channel.OpenConnection();
        }
        
        public System.Threading.Tasks.Task OpenConnectionAsync() {
            return base.Channel.OpenConnectionAsync();
        }
        
        public void CloseConnection() {
            base.Channel.CloseConnection();
        }
        
        public System.Threading.Tasks.Task CloseConnectionAsync() {
            return base.Channel.CloseConnectionAsync();
        }
        
        public void ExecuteQueries(string query) {
            base.Channel.ExecuteQueries(query);
        }
        
        public System.Threading.Tasks.Task ExecuteQueriesAsync(string query) {
            return base.Channel.ExecuteQueriesAsync(query);
        }
        
        public object[] DataReader(string query) {
            return base.Channel.DataReader(query);
        }
        
        public System.Threading.Tasks.Task<object[]> DataReaderAsync(string query) {
            return base.Channel.DataReaderAsync(query);
        }
        
        public System.Data.DataTable ShowDataInGridView(string Query_) {
            return base.Channel.ShowDataInGridView(Query_);
        }
        
        public System.Threading.Tasks.Task<System.Data.DataTable> ShowDataInGridViewAsync(string Query_) {
            return base.Channel.ShowDataInGridViewAsync(Query_);
        }
    }
}