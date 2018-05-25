<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Groups.aspx.cs" Inherits="ResourceAllocationSystem.Groups" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Groups</title>
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

        <div>

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
                <h4> Add Groups</h4>
                <div class="form-group">
                  <asp:Label ID="BATCHCode" runat="server" Text="Batch Code" CssClass="col-sm-3 control-label"></asp:Label>
                    
                    <div class="col-sm-9">
                  
                        <asp:TextBox ID="BATCHCode_" runat="server" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="BATCHCode_RequiredFieldValidator1" runat="server" ErrorMessage="Batch Code is missing" ControlToValidate="BATCHCode_" CssClass="text-danger"></asp:RequiredFieldValidator>
                    </div>
                </div>
                 <div class="form-group">
                  <asp:Label ID="NumberOfStudent" runat="server" Text="Number of students" CssClass="col-sm-3 control-label"></asp:Label>
                    
                    <div class="col-sm-9">
                  
                        <asp:TextBox ID="NumberOfStudent_" runat="server" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="NumberOfStudent_RequiredFieldValidator1" runat="server" ErrorMessage="Number of student in the group are missing" ControlToValidate="NumberOfStudent_" CssClass="text-danger"></asp:RequiredFieldValidator>
                    </div>
                </div>
       
                          
      <div class="controls">
<asp:Button ID="Add_to_the_Group" runat="server" CssClass="btn btn-success" Text="Add" OnClick="Add_to_the_Group_Click" />
          <asp:Label ID="Label1" runat="server"></asp:Label>
      </div>
    </div>

            
</div>
<div class="tab-pane fade" id="delete">

   
      <div class="form-group">
                  <asp:Label ID="delete_group" runat="server" Text="Group id" CssClass="col-sm-3 control-label"></asp:Label>
                    
                    <div class="col-sm-9">
                  
                        <asp:TextBox ID="Deletegroup_" runat="server" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="Deletegroup_RequiredFieldValidator1" runat="server" ErrorMessage="Group id is missing" CssClass="text-danger" ControlToValidate="Deletegroup_"></asp:RequiredFieldValidator>
                    </div>
                </div>

         <div class="controls">
             <asp:Button ID="Remove_Group" runat="server" CssClass="btn btn-success" Text="Remove" OnClick="Remove_Group_Click1" />
             <asp:Label ID="Label2" runat="server"></asp:Label>
      </div>
    </div>

                         <div class="tab-pane fade" id="update">
                             <div class="form-group">
                  <asp:Label ID="Gid" runat="server" Text="Group id" CssClass="col-sm-3 control-label"></asp:Label>
                    
                    <div class="col-sm-9">
                  
                        <asp:TextBox ID="Gid_" runat="server" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="Gid_RequiredFieldValidator1" runat="server" ErrorMessage="Group id is missing" ControlToValidate="Gid_" CssClass="text-danger"></asp:RequiredFieldValidator>
                    </div>
                </div>
                 <div class="form-group">
                  <asp:Label ID="Label4" runat="server" Text="Number of students" CssClass="col-sm-3 control-label"></asp:Label>
                    
                    <div class="col-sm-9">
                  
                        <asp:TextBox ID="Number_of_students_" runat="server" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="Number_of_students_RequiredFieldValidator2" runat="server" ErrorMessage="Number of student in the group are missing" ControlToValidate="Number_of_students_" CssClass="text-danger"></asp:RequiredFieldValidator>
                    </div>
                </div>
<div class="controls">
             <asp:Button ID="Button1" runat="server" CssClass="btn btn-success" Text="Update" OnClick="Button1_Click1" />
             <asp:Label ID="Label3" runat="server"></asp:Label>
      </div>
                         </div>




<div class="tab-pane fade" id="view">
       <div class="row">  
                            <div class="col-lg-12 ">  
                                <div class="table-responsive"> 
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="table table-striped table-bordered table-hover">
        <Columns>
            <asp:BoundField DataField="Group_id" HeaderText="Group id"></asp:BoundField>
            <asp:BoundField DataField="Group_Number" HeaderText="Group Number"></asp:BoundField>
            <asp:BoundField DataField="BATCH_code" HeaderText="Batch code"></asp:BoundField>
            <asp:BoundField DataField="NumberOfStudent" HeaderText="Number Of Students"></asp:BoundField>
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






        </div>
    </form>
    
     <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="bootstrap/js/bootstrap.min.js"></script>
</body>
</html>
