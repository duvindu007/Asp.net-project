<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="INSTRUCTOR.aspx.cs" Inherits="ResourceAllocationSystem.INSTRUCTOR" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Instructor</title>
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
                <h4>Add Instructor</h4>
                <div class="form-group">
                  <asp:Label ID="nsbmID" runat="server" Text="Nsbm Id" CssClass="col-sm-3 control-label"></asp:Label>
                    
                    <div class="col-sm-9">
                  
                        <asp:TextBox ID="Nsbm_ID" runat="server" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="Nsbm_IDRequiredFieldValidator1" runat="server" ErrorMessage="Nsbm ID is missing" ControlToValidate="Nsbm_ID" CssClass="text-danger"></asp:RequiredFieldValidator>
                    </div>
                </div>
                
                                             <div class="form-group">
                  <asp:Label ID="IUserName" runat="server" Text="username" CssClass="col-sm-3 control-label"></asp:Label>
                    
                    <div class="col-sm-9">
                  
                        <asp:TextBox ID="UserName_" runat="server" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="UserName is empty" ControlToValidate="UserName_" CssClass="text-danger"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="form-group">
                    <asp:Label ID="passowrd" runat="server" Text="Password" CssClass="col-sm-3 control-label"></asp:Label>
                    <div class="col-sm-9">
                        <asp:TextBox ID="Password_" runat="server" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="Password_RequiredFieldValidator2" runat="server" ErrorMessage="Password " ControlToValidate="Password_" CssClass="text-danger"></asp:RequiredFieldValidator>
                    </div>

                </div>
               

                <div class="form-group">
     
      <div class="controls">
<asp:Button ID="Register" runat="server" CssClass="btn btn-success" Text="Register" OnClick="Register_Click" />
         <asp:Label ID="Label1" runat="server"></asp:Label>
      </div>
    </div>
</div>
           
</div>
<div class="tab-pane fade" id="delete">

   
      <div class="form-group">
                  <asp:Label ID="delete_Ins" runat="server" Text="NSBM ID" CssClass="col-sm-3 control-label"></asp:Label>
                    
                    <div class="col-sm-9">
                  
                        <asp:TextBox ID="deleteIns_" runat="server" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="delete_Ins_RequiredFieldValidator2" runat="server" ErrorMessage="NSBM ID is missing" ControlToValidate="deleteIns_"></asp:RequiredFieldValidator>
                    </div>
                </div>

         <div class="controls">
<asp:Button ID="Button2" runat="server" CssClass="btn btn-success" Text="Remove" onClick="Button2_Click" />
             <asp:Label ID="Label2" runat="server"></asp:Label>
   
      </div>
    </div>
<div class="tab-pane fade" id="view">
     <div class="row">  
                            <div class="col-lg-12 ">  
                                <div class="table-responsive">  
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="table table-striped table-bordered table-hover">
        <Columns>
            <asp:BoundField DataField="NSBM_ID" HeaderText="NSBM ID"></asp:BoundField>
            <asp:BoundField DataField="Ins_Uname" HeaderText="User Name"></asp:BoundField>
            <asp:BoundField DataField="Password_" HeaderText="Password"></asp:BoundField>
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
