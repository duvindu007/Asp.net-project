<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Batch.aspx.cs" Inherits="ResourceAllocationSystem.WebForm4" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Batch</title>
     <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" />

</head>
<body>
    <form id="form1" runat="server">
        <nav class="navbar navbar-default " style="background-color:Highlight">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="Dashboard.aspx">RASNSBM</a>
         <a class="navbar-brand"><asp:Label ID="lblsuccess" runat="server" CssClass="text-success"></asp:Label></a>
    </div>
    <ul class="nav navbar-nav">
        
      <li class="active"><asp:Button ID="Logout" runat="server" Text="Log out" class="btn btn-default navbar-btn" OnClick="Logout_Click" /></li>
      
    
    </ul>
  </div>
</nav>
        <div class="container">
             <div class="row">
                <div class="span12">
            <div class="center-page">
             <div class="modal-body">
                  <div class="well">
                      <ul class="nav nav-tabs">
                        <li class="active"><a href="#ADD" data-toggle="tab">Add</a></li>
                    <li><a href="#delete" data-toggle="tab">Delete</a></li>
                      <li><a href="#view" data-toggle="tab">View</a></li>
                            <li><a href="#update" data-toggle="tab">Update</a></li>
                  </ul>
                       <div id="myTabContent" class="tab-content">
                           <div class="tab-pane active in" id="ADD">
                               <div class="form-horizontal">
                                     <h4>Add Batch</h4>
                                   <div class="form-group">
                                        <asp:Label ID="Year" runat="server" Text="Year" CssClass="col-sm-3 control-label"></asp:Label>
                                       <div class="col-sm-9">
                                            <asp:TextBox ID="Year_" runat="server" CssClass="form-control"></asp:TextBox>
                       <asp:RequiredFieldValidator ID="Year_RequiredFieldValidator1" runat="server" ErrorMessage="Please enter the Year" ControlToValidate="Year_" CssClass="text-danger"></asp:RequiredFieldValidator>
                    


                                       </div>
                                   </div>
                                   <div class="form-group">
                                        <asp:Label ID="detailes" runat="server" Text="Detailes" CssClass="col-sm-3 control-label"></asp:Label>
                                       <div class="col-sm-9">
                                            <asp:TextBox ID="Detailes_" runat="server" CssClass="form-control"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="Detailes_RequiredFieldValidator1" runat="server" ErrorMessage="Please enter Detailes" ControlToValidate="Year_" CssClass="text-danger"></asp:RequiredFieldValidator>
                                      
                                           </div>
                                     

                                   </div>
                                      <div class="form-group">
                                        <asp:Label ID="Size" runat="server" Text="Size" CssClass="col-sm-3 control-label"></asp:Label>
                                       <div class="col-sm-9">
                                            <asp:TextBox ID="Size_" runat="server" CssClass="form-control"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="SizeRequiredFieldValidator1" runat="server" ErrorMessage="Please enter batch Size" ControlToValidate="Size_" CssClass="text-danger"></asp:RequiredFieldValidator>
                                      
                                           </div>
                                     

                                   </div>
                                   <div class="form-group">
                                           <div class="controls">
                              <asp:Button ID="Add" runat="server" CssClass="btn btn-success" Text="Add" OnClick="Add_Click" />
                                               <asp:Label ID="Label1" runat="server"></asp:Label>
                                          </div>  
                                <asp:Label ID="Label2" runat="server" CssClass="text-danger"></asp:Label></div>
                                   </div>
                               </div>
  <div class="tab-pane fade" id="delete">
                                <div class="form-group">
                  <asp:Label ID="deletebatch_" runat="server" Text="Delete" CssClass="col-sm-3 control-label"></asp:Label>
                    
                    <div class="col-sm-9">
                  
                        <asp:TextBox ID="delete_batch" runat="server" CssClass="form-control"></asp:TextBox>
  <asp:RequiredFieldValidator ID="Batch_id_missingRequiredFieldValidator1" runat="server" ErrorMessage="Please enter the Batch id " ControlToValidate="delete_batch" CssClass="text-danger"></asp:RequiredFieldValidator>
                        <asp:Label ID="Label3" runat="server"></asp:Label>
                        </div>
                </div>
      
                               <div class="form-group">
                                    <div class="controls">
             
           
<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Remove" CssClass="btn btn-success"  />
                                        

                               </div>


                           </div>

                       </div>
                            <div class="tab-pane fade" id="update">
                                <div class="form-group">
                                        <asp:Label ID="Bid" runat="server" Text="Batch id" CssClass="col-sm-3 control-label"></asp:Label>
                                       <div class="col-sm-9">
                                            <asp:TextBox ID="Bid_" runat="server" CssClass="form-control"></asp:TextBox>
                       <asp:RequiredFieldValidator ID="Bid_RequiredFieldValidator2" runat="server" ErrorMessage="Please enter the batch id" ControlToValidate="Bid_" CssClass="text-danger"></asp:RequiredFieldValidator>
                    


                                       </div>
                                   </div>

                                    
                                      <div class="form-group">
                                        <asp:Label ID="Siz_e_" runat="server" Text="Size" CssClass="col-sm-3 control-label"></asp:Label>
                                       <div class="col-sm-9">
                                            <asp:TextBox ID="sIze__" runat="server" CssClass="form-control"></asp:TextBox>
                       <asp:RequiredFieldValidator ID="sIze__RequiredFieldValidator1" runat="server" ErrorMessage="Please enter the Size" ControlToValidate="sIze__" CssClass="text-danger"></asp:RequiredFieldValidator>
                    


                                       </div>
                                   </div>
                                 <div class="form-group">
                                           <div class="controls">
                              <asp:Button ID="Update" runat="server" CssClass="btn btn-success" Text="Update" OnClick="Update_Click" />
                                            
                                          </div>  
                                <asp:Label ID="Label6" runat="server" CssClass="text-danger"></asp:Label></div>



                            </div>


<div class="tab-pane fade" id="view">
                          
                          <div class="row">  
                            <div class="col-lg-12 ">  
                                <div class="table-responsive">  
                       <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="table table-striped table-bordered table-hover">
                                   <Columns>
                                       <asp:BoundField DataField="Batch_id" HeaderText="Batch Id" />
                                       <asp:BoundField DataField="BATCH_code" HeaderText="Batch code" />
                                       <asp:BoundField DataField="Year_" HeaderText="Year" />
                                       <asp:BoundField DataField="detailes" HeaderText="Detailes" />
                                       <asp:BoundField DataField="Size" HeaderText="Size"></asp:BoundField>
                                   </Columns>
                               </asp:GridView>
                             </div>
                                     </div>
           </div>

</div>







                               







                               </div>
           



                      </div>
                 </div>
                
                </div>
                    </div>
                 </div>
  
        </div>


       
    </form>
       <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="bootstrap/js/bootstrap.min.js"></script>
</body>
</html>
