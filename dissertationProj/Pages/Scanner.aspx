    <%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Scanner.aspx.cs" Inherits="dissertationProj.Pages.Scanner" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
    <link href="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.min.css" rel="stylesheet" />
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
    <div class="jumbotron">
        <h1 class="text-center">Lookup a Patient</h1>
        <hr />
        <p class="lead" style="text-align: center">Enter the patient ID to display the appropriate data.</p>
        <p class="lead" style="text-align: center"><input class="form-control form-control-lg" style="display:block; margin: 0 auto;" type="text" placeholder="Input patient's ID" id="patientIdInput"></p>
        <p class="lead" style="text-align: center"><asp:Button ID="patientLookup" href="/Pages/patientOutput" runat="server" class="btn btn-success" Text="Look Up" />
                  <hr />
                <p class="lead" style="text-align: center"><asp:Button ID="patientQRScanner" href="/Pages/PatientInput" runat="server" class="btn btn-success btn-sm" Text="Scan QR Code" OnClick="patientQRScanner_Click" /></p>
                <br /> <br />
                <p class="lead" style="text-align: center"><asp:Label ID="lblQRCode" runat="server"></asp:Label></p>
                

    </div>

    <div  class="jumbotron">

    <table class="display responsive no-wrap"" id="patientsTable">
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
                            return '<a href="/PatientDisplay?id=' + row.patient.patientId.toString() + '">' + row.patient.patientId + '</a>';
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
