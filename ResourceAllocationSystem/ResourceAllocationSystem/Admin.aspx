<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="ResourceAllocationSystem.WebForm3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
 
    <title>Admin</title>

   
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet"/>
 
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
                <h4>Admin Registration</h4>
                <div class="form-group">
                  <asp:Label ID="fullname" runat="server" Text="Full Name" CssClass="col-sm-3 control-label"></asp:Label>
                    
                    <div class="col-sm-9">
                  
                        <asp:TextBox ID="full_name" runat="server" CssClass="form-control"></asp:TextBox>
                       <asp:RequiredFieldValidator ID="Full_naeme_RequiredFieldValidator1" runat="server" ErrorMessage="Please enter the Full Name " ControlToValidate="full_name" CssClass="text-danger"></asp:RequiredFieldValidator>
                    </div>

                </div>
                 <div class="form-group">
                  <asp:Label ID="email" runat="server" Text="Email" CssClass="col-sm-3 control-label"></asp:Label>
                    
                    <div class="col-sm-9">
                  
                        <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" TextMode="Email" ControlToValidate="TextBox1"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="email_RequiredFieldValidator1" runat="server" ErrorMessage="Please enter the Email" ControlToValidate="TextBox1" cssClass="text-danger"></asp:RequiredFieldValidator>
                    </div>
                </div>
             <div class="form-group">
                  <asp:Label ID="Username" runat="server" Text="Username" CssClass="col-sm-3 control-label"></asp:Label>
                    
                    <div class="col-sm-9">
                  
                        <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="Username_RequiredFieldValidator1" runat="server" ErrorMessage="Please enter a user name" ControlToValidate="TextBox2" CssClass="text-danger"></asp:RequiredFieldValidator>
                    </div>
                </div>
                      
                             <div class="form-group">
                  <asp:Label ID="Phone" runat="server" Text="Phone" CssClass="col-sm-3 control-label"></asp:Label>
                    
                    <div class="col-sm-9">
                  
                        <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="Phone_RequiredFieldValidator1" runat="server" ErrorMessage="Please enter a Phone number" ControlToValidate="TextBox4" CssClass="text-danger"></asp:RequiredFieldValidator>
                    </div>
                </div>
                       <div class="form-group">
                  <asp:Label ID="Password" runat="server" Text="Password" CssClass="col-sm-3 control-label"></asp:Label>
                    
                    <div class="col-sm-9">
                  
                        <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="Password_RequiredFieldValidator1" runat="server" ErrorMessage="Please Create a password" ControlToValidate="TextBox3" CssClass="text-danger"></asp:RequiredFieldValidator>
                    </div>
                </div>
                 <div class="form-group">
                  <asp:Label ID="cnfrmPassword" runat="server" Text="Confirm Password" CssClass="col-sm-3 control-label"></asp:Label>
                    
                    <div class="col-sm-9">
                  
                        <asp:TextBox ID="cnfrmPassword_" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
               <asp:RequiredFieldValidator ID="Cnfrm_password_RequiredFieldValidator1" runat="server" ControlToValidate="TextBox3" ErrorMessage="Please fill the text box" cssClass="text-danger"></asp:RequiredFieldValidator>
                    
                        <br />
                        <asp:Label ID="Label1" runat="server"></asp:Label>
                    
                    </div>
                     
                </div>


                <div class="form-group">
     
      <div class="controls">
<asp:Button ID="Register" runat="server" CssClass="btn btn-success" Text="Register" OnClick="Register_Click" />
         
      </div>
    </div>
           

            </div>
</div>
<div class="tab-pane fade" id="delete">

   
      <div class="form-group">
                  <asp:Label ID="delete_admin" runat="server" Text="Delete" CssClass="col-sm-3 control-label"></asp:Label>
                    
                    <div class="col-sm-9">
                  
                        <asp:TextBox ID="TextBox5" runat="server" CssClass="form-control"></asp:TextBox>
  <asp:RequiredFieldValidator ID="Admin_id_missingRequiredFieldValidator1" runat="server" ErrorMessage="Please enter the Admin id " ControlToValidate="TextBox5" CssClass="text-danger"></asp:RequiredFieldValidator>
                    </div>
                </div>
  

    <div class="form-group">
         <div class="controls">
             
           
             <asp:Button ID="Remove" runat="server" Text="Remove" OnClick="Button1_Click"  CssClass="btn btn-success"/>
             <asp:Label ID="Label2" runat="server" CssClass="text-danger"></asp:Label></div>
      </div>
   </div>
                         <div class="tab-pane fade" id="view">
                             <div class="row">
                                 <div class="col-lg-12">
                                     <div class="table-responsive">
                                         <asp:GridView ID="GridView1" runat="server" CssClass="table table-striped table-bordered table-hover" AutoGenerateColumns="False">
                                             <Columns>
                                                 <asp:BoundField DataField="Admin_ID" HeaderText="Admin ID"></asp:BoundField>
                                                 <asp:BoundField DataField="Admin_Name" HeaderText="Admin Name"></asp:BoundField>
                                                 <asp:BoundField DataField="Email" HeaderText="Email"></asp:BoundField>
                                                 <asp:BoundField DataField="Phone" HeaderText="Phone"></asp:BoundField>
                                                 <asp:BoundField DataField="UserName" HeaderText="User Name"></asp:BoundField>
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
