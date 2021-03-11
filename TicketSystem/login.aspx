<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="TicketSystem.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Content/bootstrap.css" rel="stylesheet" />
    <link href="Content/font-awesome.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">


                <div class="d-flex align-items-center justify-content-center" style="height: 450px"">
                    <div class="alert alert-success">
                        <div class="row">
                            <div class="col-md-4">
                                <asp:Label ID="lblUsername" runat="server" CssClass="fa fa-user font-weight-bold" Text="Usuario"></asp:Label>
                            </div>
                            <div class="col-md-8">
                                <asp:TextBox ID="txtUsername" runat="server"  CssClass="form-control" ></asp:TextBox>
                            </div>
                            
                        </div>
                        
                        <div class="row">
                            <div class="col-md-4 align-content-md-end">
                                <asp:Label ID="lblPassword" runat="server" CssClass="fa fa-lock font-weight-bold" Text="Contraseña"></asp:Label>
                            </div>
                            <div class="col-md-8">
                                <asp:TextBox ID="txtPassword" TextMode="Password" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>
                        <div class="col-md-12">
                            <asp:Button ID="btnLogin" CssClass="form-control  btn btn-success" runat="server" Text="Iniciar Sesión" />
                        </div>
                     </div>
                </div>
        </div>
    </form>
</body>
</html>
