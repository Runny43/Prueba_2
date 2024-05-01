<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="deleteTable.aspx.cs" Inherits="Prueba_2.View.deleteTable" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet"
    
    href="https://cdnjs.cloudflare.com/ajax/libs/bootswatch/5.3.1/lux/bootstrap.min.css" />
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
<title>Delete Table</title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="row" style="margin-top: 20px; display: flex; justify-content: center; align-items: center;">

    <table class="table table-hover">
        <thead>
            <tr>
                <th scope="col">Table_Name</th>
                
            </tr>
        </thead>
        <tbody>
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
            <fieldset>

    <div class="row">
        
        <div class="col-sm-10">
            <label for="txtDelete" class="form-label mt-4">Escriba el nombre de la tabla que desee eliminar:</label>
            <input runat="server" type="text" class="form-control" id="txtDelete" />
        </div>
    </div>
</fieldset>
            <div>
    <div class="row">
        <button runat="server" id="btnDeleteTable" class="btn btn-primary" onserverclick="btnDeleteTable_ServerClick">Drop Table</button>
    </div>
</div>
            </div>
    </form>
</body>
</html>
