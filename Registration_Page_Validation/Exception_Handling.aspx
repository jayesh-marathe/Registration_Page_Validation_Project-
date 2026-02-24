<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Exception_Handling.aspx.cs" Inherits="Registration_Page_Validation.Exception_Handling" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Button ID="btn1" runat="server" Text="Load Data (Connected)" OnClick="btn1_Click" />
<br /><br />

<asp:Button ID="btn2" runat="server" Text="Load Data (Disconnected)" OnClick="btn2_Click" />
<br /><br />

<asp:GridView ID="gv" runat="server"></asp:GridView>
<br />

<asp:Label ID="lbl" runat="server" ForeColor="Red"></asp:Label>
        <div>
        </div>
    </form>
</body>
</html>
