<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="ResourceAllocationSystem.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
      <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Dashboard</title>

    <!-- Bootstrap -->
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->



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


        <div style="height: 114px">

        <div class="container">
            <div class="list-group">
               
            <div class="form-group"><!--<div class="collection-item"> -->
     <asp:HyperLink runat="server" Font-Size="X-Large" NavigateUrl="~/Admin.aspx" CssClass="list-group-item list-group-item-action">Admin</asp:HyperLink><!--</div>--></div>
            
      <div class="form-group">
     <asp:HyperLink runat="server" Font-Size="X-Large" NavigateUrl="~/Batch.aspx" CssClass="list-group-item list-group-item-action">Batch</asp:HyperLink></div>
            

           <div class="form-group">
     <asp:HyperLink runat="server" Font-Size="X-Large" NavigateUrl="~/Groups.aspx" CssClass="list-group-item list-group-item-action">Groups</asp:HyperLink></div>
            
            
            
         <div class="form-group">
    <asp:HyperLink runat="server" Font-Size="X-Large" NavigateUrl="~/Hall.aspx" CssClass="list-group-item list-group-item-action">Halls</asp:HyperLink>
    </div>
                  <div class="form-group">
    <asp:HyperLink runat="server" Font-Size="X-Large" NavigateUrl="~/Lab.aspx" CssClass="list-group-item list-group-item-action">Lab</asp:HyperLink>
    </div>
             <div class="form-group">
    <asp:HyperLink runat="server" Font-Size="X-Large" NavigateUrl="~/Lecturer.aspx" CssClass="list-group-item list-group-item-action">Lecturer</asp:HyperLink>
    </div>
             <div class="form-group">
    <asp:HyperLink runat="server" Font-Size="X-Large" NavigateUrl="~/UNDERGRADUATE.aspx" CssClass="list-group-item list-group-item-action">Undergradute</asp:HyperLink>
    </div>
       <div class="form-group">
    <asp:HyperLink runat="server" Font-Size="X-Large" NavigateUrl="~/STUDENT.aspx" CssClass="list-group-item list-group-item-action">Student</asp:HyperLink>
    </div>
     <div class="form-group">
    <asp:HyperLink runat="server" Font-Size="X-Large" NavigateUrl="~/INSTRUCTOR.aspx" CssClass="list-group-item list-group-item-action">Instructor</asp:HyperLink>
    </div>
<div class="form-group">
    <asp:HyperLink runat="server" Font-Size="X-Large" NavigateUrl="~/MODULE.aspx" CssClass="list-group-item list-group-item-action">Module</asp:HyperLink>
    </div>
<div class="form-group">
    <asp:HyperLink runat="server" Font-Size="X-Large" NavigateUrl="~/SESSION.aspx" CssClass="list-group-item list-group-item-action">Session</asp:HyperLink>
    </div>
<div class="form-group">
    <asp:HyperLink runat="server" Font-Size="X-Large" NavigateUrl="~/LABSESSION.aspx" CssClass="list-group-item list-group-item-action">Lab Session</asp:HyperLink>
    </div>
                 <div class="form-group">
    <asp:HyperLink runat="server" Font-Size="X-Large" NavigateUrl="~/HallSESSION.aspx" CssClass="list-group-item list-group-item-action">Hall Session</asp:HyperLink>
    </div>
    </div>
<div class="form-group">
    <asp:HyperLink runat="server" Font-Size="X-Large" NavigateUrl="~/EXAM.aspx" CssClass="list-group-item list-group-item-action">Exam</asp:HyperLink>
    </div>
    <div class="form-group">
    <asp:HyperLink runat="server" Font-Size="X-Large" NavigateUrl="~/NOTICE.aspx" CssClass="list-group-item list-group-item-action">Notice</asp:HyperLink>
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
