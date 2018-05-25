<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SESSION.aspx.cs" Inherits="ResourceAllocationSystem.SESSION" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Session</title>
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
                <h4>Add Session</h4>
                <div class="form-group">
                  <asp:Label ID="Duration" runat="server" Text="Duration" CssClass="col-sm-3 control-label"></asp:Label>
                    
                    <div class="col-sm-9">
                  
                        <asp:TextBox ID="Duration_" runat="server" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="Duration_RequiredFieldValidator1" runat="server" ErrorMessage="Duration is missing" ControlToValidate="Duration_" CssClass="text-danger"></asp:RequiredFieldValidator>
                    </div>
                </div>
                 <div class="form-group">
                  <asp:Label ID="date" runat="server" Text="Date" CssClass="col-sm-3 control-label"></asp:Label>
                    
                    <div class="col-sm-9">
                  
                        <asp:TextBox ID="date_" runat="server" CssClass="form-control" TextMode="Date"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="date_RequiredFieldValidator1" runat="server" ErrorMessage="Date is missing" ControlToValidate="date_" CssClass="text-danger"></asp:RequiredFieldValidator>
                    </div>
                </div>
             <div class="form-group">
                  <asp:Label ID="Starttime" runat="server" Text="Start time" CssClass="col-sm-3 control-label"></asp:Label>
                    
                    <div class="col-sm-9">
                  
                        <asp:TextBox ID="Starttime_" runat="server" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="Starttime_RequiredFieldValidator1" runat="server" ErrorMessage="Start time is missing" ControlToValidate="Starttime_" CssClass="text-danger"></asp:RequiredFieldValidator>
                    </div>
                </div>
                             <div class="form-group">
                  <asp:Label ID="Endtime" runat="server" Text="End Time" CssClass="col-sm-3 control-label"></asp:Label>
                    
                    <div class="col-sm-9">
                  
                        <asp:TextBox ID="Endtime_" runat="server" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="Endtime_RequiredFieldValidator1" runat="server" ErrorMessage="End time is missing" ControlToValidate="Endtime_" CssClass="text-danger"></asp:RequiredFieldValidator>
                    </div>
                </div>
                             <div class="form-group">
                  <asp:Label ID="BatchCode" runat="server" Text="Batch Code" CssClass="col-sm-3 control-label"></asp:Label>
                    
                    <div class="col-sm-9">
                  
                        <asp:TextBox ID="BATCHCode_" runat="server" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="Batchid_RequiredFieldValidator1" runat="server" ErrorMessage="Batch Code is missing" ControlToValidate="BATCHCode_" CssClass="text-danger"></asp:RequiredFieldValidator>
                    </div>
                </div>
                             <div class="form-group">
                  <asp:Label ID="ModuleCode" runat="server" Text="Module Code" CssClass="col-sm-3 control-label"></asp:Label>
                    
                    <div class="col-sm-9">
                  
                        <asp:TextBox ID="ModuleCode_" runat="server" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="ModuleCode_RequiredFieldValidator1" runat="server" ErrorMessage="Module id is missing" ControlToValidate="ModuleCode_" CssClass="text-danger"></asp:RequiredFieldValidator>
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
                  <asp:Label ID="SessionID" runat="server" Text="Session ID" CssClass="col-sm-3 control-label"></asp:Label>
                    
                    <div class="col-sm-9">
                  
                        <asp:TextBox ID="SessionID_" runat="server" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="SessionID_RequiredFieldValidator1" runat="server" ErrorMessage="Session ID is missing" ControlToValidate="SessionID_" CssClass="text-danger"></asp:RequiredFieldValidator>
                    </div>
                </div>

         <div class="controls">
<asp:Button ID="Button2" runat="server" CssClass="btn btn-success" Text="Remove" OnClick="Button2_Click" />
             <asp:Label ID="Label2" runat="server"></asp:Label>
      </div>
    </div>
                         <div class="tab-pane  fade" id="update">
                             <div class="form-group">
                  <asp:Label ID="sid" runat="server" Text="Session ID" CssClass="col-sm-3 control-label"></asp:Label>
                    
                    <div class="col-sm-9">
                  
                        <asp:TextBox ID="sid_" runat="server" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="sid_RequiredFieldValidator1" runat="server" ErrorMessage="Session ID is missing" ControlToValidate="sid_" CssClass="text-danger"></asp:RequiredFieldValidator>
                    </div>
                </div>
 <div class="form-group">
                  <asp:Label ID="Cdate" runat="server" Text="Date" CssClass="col-sm-3 control-label"></asp:Label>
                    
                    <div class="col-sm-9">
                  
                        <asp:TextBox ID="Cdate_" runat="server" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="Cdate_RequiredFieldValidator2" runat="server" ErrorMessage="Session ID is missing" ControlToValidate="Cdate_" CssClass="text-danger"></asp:RequiredFieldValidator>
                    </div>
                </div>

         <div class="controls">
<asp:Button ID="Button1" runat="server" CssClass="btn btn-success" Text="Remove" OnClick="Button1_Click" />
             <asp:Label ID="Label4" runat="server"></asp:Label>
      </div>



                         </div>
<div class="tab-pane fade" id="view">
      <div class="row">  
                            <div class="col-lg-12 ">  
                                <div class="table-responsive">  

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="table table-striped table-bordered table-hover">
        <Columns>
            <asp:BoundField DataField="Session_ID" HeaderText="Session ID"></asp:BoundField>
            <asp:BoundField DataField="Session_Number" HeaderText="Session Number"></asp:BoundField>
            <asp:BoundField DataField="Duration" HeaderText="Duration"></asp:BoundField>
            <asp:BoundField DataField="date_" HeaderText="Date"></asp:BoundField>
            <asp:BoundField DataField="Start_Time" HeaderText="Start Time"></asp:BoundField>
            <asp:BoundField DataField="End_Time" HeaderText="End Time"></asp:BoundField>
            <asp:BoundField DataField="BATCH_Code" HeaderText="BATCH Code"></asp:BoundField>
            <asp:BoundField DataField="Module_Code" HeaderText="Module Code"></asp:BoundField>
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
              <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="bootstrap/js/bootstrap.min.js"></script>

    </form>
</body>
</html>
