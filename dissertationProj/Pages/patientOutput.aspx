<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="patientOutput.aspx.cs" Inherits="dissertationProj.Pages.patientOutput" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">

        <br />
        <br />
        <asp:Label class="label label-default" ID="outputlikeORdislike" runat="server"></asp:Label>
        <div id="outputTitleContainer" class="text-center"><asp:Label class="label label-default" ID="outputTitle" runat="server" style="font-size: xx-large"></asp:Label></div>
        <br />
        <div id="outputUserIdContainer" class="text-center"><asp:Label class="label label-default" ID="outputId" runat="server" style="font-size: x-large"></asp:Label></div>
        <br />
</div>

    <div class="jumbotron">
        <div id="outputBodyContainer" class="text-center"><asp:Label class="label label-default" ID="outputBody" runat="server" style="font-size: medium"></asp:Label></div>
        <hr class="my-4">
        <div id="outputCategoryContainer" class="text-center"><asp:Label class="label label-default" ID="outputCategory" runat="server" style="font-size: x-small"></asp:Label></div>
</div>
</asp:Content>
