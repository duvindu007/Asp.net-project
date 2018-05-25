<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EXAM.aspx.cs" Inherits="ResourceAllocationSystem.EXAM" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Exam</title>
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
                <h4>Add Exam</h4>
             
                   <div class="form-group">
                  <asp:Label ID="BATCH_Code" runat="server" Text="Batch Code" CssClass="col-sm-3 control-label"></asp:Label>
                    
                    <div class="col-sm-9">
                  
                        <asp:TextBox ID="BatchCode_" runat="server" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="Batchid_RequiredFieldValidator1" runat="server" ErrorMessage="Batch Code is missing" ControlToValidate="BatchCode_" CssClass="text-danger"></asp:RequiredFieldValidator>
                    </div>
                </div>


                 <div class="form-group">
                  <asp:Label ID="Examduration" runat="server" Text="Exam Duration" CssClass="col-sm-3 control-label"></asp:Label>
                    
                    <div class="col-sm-9">
                  
                        <asp:TextBox ID="Examduration_" runat="server" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Exam durationn is missing" ControlToValidate="Examduration_" CssClass="text-danger"></asp:RequiredFieldValidator>
                    </div>
                </div>

                   <div class="form-group">
                  <asp:Label ID="date" runat="server" Text="Date" CssClass="col-sm-3 control-label"></asp:Label>
                    
                    <div class="col-sm-9">
                  
                        <asp:TextBox ID="date_" runat="server" CssClass="form-control" TextMode="Date"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="date_RequiredFieldValidator2" runat="server" ErrorMessage="Date is missing" ControlToValidate="date_" CssClass="text-danger"></asp:RequiredFieldValidator>
                    </div>
                </div>


             <div class="form-group">
                  <asp:Label ID="Starttime" runat="server" Text="Start time" CssClass="col-sm-3 control-label"></asp:Label>
                    
                    <div class="col-sm-9">
                  
                        <asp:TextBox ID="Starttime_" runat="server" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="Starttime_RequiredFieldValidator2" runat="server" ErrorMessage="Start time is missing" ControlToValidate="Starttime_" CssClass="text-danger"></asp:RequiredFieldValidator>
                    </div>
                </div>
                             <div class="form-group">
                  <asp:Label ID="Endtime" runat="server" Text="End time" CssClass="col-sm-3 control-label"></asp:Label>
                    
                    <div class="col-sm-9">
                  
                        <asp:TextBox ID="Endtime_" runat="server" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="Endtime_RequiredFieldValidator2" runat="server" ErrorMessage="Endtime is missing" ControlToValidate="Endtime_" CssClass="text-danger"></asp:RequiredFieldValidator>
                    </div>
                </div>

                  <div class="form-group">
                  <asp:Label ID="HallCode" runat="server" Text="Hall Code" CssClass="col-sm-3 control-label"></asp:Label>
                    
                    <div class="col-sm-9">
                  
                        <asp:TextBox ID="HallCode_" runat="server" CssClass="form-control" ></asp:TextBox>
                        <asp:RequiredFieldValidator ID="Hallid_RequiredFieldValidator2" runat="server" ErrorMessage="Hall Code is missing" ControlToValidate="HallCode_" CssClass="text-danger"></asp:RequiredFieldValidator>
                    </div>
                </div>



                  <div class="form-group">
                  <asp:Label ID="Examtype" runat="server" Text="Exam Type" CssClass="col-sm-3 control-label"></asp:Label>
                    
                    <div class="col-sm-9">
                  
                        <asp:TextBox ID="Exam_Type" runat="server" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="Exam_TypeRequiredFieldValidator2" runat="server" ErrorMessage="Exam type is missing" ControlToValidate="Exam_Type" CssClass="text-danger"></asp:RequiredFieldValidator>
                    </div>
                </div>

                     <div class="form-group">
                  <asp:Label ID="ModuleCode" runat="server" Text="Module Code" CssClass="col-sm-3 control-label"></asp:Label>
                    
                    <div class="col-sm-9">
                  
                        <asp:TextBox ID="ModuleCode_" runat="server" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="Modulecode_RequiredFieldValidator2" runat="server" ErrorMessage="Module Code is missing" CssClass="text-danger" ControlToValidate="ModuleCode_"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="form-group">
                  <asp:Label ID="iblins" runat="server" Text="Instructor id" CssClass="col-sm-3 control-label"></asp:Label>
                    
                    <div class="col-sm-9">
                  
                        <asp:TextBox ID="Instructorid_" runat="server" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="Instructorid_RequiredFieldValidator2" runat="server" ErrorMessage="instructor id is missing is missing" CssClass="text-danger" ControlToValidate="Instructorid_"></asp:RequiredFieldValidator>
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
                  <asp:Label ID="deleteExam" runat="server" Text="Exam id" CssClass="col-sm-3 control-label"></asp:Label>
                    
                    <div class="col-sm-9">
                  
                        <asp:TextBox ID="deleteExam_" runat="server" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="deleteExam_RequiredFieldValidator2" runat="server" ErrorMessage="Exam id is missing" ControlToValidate="deleteExam_" CssClass="text-danger"></asp:RequiredFieldValidator>
                    </div>
                </div>

         <div class="controls">
