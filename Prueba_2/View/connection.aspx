<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="connection.aspx.cs" Inherits="Prueba_2.View.connection" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<link rel="stylesheet"
    
    href="https://cdnjs.cloudflare.com/ajax/libs/bootswatch/5.3.1/lux/bootstrap.min.css" />
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
<title>Connection</title>

    <style>
        .center-card {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh; 
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" class="center-card">
                <div class="card mb-3" style="width: 18rem;">
            <div class="card-body">
                <label for="txtName" class="form-label mt-4">Escribir el nombre de la tabla a seleccionar:</label>
                <input runat="server" type="text" class="form-control" id="txtName" />

                <label for="txtServer" class="form-label mt-4">Escribir el nombre del servidor:</label>
                <input runat="server" type="text" class="form-control" id="txtServer" />

                <div class="row mt-4">
                    <button runat="server" id="btnGetConnection" class="btn btn-primary" onserverclick="btnGetConnection_ServerClick">Verificar conexión</button>
                </div>

                <table class="table table-hover mt-4">
                    <thead>
                        <tr>
                            <th scope="col">Tables_Name</th>
                        </tr>
                    </thead>
                    <tbody>
                        <asp:Repeater ID="Repeater1" runat="server">
                            <HeaderTemplate></HeaderTemplate>
                            <ItemTemplate>
                                <tr class="table-primary">
                                    <th scope="row"><%# Eval("tableName")%></th>
                                </tr>
                            </ItemTemplate>
                            <FooterTemplate></FooterTemplate>
                        </asp:Repeater>
                    </tbody>
            <asp:Repeater ID="repTables" runat="server">
                <HeaderTemplate></HeaderTemplate>
                <ItemTemplate>
                    <tr class="table-primary">
                        <th scope="row"><%# Eval("tableName")%></th>
                     
                    </tr>

                </ItemTemplate>
                <FooterTemplate></FooterTemplate>
            </asp:Repeater>
        </tbody>
    </table>
                
            
        </div>
    </form>
</body>
</html>
