<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddCategory.aspx.cs" Inherits="TicketSystem.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Ticket System - Agregar Categoria</title>
    <!--Insert de librerias bootstrap-->
    <link href="Content/bootstrap.css" rel="stylesheet" />
    <!--Insert de librerias fotn-awesome-->
    <link href="Content/font-awesome.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
             
                 <div class="container col-12 justify-content-center">
                     <!-- Inicio del label del titulo -->
                     <h5>Inserte la nueva categoria de para los tickets</h5>
                     <!-- Fin del label del titulo -->
                    <div class="alert alert-success">
                        
                        <div class="row">
                            <div class="col-md-4">
                                 <!-- Inicio del label del Nombre categoria -->
                                <asp:Label ID="lblNombreCat" runat="server" CssClass="font-weight-bold" Text="Nombre de la categoria"></asp:Label>
                                <!-- Fin del label del Nombre categoria -->
                            </div>
                            <div class="col-md-8">
                                <!-- Inicio del textbos del Nombre categoria -->
                                 <asp:TextBox ID="txtNombreCat" CssClass="form-control" runat="server"></asp:TextBox>
                                 <!-- Fin del textbox del Nombre categoria -->
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-12">
                                 <!-- Inicio del boton del Nombre categoria -->
                                <asp:Button ID="btnInsertarCat" CssClass="btn btn-block btn-info" runat="server" Text="Insertar Categoria" OnClick="btnInsertarCat_Click" />
                                <!-- Fin del boton del Nombre categoria -->
                            </div>
                            <div class="col-md-12">
                                 <!-- Inicio del mensaje categoria -->
                            <asp:Label ID="lblMensaje" runat="server"  CssClass="form-control" BackColor="#CC0000" Font-Bold="True" ForeColor="White" Visible="True"></asp:Label>
                                <!-- Fin del mensaje categoria -->
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                 <!-- Inicio del data grid view Categoria -->
                                <asp:GridView ID="dgvCategory"  CssClass="table table-light" runat="server">
                                </asp:GridView>
                                <!-- Inicio del data grid view Categoria -->
                            </div>
                        </div>

                     </div>
                </div>
        </div>
    </form>
</body>
</html>
