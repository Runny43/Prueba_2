<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="createTable.aspx.cs" Inherits="Prueba_2.View.createTable" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet"
    
    href="https://cdnjs.cloudflare.com/ajax/libs/bootswatch/5.3.1/lux/bootstrap.min.css" />
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
<title>Create Table</title>
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
        <div class="card" style="max-width: 319px;">
            <div class="card-body">
                <label for="txtName" class="form-label mt-4">Escribir el nombre de la tabla a crear:</label>
                <input runat="server" type="text" class="form-control" id="txtName" />

                <label for="txtColumns" class="form-label mt-4">Escribir las columnas que desea agregar:</label>
                <input runat="server" type="text" class="form-control" id="txtColumns" />

                <div class="row mt-4">
                    <button runat="server" id="btnCreateTable" class="btn btn-primary" onserverclick="btnCreateTable_ServerClick">Create Table</button>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
