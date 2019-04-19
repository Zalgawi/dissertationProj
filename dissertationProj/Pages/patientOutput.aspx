<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind    ="patientOutput.aspx.cs" Inherits="dissertationProj.Pages.patientOutput" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

   <%-- <div class="jumbotron">

        <br />
        <br />
        <asp:Label class="label label-default" ID="outputlikeORdislike" runat="server"></asp:Label>
        <div id="outputTitleContainer" class="text-center"><asp:Label class="label label-default" ID="outputTitle" runat="server" style="font-size: xx-large"></asp:Label></div>
        <br />
        <div id="outputUserIdContainer" class="text-center"><asp:Label class="label label-default" ID="outputId" runat="server" style="font-size: x-large"></asp:Label></div>
        <br />
</div>--%>

    <div class="jumbotron">
        <hr class="my-4">
        <div id="outputRiskAssessmentScoreContainer" class="text-center"><asp:Label class="label label-default" ID="outputRiskAssessmentScore" runat="server" style="font-size: x-small"></asp:Label></div>
</div>

    <asp:HiddenField runat="server" ID="patientIdHidden" />
    <script>
 $(document).ready(function () {
            var postId = $('#<%= patientIdHidden.ClientID %>').val();
            
            $.ajax({
                type: "GET",
                url: "/api/patients/GetPatient",
                data: { id: patientId },
                success: function (data) {
                    //alert("succeeded");
                    $('#MainContent_outputRiskAssessmentScore').html(data.riskAssessmentScore);                    

                    
                },
                error: function (data) {
                    // alert('error: '+JSON.stringify(data));
                },
            });
    </script>


</asp:Content>
