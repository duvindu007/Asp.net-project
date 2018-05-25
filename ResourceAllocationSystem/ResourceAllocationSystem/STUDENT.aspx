<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="STUDENT.aspx.cs" Inherits="ResourceAllocationSystem.STUDENT" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Student</title>

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
                <h4>Add Student</h4>
                <div class="form-group">
                  <asp:Label ID="id" runat="server" Text="Nsbm Id" CssClass="col-sm-3 control-label"></asp:Label>
                    
                    <div class="col-sm-9">
                  
                        <asp:TextBox ID="NsbmIdnumber_" runat="server" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="NsbmIdnumber_RequiredFieldValidator1" runat="server" ErrorMessage="Nsbm id is missing" ControlToValidate="NsbmIdnumber_" CssClass="text-danger"></asp:RequiredFieldValidator>
                    </div>
                </div>
                 <div class="form-group">
                  <asp:Label ID="degree" runat="server" Text="Degree" CssClass="col-sm-3 control-label"></asp:Label>
                    
                    <div class="col-sm-9">
                  
                        <asp:TextBox ID="Degree_" runat="server" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="Degree_RequiredFieldValidator1" runat="server" ErrorMessage="Degree is missing" ControlToValidate="Degree_" CssClass="text-danger"></asp:RequiredFieldValidator>
                    </div>
                </div>
                                             <div class="form-group">
                  <asp:Label ID="Gnumber" runat="server" Text="Group Nubmer" CssClass="col-sm-3 control-label"></asp:Label>
                    
                    <div class="col-sm-9">
                  
                        <asp:TextBox ID="GroupNumber_" runat="server" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="GroupNumber_RequiredFieldValidator1" runat="server" ErrorMessage="Group Number is missing" ControlToValidate="GroupNumber_" CssClass="text-danger"></asp:RequiredFieldValidator>
                    </div>
                </div>
               
                  <div class="form-group">
                    <asp:Label ID="UserName" runat="server" Text="User Name" CssClass="col-sm-3 control-label"></asp:Label>
                    <div class="col-sm-9">
                        <asp:TextBox ID="UserName_" runat="server" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="UserName_RequiredFieldValidator1" runat="server" ErrorMessage="UserName is missing" CssClass="text-danger" ControlToValidate="UserName_"></asp:RequiredFieldValidator>
                    </div>

                </div>
                 <div class="form-group">
                    <asp:Label ID="Password" runat="server" Text="Password" CssClass="col-sm-3 control-label"></asp:Label>
                    <div class="col-sm-9">
                        <asp:TextBox ID="Password_" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="Password_RequiredFieldValidator1" runat="server" ErrorMessage="Password is missing" CssClass="text-danger" ControlToValidate="Password_"></asp:RequiredFieldValidator>
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
                  <asp:Label ID="delete_student" runat="server" Text="Nsbm id" CssClass="col-sm-3 control-label"></asp:Label>
                    
                    <div class="col-sm-9">
                  
                        <asp:TextBox ID="Nsbmid_" runat="server" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="Nsbmid_RequiredFieldValidator1" runat="server" ErrorMessage="Nsbmid is missing" ControlToValidate="Nsbmid_" CssClass="text-danger"></asp:RequiredFieldValidator>
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

                                    <asp:GridView ID="GridView1" runat="server" CssClass="table table-striped table-bordered table-hover" AutoGenerateColumns="False">
        <Columns>
            <asp:BoundField DataField="NSBM_ID" HeaderText="NSBM ID"></asp:BoundField>
            <asp:BoundField DataField="Degree" HeaderText="Degree "></asp:BoundField>
            <asp:BoundField DataField="Group_Number" HeaderText="Group Number"></asp:BoundField>
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
