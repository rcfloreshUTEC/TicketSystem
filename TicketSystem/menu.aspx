<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="menu.aspx.cs" Inherits="TicketSystem.menu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Ticket System - Menú</title>
   <!--Insert de librerias bootstrap-->
    <link href="Content/bootstrap.css" rel="stylesheet" />
    <!--Insert de librerias fotn-awesome-->
    <link href="Content/font-awesome.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">

            <!-- Inicia creación de tabla -->
                <div class="d-flex align-items-center justify-content-center" style="height: 450px"">
                    <div class="alert alert-success">
                        <div class="row">
                            <div class="col-md-6">
                                 <!-- Boton para agregar categorias-->
                                <asp:Button ID="btnCategoria" CssClass="btn btn-block btn-info" runat="server" Text="Nueva Categoria" OnClick="btnCategoria_Click" />

                            </div>
                            <div class="col-md-6">
                                <!-- Boton para agregar nuevo usuario-->
                                <asp:Button ID="btnNuevoUsuario" CssClass="btn btn-block btn-info" runat="server" Text="Nuevo Usuario" OnClick="btnNuevoUsuario_Click" />

                            </div>
                            
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                 <!-- Boton para agregar nuevo ticket-->
                                <asp:Button ID="btnNuevoTicket" CssClass="btn btn-block btn-info" runat="server" Text="Nuevo Ticket" OnClick="btnNuevoTicket_Click" />

                            </div>
                            
                        </div>

                     </div>
                </div>
            <!-- Finaliza creación de tabla -->
        </div>
    </form>
</body>
</html>
