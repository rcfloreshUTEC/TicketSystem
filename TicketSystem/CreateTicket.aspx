<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CreateTicket.aspx.cs" Inherits="TicketSystem.CreateTicket" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="Content/bootstrap.css" rel="stylesheet" />
    <link href="Content/font-awesome.css" rel="stylesheet" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
                 <div class="container col-12 justify-content-center">
                     <h5>Describa la incidencia o solicitud</h5>
                    <div class="alert alert-success">
                        
                        <div class="row">
                            <div class="col-md-4">
                                <asp:Label ID="lblTipo" runat="server" CssClass="font-weight-bold" Text="Tipo"></asp:Label>
                            </div>
                            <div class="col-md-8">
                                <asp:DropDownList ID="dplTipo" CssClass="form-control" runat="server">
                                    <asp:ListItem Value="1">Solicitud</asp:ListItem>
                                    <asp:ListItem Value="2">Incidente</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-4">
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
                        </div>
                        <div class="row">
                            <div class="col-md-4">
                                <asp:Label ID="lblTitulo" runat="server" CssClass="font-weight-bold" Text="Titulo"></asp:Label>
                            </div>
                            <div class="col-md-8">
                                <asp:TextBox ID="txtTitulo" CssClass="form-control" runat="server">
                                </asp:TextBox>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-4">
                                <asp:Label ID="lblDescripcion" runat="server" CssClass="font-weight-bold" Text="Descripción"></asp:Label>
                            </div>
                            <div class="col-md-8">
                                <asp:TextBox ID="txtDescripcion" TextMode="MultiLine" CssClass="form-control" runat="server">
                                </asp:TextBox>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <asp:Button ID="btnEnviarTicket" runat="server" CssClass="btn btn-block btn-dark" Text="Enviar Ticket" />
                            </div>
                        </div>
                     </div>
                </div>
        </div>
    </form>
</body>
</html>
