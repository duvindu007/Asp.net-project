<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MODULE.aspx.cs" Inherits="ResourceAllocationSystem.MODULE" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Module</title>
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
                <h4>Add Module</h4>
                <div class="form-group">
                  <asp:Label ID="Name" runat="server" Text="Module Name" CssClass="col-sm-3 control-label"></asp:Label>
                    
                    <div class="col-sm-9">
                  
                        <asp:TextBox ID="ModeuleName_" runat="server" CssClass="form-control"></asp:TextBox>
<asp:RequiredFieldValidator ID="ModeuleName_RequiredFieldValidator1" runat="server" ErrorMessage="Modeule Name is empty" ControlToValidate="ModeuleName_" CssClass="text-danger"></asp:RequiredFieldValidator>
                    </div>
                </div>
                 <div class="form-group">
                  <asp:Label ID="NumberOfSessions" runat="server" Text="Number Of Sessions" CssClass="col-sm-3 control-label"></asp:Label>
                    
                    <div class="col-sm-9">
                  
                        <asp:TextBox ID="NumberOfSessions_" runat="server" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="NumberOfSessionsRequiredFieldValidator1" runat="server" ErrorMessage="Number Of Sessions text field is empty " ControlToValidate="NumberOfSessions_" CssClass="text-danger"></asp:RequiredFieldValidator>
                    </div>
                </div>
                    <div class="form-group">
                  <asp:Label ID="LecCode" runat="server" Text="Lec Code" CssClass="col-sm-3 control-label"></asp:Label>
                    
                    <div class="col-sm-9">
                  
                        <asp:TextBox ID="LecCode_" runat="server" CssClass="form-control"></asp:TextBox>
<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Lec Code is empty" ControlToValidate="LecCode_" CssClass="text-danger"></asp:RequiredFieldValidator>
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
                  <asp:Label ID="delete_Ins" runat="server" Text="Module id" CssClass="col-sm-3 control-label"></asp:Label>
                    
                    <div class="col-sm-9">
                  
                        <asp:TextBox ID="deleteIns_" runat="server" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="Module_id_RequiredFieldValidator1" runat="server" ErrorMessage=" Module id is missing" ControlToValidate="deleteIns_" CssClass="text-danger"></asp:RequiredFieldValidator>
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
            <asp:BoundField DataField="Module_id" HeaderText="Module id"></asp:BoundField>
            <asp:BoundField DataField="Module_Code" HeaderText="Module Code"></asp:BoundField>
            <asp:BoundField DataField="Module_Name" HeaderText="Module Name"></asp:BoundField>
            <asp:BoundField DataField="NumberOfSessions" HeaderText="NumberOfSessions"></asp:BoundField>
            <asp:BoundField DataField="" HeaderText=""></asp:BoundField>
           
           
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
