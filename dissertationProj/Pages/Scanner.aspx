    <%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Scanner.aspx.cs" Inherits="dissertationProj.Pages.Scanner" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
    <link href="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.min.css" rel="stylesheet" />
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
    <%--<script src="../Scripts/WebForms/dataTables.responsive.min.js"></script>--%>
    <script src="../Scripts/capture.js"></script>
    <link href="../Content/main.css" rel="stylesheet" />
    <script src="../Scripts/main.js"></script>
    <script src="https://webrtc.github.io/adapter/adapter-latest.js"></script>    
    <script async="" src="//www.google-analytics.com/analytics.js"></script>    
    

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
    <style>
        .jumbotron p {
    margin-bottom: 15px;
    font-size: 15px;
    font-weight: 200;
}
        .auto-style1 {
            color: inherit;
            height: 779px;
            margin-top: 20px;
            margin-bottom: 30px;
            padding-top: 48px;
            padding-bottom: 48px;
            background-color: #ecf0f1;
        }
    </style>


    
    <div class="auto-style1">
        <br />
        <h1 class="text-center">Lookup a Patient</h1>
        <p class="lead" style="text-align: center">Enter the patient ID to display the appropriate data.</p>
        <p class="lead" style="text-align: center"><input class="form-control form-control-lg" style="display:block; margin: 0 auto;" type="text" placeholder="Input patient's ID" id="patientIdInput"></p>
        <p class="lead" style="text-align: center">
            <asp:Button ID="patientLookup" href="/Pages/patientOutput" runat="server" clickBtn="" class="btn btn-success" Text="Look Up" /></p>
            <hr />
            

        <div id="container" style="text-align:center">

            <div style="text-align: center" class="select">
    <label for="videoSource">Video source: </label>
      <select id="videoSource"></select>
  </div>

             

             <div class="camera">
                <video id="video" autoplay>Video stream not available.</video>
                <button id="startbutton">Scan QR Code</button>
                 <span style="visibility:hidden" id="cameraRetakeError" class="label label-danger">The bar could not scan, please try again! (Get a clear picture)</span>
            </div>

            <div id="imgOutputContainer" style="visibility:hidden">
            <canvas id="canvas"></canvas>
          <div style="text-align: center" class="output">
                <img src="" id="photo" alt="The screen capture will appear in this box.">
            </div>
                </div>
     </div>
        </div>

    <div  class="jumbotron" style="overflow:scroll;">

    <table class="display nowrap"  id="patientsTable">
        <thead>
            <tr>
                <th>Patient ID</th>                
                <th>Personnel Name</th>
                <th>Admission Date</th>
                <th>First Name</th>
                <th>Middle Name</th>
                <th>Last Name</th>
                <th>Risk Assessment Score</th>
                <th>Last edited</th>

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
            $('#video').attr('playsinline', ''); 



            videoElement = document.querySelector('video');

            videoSelect = document.querySelector('select#videoSource');

            navigator.mediaDevices.enumerateDevices()
                .then(gotDevices).then(getStream).catch(handleError);


            videoSelect.onchange = getStream;


            $('#patientsTable').DataTable({
                
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
                    {
                        render: function (data, type, row, meta) {

                            if (row.patient.dateOfLastEdit == null || row.patient.lastEditedId == null) {
                                return 'Never';
                            } else {

                                var lastEditedDate = new Date(row.patient.dateOfLastEdit);

                                return '<p>'+lastEditedDate.toLocaleDateString()+'</p><p>by '+row.personnel.firstName+' '+row.personnel.lastName+'</p>'
                            }

                            var dateOfAdmission = new Date(row.patient.dateOfAdmission);
                            return dateOfAdmission.toDateString();
                        }
                    }
                    
                ]
            });
        });
    </script>


</asp:Content>
