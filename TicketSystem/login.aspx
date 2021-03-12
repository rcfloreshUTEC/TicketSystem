<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="TicketSystem.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Ticket System - Login</title>
    <!--Insert de librerias bootstrap-->
    <link href="Content/bootstrap.css" rel="stylesheet" />
    <!--Insert de librerias fotn-awesome-->
    <link href="Content/font-awesome.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">

            <!-- Inicio del tabla Login-->
                <div class="d-flex align-items-center justify-content-center" style="height: 450px"">
                    <div class="alert alert-success">
                        <div class="row">
                             <!-- Inicio Sección de Usuario-->
                            <div class="col-md-4">
                                <asp:Label ID="lblUsername" runat="server" CssClass="fa fa-user font-weight-bold" Text="Usuario"></asp:Label>
                            </div>
                            <div class="col-md-8">
                                <asp:TextBox ID="txtUsername" runat="server"  CssClass="form-control" ></asp:TextBox>
                            </div>
                            <!-- Fin Sección de Usuario-->
                        </div>
                        
                        <div class="row">
                            <!-- Inicio Sección de Password-->
                            <div class="col-md-4 align-content-md-end">
                                <asp:Label ID="lblPassword" runat="server" CssClass="fa fa-lock font-weight-bold" Text="Contraseña"></asp:Label>
                            </div>
                            <div class="col-md-8">
                                <!-- Label de Password con textmode habilitado para protección de caracteres -->
                                <asp:TextBox ID="txtPassword" TextMode="Password" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                            <!-- Fin Sección de Usuario-->
                        </div>
                        <div class="col-md-12">
                            <!-- Boton que revisar el usuario y contraseña -->
                            <asp:Button ID="btnLogin" CssClass="form-control  btn btn-success" runat="server" Text="Iniciar Sesión" Font-Bold="True" OnClick="btnLogin_Click" />
                        </div>
                        <div class="col-md-12">
                            <asp:Label ID="lblMensaje" runat="server"  CssClass="form-control" BackColor="#CC0000" Font-Bold="True" ForeColor="White" Visible="False"></asp:Label>
                        </div>
                     </div>
                </div>
             <!-- Fin del tabla Login-->
        </div>
    </form>
</body>
</html>
