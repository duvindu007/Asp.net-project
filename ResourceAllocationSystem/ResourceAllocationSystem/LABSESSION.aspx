<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LABSESSION.aspx.cs" Inherits="ResourceAllocationSystem.LABSESSION" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Lab sessions</title>
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
                <h4>Add Lab Sessions</h4>
                <div class="form-group">
                  <asp:Label ID="SessionID" runat="server" Text="Session ID" CssClass="col-sm-3 control-label"></asp:Label>
                    
                    <div class="col-sm-9">
                  
                        <asp:TextBox ID="SessionID_" runat="server" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="SessionID_RequiredFieldValidator1" runat="server" ErrorMessage="Session ID is missing" ControlToValidate="SessionID_" CssClass="text-danger"></asp:RequiredFieldValidator>
                    </div>
                </div>
                 <div class="form-group">
                  <asp:Label ID="Lab_Code" runat="server" Text="Lab Code" CssClass="col-sm-3 control-label"></asp:Label>
                    
                    <div class="col-sm-9">
                  
                        <asp:TextBox ID="LabCode_" runat="server" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="Labcode_RequiredFieldValidator1" runat="server" ErrorMessage="Lab Code is missing" ControlToValidate="LabCode_" CssClass="text-danger"></asp:RequiredFieldValidator>
                    </div>
                </div>
             <div class="form-group">
                  <asp:Label ID="Group_Number" runat="server" Text="Group Number" CssClass="col-sm-3 control-label"></asp:Label>
                    
                    <div class="col-sm-9">
                  
                        <asp:TextBox ID="GroupNumber_" runat="server" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="Group_NumberRequiredFieldValidator1" runat="server" ErrorMessage="Group Number is missing" ControlToValidate="GroupNumber_" CssClass="text-danger"></asp:RequiredFieldValidator>
                    </div>
                </div>
                             <div class="form-group">
                  <asp:Label ID="detailes" runat="server" Text="Detailes" CssClass="col-sm-3 control-label"></asp:Label>
                    
                    <div class="col-sm-9">
                  
                        <asp:TextBox ID="detailes_" runat="server" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="detailes_RequiredFieldValidator1" runat="server" ErrorMessage="Lab session detailes are missing" ControlToValidate="detailes_" CssClass="text-danger"></asp:RequiredFieldValidator>
                    </div>
                </div>
                              <div class="form-group">
                  <asp:Label ID="Instructor_id" runat="server" Text="Instructor id" CssClass="col-sm-3 control-label"></asp:Label>
                    
                    <div class="col-sm-9">
                  
                        <asp:TextBox ID="Instructorid_" runat="server" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="instructor_idRequiredFieldValidator1" runat="server" ErrorMessage=" Instructor id are missing" ControlToValidate="Instructorid_" CssClass="text-danger"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="form-group">
     
      <div class="controls">
<asp:Button ID="Add" runat="server" CssClass="btn btn-success" Text="Add" OnClick="Add_Click" />
          <asp:Label ID="Label1" runat="server"></asp:Label>
      </div>
    </div>

            </div>
</div>
<div class="tab-pane fade" id="delete">

   
      <div class="form-group">
                  <asp:Label ID="ID__" runat="server" Text="Session id" CssClass="col-sm-3 control-label"></asp:Label>
                    
                    <div class="col-sm-9">
                  
                        <asp:TextBox ID="_id" runat="server" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="session_id_RequiredFieldValidator1" runat="server" ErrorMessage="Session id is missing" ControlToValidate="_id" CssClass="text-danger"></asp:RequiredFieldValidator>
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
            <asp:BoundField DataField="Session_ID" HeaderText="Session ID"></asp:BoundField>
            <asp:BoundField DataField="Lab_Code" HeaderText="Lab Code"></asp:BoundField>
            <asp:BoundField DataField="Group_Number" HeaderText="Group Number"></asp:BoundField>
            <asp:BoundField DataField="detailes" HeaderText="Detailes"></asp:BoundField>
            <asp:BoundField DataField="instructor_id" HeaderText="instructor id"></asp:BoundField>
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
