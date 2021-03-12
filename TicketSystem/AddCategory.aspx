<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddCategory.aspx.cs" Inherits="TicketSystem.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Ticket System - Agregar Categoria</title>
    <link href="Content/bootstrap.css" rel="stylesheet" />
    <link href="Content/font-awesome.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
                 <div class="container col-12 justify-content-center">
                     <h5>Inserte la nueva categoria de para los tickets</h5>
                    <div class="alert alert-success">
                        
                        <div class="row">
                            <div class="col-md-4">
                                <asp:Label ID="lblNombreCat" runat="server" CssClass="font-weight-bold" Text="Nombre de la categoria"></asp:Label>
                            </div>
                            <div class="col-md-8">
                                 <asp:TextBox ID="txtNombreCat" CssClass="form-control" runat="server"></asp:TextBox>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-12">
                                <asp:Button ID="btnAddCategory" runat="server" CssClass="btn btn-block btn-dark" Text="Agregar Categoria" />
                            </div>
                         <div class="col-md-12">
                            <asp:Label ID="lblMensaje" runat="server"  CssClass="form-control" BackColor="#CC0000" Font-Bold="True" ForeColor="White" Visible="False"></asp:Label>
                        </div>
                        </div>
                     </div>
                </div>
        </div>
    </form>
</body>
</html>
