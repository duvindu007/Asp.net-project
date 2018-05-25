<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Hall.aspx.cs" Inherits="ResourceAllocationSystem.Hall" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Hall</title>
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
                <h4>Add Hall</h4>
            
                <div class="form-group">
                  <asp:Label ID="Hallcapacity" runat="server" Text="Hall Capacity" CssClass="col-sm-3 control-label"></asp:Label>
                  
                    <div class="col-sm-9">
                  
                        <asp:TextBox ID="Hallcapacity_" runat="server" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="Hallcapacity_RequiredFieldValidator1" runat="server" ErrorMessage="Plese fill Hall capacity" CssClass="text-danger" ControlToValidate="Hallcapacity_"></asp:RequiredFieldValidator>
                    </div>
                </div>
                 <div class="form-group">
                  <asp:Label ID="Availibility" runat="server" Text="Availibility" CssClass="col-sm-3 control-label"></asp:Label>
                    
                    <div class="col-sm-9">
                  
                        <asp:TextBox ID="Availibility_" runat="server" CssClass="form-control"></asp:TextBox>
                        <asp:Label ID="Label3" runat="server"></asp:Label>
                        <asp:RequiredFieldValidator ID="AvailibilityRequiredFieldValidator1" runat="server" ErrorMessage="Please enter Availibility " ControlToValidate="Availibility_" CssClass="text-danger"></asp:RequiredFieldValidator>
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
                  <asp:Label ID="deletehall" runat="server" Text="Hall id" CssClass="col-sm-3 control-label"></asp:Label>
                    
                    <div class="col-sm-9">
                  
                        <asp:TextBox ID="deletehall_" runat="server" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="deleteHallRequiredFieldValidator1" runat="server" ErrorMessage="Hall Id is missing" ControlToValidate="deletehall_" CssClass="text-danger"></asp:RequiredFieldValidator>
                    </div>
                </div>
            <div class="controls">
<asp:Button ID="Button2" runat="server" CssClass="btn btn-success" Text="Remove" OnClick="Button2_Click1" />
             <asp:Label ID="Label2" runat="server"></asp:Label>
      </div>
 
    </div>
                        <div class="tab-pane fade" id="view">
                             <div class="row">  
                            <div class="col-lg-12 ">  
                                <div class="table-responsive"> 
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="table table-striped table-bordered table-hover">
                                <Columns>
                                    <asp:BoundField DataField="Hall_id" HeaderText="Hall_id "></asp:BoundField>
                                    <asp:BoundField DataField="Hall_Code" HeaderText="Hall Code"></asp:BoundField>
                                    <asp:BoundField DataField="Hall_capacity" HeaderText="Hall capacity"></asp:BoundField>
                                    <asp:BoundField DataField="Availibility" HeaderText="Availibility"></asp:BoundField>
                                   
                                </Columns>
                            </asp:GridView>
</div>
                                </div>
                                 </div>
                           
                        </div>
                         <div class="tab-pane fade" id="update">
     <div class="form-group">
                  <asp:Label ID="Hall__id" runat="server" Text="Hall id" CssClass="col-sm-3 control-label"></asp:Label>
                    
                    <div class="col-sm-9">
                  
                        <asp:TextBox ID="Hallid_" runat="server" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Pleae enter Hall id " CssClass="text-danger" ControlToValidate="Hallid_"></asp:RequiredFieldValidator>
                    </div>
          
                </div>


      <div class="form-group">
                  <asp:Label ID="SetAvailibility" runat="server" Text="Availibility" CssClass="col-sm-3 control-label"></asp:Label>
                      <div class="col-sm-9">
                  
                        <asp:TextBox ID="SetAvailibility_" runat="server" CssClass="form-control"></asp:TextBox>
                          <asp:RequiredFieldValidator ID="SetAvailibility_RequiredFieldValidator1" runat="server" ErrorMessage="Plese Set Availibility" ControlToValidate="SetAvailibility_" CssClass="text-danger"></asp:RequiredFieldValidator>
                          <asp:Label ID="Label5" runat="server"></asp:Label>
                    </div>
                </div>
    <div class="controls">
        <asp:Button ID="StAvailibility" runat="server" CssClass="btn btn-success" Text="Set" OnClick="StAvailibility_Click" />
        <asp:Label ID="Label4" runat="server"></asp:Label>
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
