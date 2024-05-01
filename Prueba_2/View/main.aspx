<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="main.aspx.cs" Inherits="Prueba_2.View.main" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="stylesheet"
        href="https://cdnjs.cloudflare.com/ajax/libs/bootswatch/5.3.1/lux/bootstrap.min.css" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
    <title>Options</title>
</head>
<body>
    <form id="form1" runat="server">
        <nav class="navbar navbar-expand-lg bg-primary" data-bs-theme="dark">
            <div class="container-fluid">
                <a class="navbar-brand" href="#">Navbar</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarColor01" aria-controls="navbarColor01" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarColor01">
                    <ul class="navbar-nav me-auto">
                        <li class="nav-item">
                            <a class="nav-link active" href="#">Home
            <span class="visually-hidden">(current)</span>
                            </a>

                        </li>
                        <li>
                            <a class="nav-link active" href="deleteTable.aspx">Delete Table
  <span class="visually-hidden">(current)</span>

                            </a>
                        </li>
                                              <li>
                          <a class="nav-link active" href="createTable.aspx">Create Table
<span class="visually-hidden">(current)</span>

                          </a>
                      </li>
                                                                      <li>
                          <a class="nav-link active" href="connection.aspx">Get Connection
<span class="visually-hidden">(current)</span>

                          </a>
                      </li>
                                                                                              <li>
                          <a class="nav-link active" href="query.aspx">Apply a query
<span class="visually-hidden">(current)</span>

                          </a>
                      </li>
                    </ul>
                </div>
            </div>
        </nav>
    </form>
</body>
</html>
