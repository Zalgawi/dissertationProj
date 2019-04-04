<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Scanner.aspx.cs" Inherits="dissertationProj.Pages.Scanner" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="jumbotron">
        <h1 class="text-center">Lookup a Patient</h1>
        <hr />
        <p class="lead" style="text-align: center">Enter the patient ID to display the appropriate data.</p>
        <p class="lead" style="text-align: center"><input class="form-control form-control-lg" style="display:block; margin: 0 auto;" type="text" placeholder="Input patient's ID" id="patientIdInput"></p>
        <p class="lead" style="text-align: center"><a href="/Pages/patientOutput" class="btn btn-primary">Look up &raquo;</a></p>
        <hr />
        <p class="lead" style="text-align: center"><a class="btn btn-primary btn-sm">Scan QR Code</a></p>

    </div>
</asp:Content>
