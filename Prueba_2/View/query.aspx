<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="query.aspx.cs" Inherits="Prueba_2.View.query" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<link rel="stylesheet"
    
    href="https://cdnjs.cloudflare.com/ajax/libs/bootswatch/5.3.1/lux/bootstrap.min.css" />
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
<title>Query</title>
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
            <div class="col-sm-10">
                <label for="txtName" class="form-label mt-4">Escribir el nombre de la tabla que desea modificar:</label>
                <input runat="server" type="text" class="form-control" id="txtName" />

                <label for="txtQuery" class="form-label mt-4">Escribir el query que desea ejecutar: </label>
                <input runat="server" type="text" class="form-control" id="txtQuery" />
                
            </div>
                                <div>
    <div class="row">
        <button runat="server" id="btnVerifQuery" class="btn btn-primary" onserverclick="btnVerifQuery_ServerClick">Aplicar query</button>
    </div>
</div>
            
        </div>
    </form>
</body>
</html>