<asp:Button ID="Button2" runat="server" CssClass="btn btn-success" Text="Remove" OnClick="Button2_Click" />
             <asp:Label ID="Label2" runat="server"></asp:Label>
      </div>
    </div>
<div class="tab-pane fade" id="update">
    <div class="form-group">
                  <asp:Label ID="Eid" runat="server" Text="Exam id" CssClass="col-sm-3 control-label"></asp:Label>
                    
                    <div class="col-sm-9">
                  
                        <asp:TextBox ID="Eid_" runat="server" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="Eid_RequiredFieldValidator3" runat="server" ErrorMessage="Exam id is missing" ControlToValidate="Eid_" CssClass="text-danger"></asp:RequiredFieldValidator>
                    </div>
                </div>


      <div class="form-group">
                  <asp:Label ID="thedate" runat="server" Text="Exam id" CssClass="col-sm-3 control-label"></asp:Label>
                    
                    <div class="col-sm-9">
                  
                        <asp:TextBox ID="thedate_" runat="server" CssClass="form-control" TextMode="Date"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="thedate_RequiredFieldValidator2" runat="server" ErrorMessage="Exam date is missing" ControlToValidate="thedate_" CssClass="text-danger"></asp:RequiredFieldValidator>
                    </div>
                </div>

         <div class="controls">
<asp:Button ID="Button1" runat="server" CssClass="btn btn-success" Text="Update" OnClick="Button1_Click" />
             <asp:Label ID="Label4" runat="server"></asp:Label>
      </div>



</div>



<div class="tab-pane fade" id="view">
    <div class="row">  
                            <div class="col-lg-12 ">  
                                <div class="table-responsive">
                                    <asp:GridView ID="GridView1" runat="server" CssClass="table table-striped table-bordered table-hover" AutoGenerateColumns="False">
        <Columns>
            <asp:BoundField DataField="Exam_ID" HeaderText="Exam ID"></asp:BoundField>
            <asp:BoundField DataField="BATCH_code" HeaderText="Batch code"></asp:BoundField>
            <asp:BoundField DataField="Exam_Duration" HeaderText="Exam Duration"></asp:BoundField>
            <asp:BoundField DataField="date_" HeaderText="Date"></asp:BoundField>
            <asp:BoundField DataField="Start_Time_" HeaderText="Start Time"></asp:BoundField>
            <asp:BoundField DataField="End_Time_" HeaderText="End Time"></asp:BoundField>
            <asp:BoundField DataField="Hall_Code" HeaderText="Hall Code"></asp:BoundField>
            <asp:BoundField DataField="Exam_type" HeaderText="Exam type"></asp:BoundField>
            <asp:BoundField DataField="Module_Code" HeaderText="Module Code"></asp:BoundField>
            <asp:BoundField DataField="instructor_id" HeaderText="Instructor id"></asp:BoundField>
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

        <div>
        </div>
    </form>
       <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="bootstrap/js/bootstrap.min.js"></script>
</body>
</html>
