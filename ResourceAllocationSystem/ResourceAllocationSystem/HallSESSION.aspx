<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HallSESSION.aspx.cs" Inherits="ResourceAllocationSystem.ClassSESSION" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Hall session</title>
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
                        <li class="active"><a href="#ADD__" data-toggle="tab">Add</a></li>
                   <li><a href="#delete" data-toggle="tab">Delete</a></li>
                      <li><a href="#view" data-toggle="tab">View</a></li>
                  </ul>
                     <div id="myTabContent" class="tab-content">
                    <div class="tab-pane active in" id="ADD__">
            <div class="form-horizontal">
                <h4>Add Hall Sessions</h4>
                <div class="form-group">
                  <asp:Label ID="Sessionid" runat="server" Text="Session Id" CssClass="col-sm-3 control-label"></asp:Label>
                    
                    <div class="col-sm-9">
                  
                        <asp:TextBox ID="Session_id" runat="server" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="Session_idRequiredFieldValidator1" runat="server" ErrorMessage="Session id is missing " ControlToValidate="Session_id" CssClass="text-danger"></asp:RequiredFieldValidator>
                    </div>
                </div>
                 <div class="form-group">
                  <asp:Label ID="Hall_Code" runat="server" Text="Hall code" CssClass="col-sm-3 control-label"></asp:Label>
                    
                    <div class="col-sm-9">
                  
                        <asp:TextBox ID="HallCode_" runat="server" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="HallCode_RequiredFieldValidator1" runat="server" ErrorMessage="Hall Code is missing" ControlToValidate="HallCode_" CssClass="text-danger"></asp:RequiredFieldValidator>
                    </div>
                </div>
                       
<div class="form-group">
                  <asp:Label ID="Lec_Code" runat="server" Text="Lec Code" CssClass="col-sm-3 control-label"></asp:Label>
                    
                    <div class="col-sm-9">
                  
                        <asp:TextBox ID="LecCode_" runat="server" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="Leccode_RequiredFieldValidator1" runat="server" ErrorMessage="Lab Code is missing" ControlToValidate="LecCode_" CssClass="text-danger"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="form-group">
                  <asp:Label ID="Note" runat="server" Text="Note" CssClass="col-sm-3 control-label"></asp:Label>
                    
                    <div class="col-sm-9">
                  
                        <asp:TextBox ID="Note_" runat="server" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="Note_RequiredFieldValidator1" runat="server" ErrorMessage="Note is missing" ControlToValidate="Note_" CssClass="text-danger"></asp:RequiredFieldValidator>
                    </div>
                </div>
                           


                       <div class="form-group">


     
      <div class="controls">
<asp:Button ID="ADD" runat="server" CssClass="btn btn-success" Text="Add" OnClick="ADD_Click" />
          <asp:Label ID="Label1" runat="server"></asp:Label>
      </div>
    </div>

            </div>
</div>
<div class="tab-pane fade" id="delete">

   
      <div class="form-group">
                  <asp:Label ID="deleteclasssession" runat="server" Text="Session id" CssClass="col-sm-3 control-label"></asp:Label>
                    
                    <div class="col-sm-9">
                  
                        <asp:TextBox ID="deleteclasssession_" runat="server" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="deleteclasssession_RequiredFieldValidator1" runat="server" ErrorMessage="Plese enter the session id" ControlToValidate="deleteclasssession_" CssClass="text-danger"></asp:RequiredFieldValidator>
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
            <asp:BoundField DataField="Hall_Code" HeaderText="Hall Code"></asp:BoundField>
            <asp:BoundField DataField="Lec_Code" HeaderText="Lec Code"></asp:BoundField>
            <asp:BoundField DataField="Note" HeaderText="Note"></asp:BoundField>
        </Columns>
    </asp:GridView>

</div>
                                </div></div>

</div>




            </div>
        </div>
            </div>
        </div>
          </div>
        </div>

            </div>
    </form>
</body>
      <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="bootstrap/js/bootstrap.min.js"></script>
</html>
