<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Adminpanel_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8"/>
  <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
  <title>Global Best Packers & Movers Admin Panel</title>
   

  <!-- Tell the browser to be responsive to screen width -->
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport"/>
  <!-- Bootstrap 3.3.7 -->
  <link rel="stylesheet" href="bower_components/bootstrap/dist/css/bootstrap.min.css"/>
  <!-- Font Awesome -->
  <link rel="stylesheet" href="bower_components/font-awesome/css/font-awesome.min.css"/>
  <!-- Ionicons -->
  <link rel="stylesheet" href="bower_components/Ionicons/css/ionicons.min.css"/>
  <!-- Theme style -->
  <link rel="stylesheet" href="dist/css/AdminLTE.min.css"/>
  <!-- iCheck -->
  <link rel="stylesheet" href="plugins/iCheck/square/blue.css"/>

  <!-- Favicon -->
    <link href="../img/truck.ico" rel="icon"/>

  <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
  <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
  <!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->

  <!-- Google Font -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic"/>

</head>
<body class="hold-transition login-page">
    
    <div>
    
<div class="login-box">
 
  <div class="login-box-body">
    <p class="login-box-msg">
    </p>
      <h3 style="text-align:center; color:#ff3e41;"> <img src="../img/GBP-logo.jpeg" alt="" style=" height:81px; width:299px;"/><br /><br /> Admin Panel</h3>

    <form id="form1" runat="server">
      <div class="form-group has-feedback">
          <asp:TextBox ID="TextBox1" runat="server" class="form-control" placeholder="Enter Login Username" ></asp:TextBox>
        <%--<input type="email" class="form-control" placeholder="Email">--%>
        <span class="glyphicon glyphicon-envelope form-control-feedback"></span>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBox1" ErrorMessage="Enter UserName" 
                    ValidationGroup="a" ForeColor="Red">*</asp:RequiredFieldValidator>
      </div>
      <div class="form-group has-feedback">

          <asp:TextBox ID="TextBox2" runat="server"  TextMode="Password" type="password" class="form-control" placeholder="Enter Login Password" ></asp:TextBox>
        <span class="glyphicon glyphicon-lock form-control-feedback"></span>

          <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="TextBox2" ErrorMessage="Enter Password" 
                    ValidationGroup="a" ForeColor="Red">*</asp:RequiredFieldValidator>
          
      </div>
      <div class="row">
        <div class="col-xs-8">
          
        </div>
        <!-- /.col -->
        <div class="col-xs-4">

            <asp:Button ID="Button1" runat="server" 
                    onclick="Button1_Click"  Text="Submit" ClientIDMode="Static" 
                    ValidationGroup="a" type="submit" class="btn btn-primary btn-block btn-flat" />
          <%--<button type="submit" class="btn btn-primary btn-block btn-flat">Sign In</button>--%>
        </div>
        <!-- /.col -->
      </div>
        <div class="row">
        <div class="col-xs-12" style="text-align:center">
          
        </div>
            </div>

    </form>

  </div>
  <!-- /.login-box-body -->
</div>
<!-- /.login-box -->

<!-- jQuery 3 -->
<script src="bower_components/jquery/dist/jquery.min.js"></script>
<!-- Bootstrap 3.3.7 -->
<script src="bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
    </div>
</body>
</html>
