<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NOTICE.aspx.cs" Inherits="ResourceAllocationSystem.NOTICE" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Notice</title>
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
                <h4>Add Notice</h4>
                 <div class="form-group">
                  <asp:Label ID="Noticedetailes" runat="server" Text="Notice Detailes" CssClass="col-sm-3 control-label"></asp:Label>
                    
                    <div class="col-sm-9">
                  
                        <asp:TextBox ID="Noticedetailes_" runat="server" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="Noticedetailes_RequiredFieldValidator1" runat="server" ErrorMessage="Notice detailes are missing " ControlToValidate="Noticedetailes_" CssClass="text-danger"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="form-group">
                  <asp:Label ID="Author" runat="server" Text="Author" CssClass="col-sm-3 control-label"></asp:Label>
                    
                    <div class="col-sm-9">
                  
                        <asp:TextBox ID="Author_" runat="server" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="Author_RequiredFieldValidator1" runat="server" ErrorMessage="Plese enter the author" ControlToValidate="Author_" CssClass="text-danger"></asp:RequiredFieldValidator>
                    </div>
                </div>
                  <div class="form-group">
                  <asp:Label ID="Lecid" runat="server" Text="Lecturer Code " CssClass="col-sm-3 control-label"></asp:Label>
                    
                    <div class="col-sm-9">
                  
                        <asp:TextBox ID="Lecid_" runat="server" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="Lecid_RequiredFieldValidator1" runat="server" ErrorMessage="Plese enter the Lecturer id" ControlToValidate="Lecid_" CssClass="text-danger"></asp:RequiredFieldValidator>
                    </div>
                </div>

    <div class="form-group">
     
      <div class="controls">
<asp:Button ID="Button1" runat="server" CssClass="btn btn-success" Text="Add" OnClick="Button1_Click" />
          <asp:Label ID="Label1" runat="server"></asp:Label>
      </div>
    </div>

            </div>
</div>
<div class="tab-pane fade" id="delete">

   
      <div class="form-group">
                  <asp:Label ID="deleteNotice" runat="server" Text="Notice Id" CssClass="col-sm-3 control-label"></asp:Label>
                    
                    <div class="col-sm-9">
                  
                        <asp:TextBox ID="deleteNotice_" runat="server" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="deleteNotice_RequiredFieldValidator1" runat="server" ErrorMessage="Notice id is missing" ControlToValidate="deleteNotice_"></asp:RequiredFieldValidator>
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
            <asp:BoundField DataField="Notice_ID" HeaderText="Notice ID"></asp:BoundField>
            <asp:BoundField DataField="Notice_Details" HeaderText="Notice Details"></asp:BoundField>
            <asp:BoundField DataField="Author" HeaderText="Author"></asp:BoundField>
            <asp:BoundField DataField="Lec_Code" HeaderText="Lecturer Code"></asp:BoundField>
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
