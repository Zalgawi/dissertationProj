    <%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Scanner.aspx.cs" Inherits="dissertationProj.Pages.Scanner" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
    <link href="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.min.css" rel="stylesheet" />
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
    <script src="../Scripts/WebForms/dataTables.responsive.min.js"></script>
    <script src="../Scripts/capture.js"></script>
    <link href="../Content/main.css" rel="stylesheet" />
    <script src="../Scripts/main.js"></script>
    <script src="https://webrtc.github.io/adapter/adapter-latest.js"></script>    
    <script async="" src="//www.google-analytics.com/analytics.js"></script>    
    <%--<meta charset="utf-8">
    <meta name="description" content="WebRTC code samples">
    <meta name="viewport" content="width=device-width, user-scalable=yes, initial-scale=1, maximum-scale=1">
    <meta itemprop="description" content="Client-side WebRTC code samples">
    <meta itemprop="image" content="../../../images/webrtc-icon-192x192.png">
    <meta itemprop="name" content="WebRTC code samples">
    <meta name="mobile-web-app-capable" content="yes">
    <meta id="theme-color" name="theme-color" content="#ffffff">
    <link rel="icon" sizes="192x192" href="../../../images/webrtc-icon-192x192.png">
    <link href="//fonts.googleapis.com/css?family=Roboto:300,400,500,700" rel="stylesheet" type="text/css">--%>

    <style>
        div.select {
            display: inline-block;
            margin: 0 0 1em 0;
        }

        p.small {
            font-size: 0.7em;
        }

        label {
            width: 12em;
            display: inline-block;
        }
    </style>

    <script>
const constraints = {
  video: true
};

const video = document.querySelector('video');

navigator.mediaDevices.getUserMedia(constraints).
  then((stream) => {video.srcObject = stream});
</script>


    <!-- Global site tag (gtag.js) - Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=UA-33848682-1"></script>
<script>
window.dataLayer = window.dataLayer || [];
function gtag() {
  window.dataLayer.push(arguments);
}
gtag('js', new Date());
    gtag('config', 'UA-33848682-1');
        
</script>


    
    <div class="jumbotron">
        <h1 class="text-center">Lookup a Patient</h1>
        <hr />
        <p class="lead" style="text-align: center">Enter the patient ID to display the appropriate data.</p>
        <p class="lead" style="text-align: center"><input class="form-control form-control-lg" style="display:block; margin: 0 auto;" type="text" placeholder="Input patient's ID" id="patientIdInput"></p>
        <p class="lead" style="text-align: center">
            <asp:Button ID="patientLookup" href="/Pages/patientOutput" runat="server" class="btn btn-success" Text="Look Up" />
            <hr />
            <p class="lead" style="text-align: center">
                <asp:Button ID="patientQRScanner" href="/Pages/PatientInput" runat="server" class="btn btn-success btn-sm" Text="Scan QR Code" OnClick="patientQRScanner_Click" /></p>
        <br />
        <br />

        <%--<div id="container">

  <div class="select">
    <label for="videoSource">Video source: </label>
      <select id="videoSource"></select>
  </div>

 <video id="video" playsinline autoplay></video>

  
</div>--%>
            <div style="text-align: center" class="select">
    <label for="videoSource">Video source: </label>
      <select id="videoSource"></select>
  </div>

        <div style="text-align: center" class="contentarea">
             
            <br />

             <div class="camera">
                <video id="video">Video stream not available.</video>
                <button id="startbutton">Take photo</button>
            </div>
            <br />
            <canvas id="canvas"></canvas>
            <div style="text-align: center" class="output">
                <img src="" id="photo" alt="The screen capture will appear in this box.">
            </div>
            
        </div>
        <%--                <p class="lead" style="text-align: center"><input class="btn btn-success btn-sm" type="file" accept="image/*" runat="server" capture="camera" /></p>--%>

        <p class="lead" style="text-align: center">
            <asp:Label ID="lblQRCode" runat="server"></asp:Label></p>


    </div>

    <div  class="jumbotron">

    <table class="display responsive no-wrap" style="width:100%" id="patientsTable">
        <thead>
            <tr>
                <th>Patient ID</th>                
                <th>Personnel Name</th>
                <th>Admission Date</th>
                <th>First Name</th>
                <th>Middle Name</th>
                <th>Last Name</th>
                <th>Risk Assessment Score</th>                
            </tr>
        </thead>
        <tbody>
        </tbody>
    </table>
  <br />
</div>

   

    <asp:HiddenField id="patientIdHidden" runat="server"/>
    <asp:HiddenField id="personnelIdHidden" runat="server"/>

    <script type="text/javascript">
        $(document).ready(function () {
            //alert("Feed page");
            $('#patientsTable').DataTable({
                responsive: true,
                ajax: {
                    url: "/api/patients/GetDataTables",
                    type: "GET",
                    dataType: "json",
                    dataSrc: ""
                },
                columns: [

                    {
                        render: function (data, type, row, meta) {
                            return '<a href="/Pages/PatientOutput?id=' + row.patient.patientId.toString() + '">' + row.patient.patientId + '</a>';
                        }
                    },
                    { render: function (data, type, row, meta) {
                            return row.personnel.firstName  +' '+ row.personnel.lastName;
                    }
                    },
                    {
                        render: function (data, type, row, meta) {
                            var dateOfAdmission = new Date(row.patient.dateOfAdmission);
                            return dateOfAdmission.toDateString();
                        }
                    },
                    { data: "patient.firstName" },
                    { data: "patient.middleName" },
                    { data: "patient.lastName" },
                    { data: "patient.riskAssessmentScore" },
                    
                ]
            });
        });
    </script>


</asp:Content>
