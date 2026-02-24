<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GridView.aspx.cs" Inherits="Registration_Page_Validation.GridView" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>User Management</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" />

    <style>
        body {
            background: linear-gradient(135deg, #4e73df, #1cc88a);
            min-height: 100vh;
        }

        .card-custom {
            border-radius: 15px;
            box-shadow: 0px 10px 25px rgba(0,0,0,0.2);
        }

        .table thead {
            background-color: #4e73df;
            color: white;
        }

        .table tbody tr:hover {
            background-color: #f8f9fc;
            transition: 0.3s;
        }

        .btn-edit {
            background-color: #36b9cc;
            color: white;
        }

        .btn-delete {
            background-color: #e74a3b;
            color: white;
        }

        .btn-edit:hover {
            background-color: #2c9faf;
        }

        .btn-delete:hover {
            background-color: #c0392b;
        }
    </style>

</head>
<body>
<form id="form1" runat="server">
<div class="container py-5">
<div class="row justify-content-center">
<div class="col-lg-10">
<div class="card card-custom p-4">

<h3 class="text-center mb-4 text-primary"> User Registration Management</h3>
<div class="table-responsive">
<asp:GridView ID="gvUsers" runat="server" CssClass="table table-bordered table-hover text-center align-middle" AutoGenerateColumns="False" DataKeyNames="Id" OnRowEditing="gvUsers_RowEditing" OnRowUpdating="gvUsers_RowUpdating" OnRowCancelingEdit="gvUsers_RowCancelingEdit" OnRowDeleting="gvUsers_RowDeleting">
<Columns>
<asp:BoundField DataField="Id" HeaderText="ID" ReadOnly="True" />
<asp:BoundField DataField="FirstName" HeaderText="First Name" />
<asp:BoundField DataField="LastName" HeaderText="Last Name" />
<asp:BoundField DataField="Email" HeaderText="Email" />
<asp:BoundField DataField="Mobile" HeaderText="Mobile" />
<asp:CommandField ShowEditButton="True" ShowDeleteButton="True" ControlStyle-CssClass="btn btn-sm" EditText="Edit" DeleteText="Delete" />
</Columns>
</asp:GridView>
</div>
</div> </div>
</div>
</div>
</form>
</body>
</html>
