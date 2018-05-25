<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Lecturer.aspx.cs" Inherits="ResourceAllocationSystem.Lecturer" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Lecturer</title>

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
                <h4>Registration Form</h4>
                <div class="form-group">
                  <asp:Label ID="lecname" runat="server" Text="Name" CssClass="col-sm-3 control-label"></asp:Label>
                    
                    <div class="col-sm-9">
                  
                        <asp:TextBox ID="lec_name" runat="server" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="lec_name_RequiredFieldValidator1" runat="server" ErrorMessage="Name is missing" ControlToValidate="lec_name" CssClass="text-danger"></asp:RequiredFieldValidator>
                    </div>
                </div>
                 <div class="form-group">
                  <asp:Label ID="email" runat="server" Text="Email" CssClass="col-sm-3 control-label"></asp:Label>
                   
                    <div class="col-sm-9">
                  
                        <asp:TextBox ID="email_" runat="server" CssClass="form-control" TextMode="Email"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="email_RequiredFieldValidator1" runat="server" ErrorMessage="Email is missing" ControlToValidate="email_" CssClass="text-danger"></asp:RequiredFieldValidator>
                    </div>
                </div>
                    <div class="form-group">
                  <asp:Label ID="Phone" runat="server" Text="Phone" CssClass="col-sm-3 control-label"></asp:Label>
                    
                    <div class="col-sm-9">
                  
                        <asp:TextBox ID="phone_" runat="server" CssClass="form-control" TextMode="Phone"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="phone_RequiredFieldValidator1" runat="server" ErrorMessage="Phone number is missing" ControlToValidate="phone_" CssClass="text-danger" ></asp:RequiredFieldValidator>
                    </div>
                </div>


             <div class="form-group">
                  <asp:Label ID="Username" runat="server" Text="Username" CssClass="col-sm-3 control-label"></asp:Label>
                    
                    <div class="col-sm-9">
                  
                        <asp:TextBox ID="username_" runat="server" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="username_RequiredFieldValidator1" runat="server" ErrorMessage="Username is missing" ControlToValidate="username_" CssClass="text-danger" ></asp:RequiredFieldValidator>
                    </div>
                </div>
                             <div class="form-group">
                  <asp:Label ID="Password" runat="server" Text="Password" CssClass="col-sm-3 control-label"></asp:Label>
                    
                    <div class="col-sm-9">
                  
                        <asp:TextBox ID="password_" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="password_RequiredFieldValidator1" runat="server" ErrorMessage="Plese enter the Password" ControlToValidate="password_" CssClass="text-danger"></asp:RequiredFieldValidator>
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
                  <asp:Label ID="delete_Lecturer" runat="server" Text="Delete" CssClass="col-sm-3 control-label"></asp:Label>
                    
                    <div class="col-sm-9">
                  
                        <asp:TextBox ID="LecId_" runat="server" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="LecId_RequiredFieldValidator1" runat="server" ErrorMessage="Lecturer Id is missing" ControlToValidate="LecId_" CssClass="text-danger"></asp:RequiredFieldValidator>
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
            <asp:BoundField DataField="Lec_ID" HeaderText="Lec ID"></asp:BoundField>
            <asp:BoundField DataField="Lec_Code" HeaderText="Lec Code"></asp:BoundField>
            <asp:BoundField DataField="Name" HeaderText="Name"></asp:BoundField>
            <asp:BoundField DataField="Phone" HeaderText="Phone"></asp:BoundField>
            <asp:BoundField DataField="Email" HeaderText="Email"></asp:BoundField>
            <asp:BoundField DataField="UserName" HeaderText="UserName"></asp:BoundField>
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
