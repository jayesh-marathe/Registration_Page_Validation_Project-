<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration_Page.aspx.cs" Inherits="Registration_Page_Validation.Registration_Page" %>

<!DOCTYPE html>
<html>
<head runat="server">
<title>Registration Form</title>


<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" />


<style>
        body {
            background: linear-gradient(135deg, #667eea, #764ba2);
            min-height: 100vh;
        }

        .registration-card {
            max-width: 650px;
            margin: auto;
            border-radius: 16px;
            animation: fadeIn 0.7s ease-in-out;
        }

        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(20px); }
            to { opacity: 1; transform: translateY(0); }
        }

        .card-header {
            border-radius: 16px 16px 0 0;
        }

        .form-control {
            border-radius: 10px;
            padding: 10px 14px;
            transition: all 0.3s ease;
        }

        .form-control:focus {
            box-shadow: 0 0 0 0.2rem rgba(102, 126, 234, 0.25);
            border-color: #667eea;
        }

        label {
            font-weight: 600;
        }

        .required {
            color: red;
        }

        .btn-success {
            border-radius: 30px;
            padding: 10px 40px;
            font-size: 16px;
            transition: all 0.3s ease;
        }

        .btn-success:hover {
            transform: scale(1.05);
        }

        .section-title {
            font-size: 14px;
            color: #6c757d;
            text-transform: uppercase;
            margin-top: 25px;
            margin-bottom: 10px;
            border-bottom: 1px dashed #ddd;
            padding-bottom: 5px;
        }
    </style>
</head>

<body>
<form id="form1" runat="server">

<div class="container py-5">
<div class="card registration-card shadow-lg">
<div class="card-header bg-primary text-white text-center">



<h3>User Registration</h3>
<small>Please fill all mandatory fields</small>
</div>



<div class="card-body px-4">
<div class="section-title">Personal Details</div>
<div class="mb-3">


<label>First Name <span class="required">*</span></label>
<asp:TextBox ID="txtFirstName" runat="server" CssClass="form-control" />
<asp:RequiredFieldValidator runat="server" ControlToValidate="txtFirstName" ErrorMessage="First Name required" CssClass="text-danger" />
</div>


<div class="mb-3">
<label>Last Name <span class="required">*</span></label>
<asp:TextBox ID="txtLastName" runat="server" CssClass="form-control" />
<asp:RequiredFieldValidator runat="server" ControlToValidate="txtLastName" ErrorMessage="Last Name required" CssClass="text-danger" />
</div>


<div class="mb-3">
<label>Date of Birth <span class="required">*</span></label>
<asp:TextBox ID="txtDOB" runat="server" TextMode="Date" CssClass="form-control" />
<asp:RequiredFieldValidator runat="server" ControlToValidate="txtDOB" ErrorMessage="DOB required" CssClass="text-danger" />
</div>


<div class="mb-3">
<label>Gender <span class="required">*</span></label>
<asp:RadioButtonList ID="rblGender" runat="server" RepeatDirection="Horizontal" CssClass="form-check">
<asp:ListItem Text=" Male" Value="Male"></asp:ListItem>
<asp:ListItem Text=" Female" Value="Female"></asp:ListItem>
</asp:RadioButtonList>
<asp:RequiredFieldValidator runat="server" ControlToValidate="rblGender" InitialValue="" ErrorMessage="Please select gender" CssClass="text-danger" />
</div>


<div class="mb-3">
<label>Address <span class="required">*</span></label>
<asp:TextBox ID="txtAddress" runat="server" TextMode="MultiLine" Rows="3" CssClass="form-control" />
<asp:RequiredFieldValidator runat="server" ControlToValidate="txtAddress" ErrorMessage="Address is required" CssClass="text-danger" Display="Dynamic" />
</div>


<div class="mb-3 form-check">
<asp:CheckBox ID="Checkpoint" runat="server" CssClass="form-check-input" AutoPostBack="true" OnCheckedChanged="Checked_change" />
<label class="form-check-label">Vaccinated</label>
</div>
<asp:Panel ID="pnlUpload" runat="server" Visible="false">
<div class="mb-3">
<label>Upload Certificate </label>
<asp:FileUpload ID="fuCertificate" runat="server" CssClass="form-control" />
</div>
</asp:Panel>


<div class="section-title">Contact Details</div>
<div class="mb-3">
<label>Contact Number <span class="required">*</span></label>
<div class="d-flex gap-2">
<div style="width:120px;">
<asp:TextBox ID="txtCountryCode" runat="server" CssClass="form-control" Placeholder="+91" />


<asp:RequiredFieldValidator runat="server" ControlToValidate="txtCountryCode" ErrorMessage="Country code required" CssClass="text-danger" Display="Dynamic"/>
<asp:RegularExpressionValidator runat="server" ControlToValidate="txtCountryCode" ValidationExpression="^\+[1-9]{1,3}$" ErrorMessage="Invalid country code" CssClass="text-danger" Display="Dynamic" />
</div>

<div class="flex-fill">
<asp:TextBox ID="txtMobile" runat="server" CssClass="form-control" Placeholder="9876543210" />
<asp:RequiredFieldValidator runat="server" ControlToValidate="txtMobile" ErrorMessage="Mobile number required" CssClass="text-danger" Display="Dynamic" />
<asp:RegularExpressionValidator runat="server" ControlToValidate="txtMobile" ValidationExpression="^[0-9]{10}$" ErrorMessage="Enter 10-digit mobile number" CssClass="text-danger" Display="Dynamic" />
</div>

</div>
</div>

<div class="mb-3">
<label>Email <span class="required">*</span></label>
<asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" />
<asp:RequiredFieldValidator runat="server" ControlToValidate="txtEmail" ErrorMessage="Email required" CssClass="text-danger" />
</div>

<div class="section-title">Security</div>

<div class="mb-3">
<label>Password <span class="required">*</span></label>
<asp:TextBox ID="txtPassword" runat="server" TextMode="Password" CssClass="form-control" />
<asp:RequiredFieldValidator runat="server" ControlToValidate="txtPassword" ErrorMessage="Password is required" CssClass="text-danger" Display="Dynamic" />
<asp:RegularExpressionValidator runat="server" ControlToValidate="txtPassword" CssClass="text-danger" Display="Dynamic" ErrorMessage="Password must be 8–16 characters, include uppercase, lowercase, number & special character, and contain no spaces." ValidationExpression="^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[!@#$%^&*])(?!.*\s).{8,16}$" />
<small class="text-muted">
Password must be 8–16 characters and include uppercase, lowercase, number, and special character.
</small>
</div>


<div class="mb-3">
<label>Confirm Password <span class="required">*</span></label>
<asp:TextBox ID="txtConfirmPassword" runat="server" TextMode="Password" CssClass="form-control" />
<asp:RequiredFieldValidator runat="server" ControlToValidate="txtConfirmPassword" ErrorMessage="Confirm password is required" CssClass="text-danger" Display="Dynamic" />
<asp:CompareValidator runat="server" ControlToValidate="txtConfirmPassword" ControlToCompare="txtPassword" ErrorMessage="Passwords do not match" CssClass="text-danger" Display="Dynamic" />
</div>

<div class="text-center mt-4">
<asp:Button ID="btnSubmit" runat="server" Text="Register" CssClass="btn btn-success" OnClick="btnSubmit_Click" CausesValidation="true" />
</div>

</div>
</div>
</div>

</form>
</body>
</html>





