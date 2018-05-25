<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UNDERGRADUATE.aspx.cs" Inherits="ResourceAllocationSystem.UNDERGRADUATE" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Undergraduate</title>

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
                  </ul>
                     <div id="myTabContent" class="tab-content">
                    <div class="tab-pane active in" id="ADD">
            <div class="form-horizontal">
                <h4>Add Undergraduate</h4>
                <div class="form-group">
                  <asp:Label ID="NsbmId" runat="server" Text="Nsbm Id" CssClass="col-sm-3 control-label"></asp:Label>
                    
                    <div class="col-sm-9">
                  
                        <asp:TextBox ID="NsbmId_" runat="server" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="NsbmId_RequiredFieldValidator1" runat="server" ErrorMessage="Nsbm Id is missing " ControlToValidate="NsbmId_" CssClass="text-danger"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="form-group">
                  <asp:Label ID="fullname" runat="server" Text="Full Name" CssClass="col-sm-3 control-label"></asp:Label>
                    
                    <div class="col-sm-9">
                  
                        <asp:TextBox ID="full_name" runat="server" CssClass="form-control"></asp:TextBox>
          <asp:RequiredFieldValidator ID="full_nameRequiredFieldValidator1" runat="server" ErrorMessage="Full name is missing" ControlToValidate="full_name" CssClass="text-danger"></asp:RequiredFieldValidator>
                    </div>
                </div>
                 <div class="form-group">
                  <asp:Label ID="email" runat="server" Text="Email" CssClass="col-sm-3 control-label"></asp:Label>
                    
                    <div class="col-sm-9">
                  
                        <asp:TextBox ID="email_" runat="server" CssClass="form-control" TextMode="Email"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="emailRequiredFieldValidator1" runat="server" ErrorMessage="Email is missing" ControlToValidate="email_" CssClass="text-danger"></asp:RequiredFieldValidator>
                    </div>
                </div>
                                           
                <div class="form-group">
                    <asp:Label ID="BatchCode" runat="server" Text="Batch Code" CssClass="col-sm-3 control-label"></asp:Label>
                    <div class="col-sm-9">
                        <asp:TextBox ID="BatchCode_" runat="server" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="BatchCode_RequiredFieldValidator1" runat="server" ErrorMessage="Batch code is missing" ControlToValidate="BatchCode_" CssClass="text-danger"></asp:RequiredFieldValidator>
                    </div>

                </div>
               

                <div class="form-group">
     
      <div class="controls">
<asp:Button ID="Register" runat="server" CssClass="btn btn-success" Text="ADD" OnClick="Register_Click" />
          <asp:Label ID="Label1" runat="server"></asp:Label>
          

      </div>
    </div>
</div>
           
</div>
<div class="tab-pane fade" id="delete">

   
      <div class="form-group">
                  <asp:Label ID="delete_Under" runat="server" Text="NSBM ID " CssClass="col-sm-3 control-label"></asp:Label>
                    
                    <div class="col-sm-9">
                  
                        <asp:TextBox ID="deleteUnder_" runat="server" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="deleteUnder_RequiredFieldValidator1" runat="server" ErrorMessage="NSBM ID is missing " ControlToValidate="deleteUnder_" CssClass="text-danger"></asp:RequiredFieldValidator>
                    </div>
                </div>

         <div class="controls">
             <asp:Button ID="Button2" runat="server" CssClass="btn btn-success" Text="Remove" OnClick="Button2_Click" />
             <asp:Label ID="Label2" runat="server"></asp:Label>
      </div>
    </div>
<div class="tab-pane fade" id="view">
     <div class="row">  
                            <div class="col-lg-12 ">  
                                <div class="table-responsive"> 
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="table table-striped table-bordered table-hover">
        <Columns>
            <asp:BoundField DataField="NSBM_ID" HeaderText="NSBM ID "></asp:BoundField>
            <asp:BoundField DataField="Name" HeaderText="Name"></asp:BoundField>
            <asp:BoundField DataField="Email" HeaderText="Email"></asp:BoundField>
            <asp:BoundField DataField="BATCH_code" HeaderText="Batch code"></asp:BoundField>
           
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
