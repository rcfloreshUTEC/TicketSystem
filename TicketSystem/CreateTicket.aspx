<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CreateTicket.aspx.cs" Inherits="TicketSystem.CreateTicket" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <!--Insert de librerias bootstrap-->
    <link href="Content/bootstrap.css" rel="stylesheet" />
    <!--Insert de librerias fotn-awesome-->
    <link href="Content/font-awesome.css" rel="stylesheet" />
    <title>Ticket System - Crear un Ticket</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
                 <div class="container col-12 justify-content-center">
                     <!--Inicia label de cabecera-->
                     <h5>Describa la incidencia o solicitud</h5>
                     <!--Fin label de cabecera-->
                    <div class="alert alert-success">
                        
                        <div class="row">
                            <div class="col-md-4">
                                <!-- Inicio de solicitud tipo de ticket-->
                                <asp:Label ID="lblTipo" runat="server" CssClass="font-weight-bold" Text="Tipo"></asp:Label>
                            </div>
                            <div class="col-md-8">
                                <asp:DropDownList ID="dplTipo" CssClass="form-control" runat="server">
                                    <asp:ListItem Value="1">Solicitud</asp:ListItem>
                                    <asp:ListItem Value="2">Incidente</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                           <!-- Fin de solicitud tipo de ticket-->
                        </div>

                        <div class="row">
                            <div class="col-md-4">
                                <!-- Inicio de categoria de ticket-->
                                <asp:Label ID="lblCategoria" runat="server" CssClass="font-weight-bold" Text="Categoria"></asp:Label>
                            </div>
                            <div class="col-md-8">
                                <asp:DropDownList ID="DropDownList1" CssClass="form-control" runat="server">
                                    <asp:ListItem Value="1">Hardware</asp:ListItem>
                                    <asp:ListItem Value="2">Sofware</asp:ListItem>
                                    <asp:ListItem Value="3">A/C</asp:ListItem>
                                    <asp:ListItem Value="4">Seguridad Fisica</asp:ListItem>
                                    <asp:ListItem Value="5">Nuevo Empleado</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                              <!-- Fin de categoria tipo de ticket-->
                        </div>
                        <div class="row">
                            <div class="col-md-4">
                                  <!-- Inicio de titulo  de ticket-->
                                <asp:Label ID="lblTitulo" runat="server" CssClass="font-weight-bold" Text="Titulo"></asp:Label>
                            </div>
                            <div class="col-md-8">
                                <asp:TextBox ID="txtTitulo" CssClass="form-control" runat="server">
                                </asp:TextBox>
                            </div>
                            <!-- Fin de titulo  de ticket-->
                        </div>
                        <div class="row">
                              <!-- Inicio de Descripcion de ticket-->
                            <div class="col-md-4">
                                <asp:Label ID="lblDescripcion" runat="server" CssClass="font-weight-bold" Text="Descripción"></asp:Label>
                            </div>
                            <div class="col-md-8">
                                <asp:TextBox ID="txtDescripcion" TextMode="MultiLine" CssClass="form-control" runat="server">
                                </asp:TextBox>
                            </div>
                            <!-- Fin de Descripcion de ticket-->
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                 <!-- Inicio de Boton de enviar ticket-->
                                <asp:Button ID="btnEnviarTicket" runat="server" CssClass="btn btn-block btn-dark" Text="Enviar Ticket" />
                            <!-- Fin de Boton de enviar ticket-->
                            </div>
                        </div>
                     </div>
                </div>
        </div>
    </form>
</body>
</html>
