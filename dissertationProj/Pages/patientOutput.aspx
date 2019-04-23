<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind    ="patientOutput.aspx.cs" Inherits="dissertationProj.Pages.patientOutput" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


    <h1 class="text-center">Input New Patient</h1>        
        <%-- The code below is the tabs at the top --%>
        <ul class="nav nav-tabs">
  <li class="active"><a href="#medicalInfo" data-toggle="tab" aria-expanded="false">Medical Information</a></li>
  <li class=""><a href="#preexistingRiskFactors" data-toggle="tab" aria-expanded="true">Pre-existing risk factors</a></li>
  <li class=""><a href="#obstetricRiskFactors" data-toggle="tab" aria-expanded="true">Obstetric risk factors</a></li>
  <li class=""><a href="#transientRiskFactors" data-toggle="tab" aria-expanded="true">Transient risk factors</a></li>
        </ul>

        <%-- The line of code below declares the info thats stored within the tabs --%>
<div id="myTabContent" class="tab-content">
        
        <%--Each tab-pane is the exact info for each of the tabs  --%>
  <div class="tab-pane fade active in" id="medicalInfo">

      <div class="panel panel-success">


          
      <%--------------------------------------
          Inserting General Patient Data
      --------------------------------------%>

          
  <div class="panel-body">
  <div class="form-group">

     <%-- First Name--%>
      <label for="outputFirstName" class="col-lg-2 control-label">First Name</label>
      <div class="col-lg-10">
          <asp:TextBox  class="form-control" ID="outputFirstName" runat="server" placeholder="First Name"></asp:TextBox>
          <br />
      </div>
    <%--Middle Name--%>
     <label for="outputMiddleName" class="col-lg-2 control-label">Middle Name</label>
      <div class="col-lg-10">
          <asp:TextBox  class="form-control" ID="outputMiddleName" runat="server" placeholder="Middle Name"></asp:TextBox>
          <br />
      </div>
    <%--Last Name--%>
     <label for="outputLastName" class="col-lg-2 control-label">Last Name</label>
      <div class="col-lg-10">
          <asp:TextBox  class="form-control" ID="outputLastName" runat="server" placeholder="Last Name"></asp:TextBox>
          <br />
      </div>
        <%--Gender--%>
     <label for="outputGender" class="col-lg-2 control-label">Select Gender</label>
     
          <asp:DropDownList class="form-control" ID="outputGender" runat="server">
              <asp:ListItem Text="Select Gender" Selected="True" Value="0">Select Gender</asp:ListItem>
              <asp:ListItem Text="Male" Value="1">Male</asp:ListItem>
              <asp:ListItem Text="Female" Value="2">Female</asp:ListItem>
              <asp:ListItem Text="Other" Value="3">Other</asp:ListItem>
          </asp:DropDownList>
          <br />
      </div>
      <%--Civil Status--%>       
      <label for="outputCivilStatus" class="control-label">Select Civil Status</label>

            <asp:DropDownList class="form-control" ID="outputCivilStatus" runat="server">
              <asp:ListItem Text="Select Civil Status" Selected="True" Value="0">Select Civil Status</asp:ListItem>
              <asp:ListItem Text="Single" Value="Single">Single</asp:ListItem>
              <asp:ListItem Text="Married" Value="Married">Married</asp:ListItem>
              <asp:ListItem Text="Seperated" Value="Seperated">Seperated</asp:ListItem>
              <asp:ListItem Text="Divorced" Value="Divorced">Divorced</asp:ListItem>
          </asp:DropDownList>
           <br />
            
        <%--Birthdate--%>
        <label for="outputBirthDate" class="col-lg-2 control-label">Birthdate</label>
      
    
        &nbsp&nbsp&nbsp&nbsp
            <asp:DropDownList id="drpCalMonth" Runat="Server" OnSelectedIndexChanged="Set_Calendar" AutoPostBack="true"></asp:DropDownList>
            <asp:DropDownList id="drpCalYear" Runat="Server" OnSelectedIndexChanged="Set_Calendar" AutoPostBack="true"></asp:DropDownList>
                 
      <div class="col-lg-10">
         <asp:Calendar id="outputBirthDate" Runat="Server" Width="283px" Height="247px" BackColor="White" BorderColor="#999999" CellPadding="4" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" >
             <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" />
             <NextPrevStyle VerticalAlign="Bottom" />
             <OtherMonthDayStyle ForeColor="#808080" />
             <SelectedDayStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
             <SelectorStyle BackColor="#CCCCCC" />
             <TitleStyle BackColor="#999999" BorderColor="Black" Font-Bold="True" />
             <TodayDayStyle BackColor="#CCCCCC" ForeColor="Black" />
             <WeekendDayStyle BackColor="#FFFFCC" />
          </asp:Calendar>
          <br />
      </div>
         <%--Weight--%>
     <label for="outputWeight" class="col-lg-2 control-label">Weight (Kg)</label>
      <div class="col-lg-10">
          <asp:TextBox  class="form-control" ID="outputWeight" runat="server" placeholder="Weight (Kilograms)"></asp:TextBox>
          <br />
      </div>
         <%--Height--%>
     <label for="outputHeight" class="col-lg-2 control-label">Height (Cm)</label>
      <div class="col-lg-10">
          <asp:TextBox  class="form-control" ID="outputHeight" runat="server" placeholder="Height (Centimeters)"></asp:TextBox>
          <br />
      </div>    
      <%--Date Of Admission--%>
     <label for="outputDateOfAdmission" class="col-lg-2 control-label">Date of Admission</label>

     <br />
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<asp:DropDownList id="drpCalMonth2" Runat="Server" OnSelectedIndexChanged="Set_Calendar2" AutoPostBack="true"></asp:DropDownList>
            <asp:DropDownList id="drpCalYear2" Runat="Server" OnSelectedIndexChanged="Set_Calendar2" AutoPostBack="true"></asp:DropDownList>
                 
      <div class="col-lg-10">
         <asp:Calendar id="outputDateOfAdmission" Runat="Server" Width="283px" Height="247px" BackColor="White" BorderColor="#999999" CellPadding="4" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" >
             <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" />
             <NextPrevStyle VerticalAlign="Bottom" />
             <OtherMonthDayStyle ForeColor="#808080" />
             <SelectedDayStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
             <SelectorStyle BackColor="#CCCCCC" />
             <TitleStyle BackColor="#999999" BorderColor="Black" Font-Bold="True" />
             <TodayDayStyle BackColor="#CCCCCC" ForeColor="Black" />
             <WeekendDayStyle BackColor="#FFFFCC" />
          </asp:Calendar>
          <br />
      </div>
        
    </div>    
  </div>
   

  </div>
    <%----------------------------------------------------------------------------------------------------%>
  <div class="tab-pane fade" id="preexistingRiskFactors">

<div class="panel panel-success">
          <%--------------------------------------
          Inserting Pre-existing risk factors
      --------------------------------------%>
  <div class="panel-body">

      <table style="width:100%; "  id="patientoutputTableOne">
        <tbody>

            <tr>
                <!--Parity-->
                <td><label class="control-label">Parity</label></td>
                <td><asp:TextBox  class="form-control" ID="outputParity" runat="server" placeholder="Parity"></asp:TextBox></td>
                               
            </tr>

            
            <tr>
                <!--previousVTE-->
                <td><label class="control-label">Previous VTE</label></td>
                <td><asp:RadioButtonList class="form-check-input" ID="outputPreviousVTE" runat="server">
              <asp:ListItem Value="1">Yes</asp:ListItem>
              <asp:ListItem Value="0" Selected="True">No</asp:ListItem>
          </asp:RadioButtonList></td>
                <!--surgeryVTE-->
                <td><label class=" control-label">Surgery Caused VTE</label></td>
                <td><asp:RadioButtonList class="form-check-input" ID="outputSurgeryVTE" runat="server">
              <asp:ListItem Value="1">Yes</asp:ListItem>
              <asp:ListItem Value="0" Selected="True">No</asp:ListItem>
          </asp:RadioButtonList></td>
            </tr>
            <tr>
                <!--highRiskThrombophilia-->
                <td><label class="control-label">High Risk Thrombophilia</label></td>
                <td><asp:RadioButtonList class="form-check-input" ID="outputHighRiskThrombophilia" runat="server">
              <asp:ListItem Value="1">Yes</asp:ListItem>
              <asp:ListItem Value="0" Selected="True">No</asp:ListItem>
          </asp:RadioButtonList></td>
                <!--cancer-->
                <td><label class=" control-label">Cancer</label></td>
                <td><asp:RadioButtonList class="form-check-input" ID="outputCancer" runat="server">
              <asp:ListItem Value="1">Yes</asp:ListItem>
              <asp:ListItem Value="0" Selected="True">No</asp:ListItem>
          </asp:RadioButtonList></td>
            </tr>
            <tr>
                <!--heartFailure-->
                <td><label class="control-label">Heart Failure</label></td>
                <td><asp:RadioButtonList class="form-check-input" ID="outputHeartFailure" runat="server">
              <asp:ListItem Value="1">Yes</asp:ListItem>
              <asp:ListItem Value="0" Selected="True">No</asp:ListItem>
          </asp:RadioButtonList></td>
                <!--activeSystemicLupusErythematosus-->
                <td><label class="control-label">Active Systemic Lupus Erythematosus</label></td>
                <td><asp:RadioButtonList class="form-check-input" ID="outputActiveSystemicLupusErythematosus" runat="server">
              <asp:ListItem Value="1">Yes</asp:ListItem>
              <asp:ListItem Value="0" Selected="True">No</asp:ListItem>
          </asp:RadioButtonList></td>
            </tr>
            <tr>
                <!--inflammatoryPolyarthropathy-->
                <td><label class="control-label">Inflammatory Polyarthropathy</label></td>
                <td><asp:RadioButtonList class="form-check-input" ID="outputInflammatoryPolyarthropathy" runat="server">
              <asp:ListItem Value="1">Yes</asp:ListItem>
              <asp:ListItem Value="0" Selected="True">No</asp:ListItem>
          </asp:RadioButtonList></td>
                <!--inflammatoryBowelDisease-->
                <td><label class="control-label">Inflammatory Bowel Disease</label></td>
                <td><asp:RadioButtonList class="form-check-input" ID="outputInflammatoryBowelDisease" runat="server">
              <asp:ListItem Value="1">Yes</asp:ListItem>
              <asp:ListItem Value="0" Selected="True">No</asp:ListItem>
          </asp:RadioButtonList></td>
            </tr>
            <tr>
                <!--nephroticSyndrome-->
                <td><label class="control-label">Nephrotic Syndrome</label></td>
                <td><asp:RadioButtonList class="form-check-input" ID="outputNephroticSyndrome" runat="server">
              <asp:ListItem Value="1">Yes</asp:ListItem>
              <asp:ListItem Value="0" Selected="True">No</asp:ListItem>
          </asp:RadioButtonList></td>
                <!--typeIDiabetesMellitusWithNephropathy-->
                <td><label class="control-label">Type I Diabetes Mellitus With Nephropathy</label></td>
                <td><asp:RadioButtonList class="form-check-input" ID="outputTypeIDiabetesMellitusWithNephropathy" runat="server">
              <asp:ListItem Value="1">Yes</asp:ListItem>
              <asp:ListItem Value="0" Selected="True">No</asp:ListItem>
          </asp:RadioButtonList></td>
            </tr>
            <tr>
                <!--sickleCellDisease-->
                <td><label class="control-label">Sickle Cell Disease</label></td>
                <td><asp:RadioButtonList class="form-check-input" ID="outputSickleCellDisease" runat="server">
              <asp:ListItem Value="1">Yes</asp:ListItem>
              <asp:ListItem Value="0" Selected="True">No</asp:ListItem>
          </asp:RadioButtonList></td>
                <!--currentIntravenousDrugUser-->
                <td><label class="control-label">Current Intravenous Drug User</label></td>
                <td><asp:RadioButtonList class="form-check-input" ID="outputCurrentIntravenousDrugUser" runat="server">
              <asp:ListItem Value="1">Yes</asp:ListItem>
              <asp:ListItem Value="0" Selected="True">No</asp:ListItem>
          </asp:RadioButtonList></td>
            </tr>
            <tr>
                <!--familyHistoryVTEFirstDegreeRelative-->
                <td><label class="control-label">Family History of VTE , First Degree Relative</label></td>
                <td><asp:RadioButtonList class="form-check-input" ID="outputFamilyHistoryVTEFirstDegreeRelative" runat="server">
              <asp:ListItem Value="1">Yes</asp:ListItem>
              <asp:ListItem Value="0" Selected="True">No</asp:ListItem>
          </asp:RadioButtonList></td>
                <!--lowRiskThrombophilia-->
                <td><label class="control-label">Low Risk Thrombophilia</label></td>
                <td><asp:RadioButtonList class="form-check-input" ID="outputLowRiskThrombophilia" runat="server">
              <asp:ListItem Value="1">Yes</asp:ListItem>
              <asp:ListItem Value="0" Selected="True">No</asp:ListItem>
          </asp:RadioButtonList></td>
            </tr>
            <tr>
                <!--smoker-->
                <td><label class="control-label">Smoker</label></td>
                <td><asp:RadioButtonList class="form-check-input" ID="outputSmoker" runat="server">
              <asp:ListItem Value="1">Yes</asp:ListItem>
              <asp:ListItem Value="0" Selected="True">No</asp:ListItem>
          </asp:RadioButtonList></td>
                <!--grossVaricoseVeins-->
                <td><label class="control-label">Gross Varicose Veins</label></td>
                <td><asp:RadioButtonList class="form-check-input" ID="outputGrossVaricoseVeins" runat="server">
              <asp:ListItem Value="1">Yes</asp:ListItem>
              <asp:ListItem Value="0" Selected="True">No</asp:ListItem>
          </asp:RadioButtonList></td>
            </tr>
            
        </tbody>
    </table>
            
       </div>
    </div> 

      </div>
    <%----------------------------------------------------------------------------------------------------%>
  <div class="tab-pane fade" id="obstetricRiskFactors">

<div class="panel panel-success">
     <%--------------------------------------
          Inserting Obstetric risk factors
      --------------------------------------%>
  <div class="panel-body">

      <table style="width:100%;" id="patientoutputTableTwo">
          <tbody>
            <tr>
                <!--preEclampsiaInCurrentPregnancy-->
                <td><label class="control-label">Pre Eclampsia In Current Pregnancy</label></td>
                <td><asp:RadioButtonList class="form-check-input" ID="outputPreEclampsiaInCurrentPregnancy" runat="server">
              <asp:ListItem Value="1">Yes</asp:ListItem>
              <asp:ListItem Value="0" Selected="True">No</asp:ListItem>
          </asp:RadioButtonList></td>
                <!--ARTorIVF-->
                <td><label class="control-label">ART or IVF</label></td>
                <td><asp:RadioButtonList class="form-check-input" ID="outputARTorIVF" runat="server">
              <asp:ListItem Value="1">Yes</asp:ListItem>
              <asp:ListItem Value="0" Selected="True">No</asp:ListItem>
          </asp:RadioButtonList></td>
            </tr>
              <tr>
               <!--multiplePregnancy-->
                <td><label class="control-label">Multiple Pregnancy</label></td>
                <td><asp:RadioButtonList class="form-check-input" ID="outputMultiplePregnancy" runat="server">
              <asp:ListItem Value="1">Yes</asp:ListItem>
              <asp:ListItem Value="0" Selected="True">No</asp:ListItem>
          </asp:RadioButtonList></td>
                  <!--caesareanSectionInLabour-->
                <td><label class="control-label">Caesarean Section In Labour</label></td>
                <td><asp:RadioButtonList class="form-check-input" ID="outputCaesareanSectionInLabour" runat="server">
              <asp:ListItem Value="1">Yes</asp:ListItem>
              <asp:ListItem Value="0" Selected="True">No</asp:ListItem>
          </asp:RadioButtonList></td>
            </tr>
            <tr>
                <!--electiveCaesareanSection-->
                <td><label class="control-label">Elective Caesarean Section</label></td>
                <td><asp:RadioButtonList class="form-check-input" ID="outputElectiveCaesareanSection" runat="server">
              <asp:ListItem Value="1">Yes</asp:ListItem>
              <asp:ListItem Value="0" Selected="True">No</asp:ListItem>
          </asp:RadioButtonList></td>
                <!--operativeDelivery-->
                <td> <label class="control-label">Operative Delivery</label></td>
                <td><asp:RadioButtonList class="form-check-input" ID="outputOperativeDelivery" runat="server">
              <asp:ListItem Value="1">Yes</asp:ListItem>
              <asp:ListItem Value="0" Selected="True">No</asp:ListItem>
          </asp:RadioButtonList></td>
            </tr>
            <tr>
                <!--prolongedLabour-->
                <td><label class="control-label">Prolonged Labour</label></td>
                <td><asp:RadioButtonList class="form-check-input" ID="outputProlongedLabour" runat="server">
              <asp:ListItem Value="1">Yes</asp:ListItem>
              <asp:ListItem Value="0" Selected="True">No</asp:ListItem>
          </asp:RadioButtonList></td>
                <!--PPH-->
                <td><label class="control-label">PPH</label></td>
                <td><asp:RadioButtonList class="form-check-input" ID="outputPPH" runat="server">
              <asp:ListItem Value="1">Yes</asp:ListItem>
              <asp:ListItem Value="0" Selected="True">No</asp:ListItem>
          </asp:RadioButtonList></td>
            </tr>
            <tr>
                <!--pretermBirth-->
                <td><label class="control-label">Preterm Birth</label></td>
                <td><asp:RadioButtonList class="form-check-input" ID="outputPretermBirth" runat="server">
              <asp:ListItem Value="1">Yes</asp:ListItem>
              <asp:ListItem Value="0" Selected="True">No</asp:ListItem>
          </asp:RadioButtonList></td>
                <!--stillBirth-->
                <td><label class="control-label">Still Birth</label></td>
                <td><asp:RadioButtonList class="form-check-input" ID="outputStillBirth" runat="server">
              <asp:ListItem Value="1">Yes</asp:ListItem>
              <asp:ListItem Value="0" Selected="True">No</asp:ListItem>
          </asp:RadioButtonList></td>
            </tr>
            
            
        </tbody>
    </table> 



  </div>
    </div> 
        
    </div>
    <%----------------------------------------------------------------------------------------------------%>
  <div class="tab-pane fade" id="transientRiskFactors">

<div class="panel panel-success">
    <%--------------------------------------
          Inserting Transient risk factors
      --------------------------------------%>
  <div class="panel-body">

      <table style="width:100%;" id="patientoutputTableThree">
          <tbody>
            <tr>
                <!--surgicalProcedure-->
                <td><label class="control-label">Surgical Procedure</label></td>
                <td><asp:RadioButtonList class="form-check-input" ID="outputSurgicalProcedure" runat="server">
              <asp:ListItem Value="1">Yes</asp:ListItem>
              <asp:ListItem Value="0" Selected="True">No</asp:ListItem>
          </asp:RadioButtonList></td>
                 <!--Hyperemesis-->
                <td><label class="control-label">Hyperemesis</label></td>
                <td><asp:RadioButtonList class="form-check-input" ID="outputHyperemesis" runat="server">
              <asp:ListItem Value="1">Yes</asp:ListItem>
              <asp:ListItem Value="0" Selected="True">No</asp:ListItem>
          </asp:RadioButtonList></td>
            </tr>
              <tr>
                  <!--OHSS-->
                <td><label class="control-label">OHSS</label></td>
                <td><asp:RadioButtonList class="form-check-input" ID="outputOHSS" runat="server">
              <asp:ListItem Value="1">Yes</asp:ListItem>
              <asp:ListItem Value="0" Selected="True">No</asp:ListItem>
          </asp:RadioButtonList></td>
                  <!--currentSystemicInfection-->
                <td><label class="control-label">Current Systemic Infection</label></td>
                <td><asp:RadioButtonList class="form-check-input" ID="outputCurrentSystemicInfection" runat="server">
              <asp:ListItem Value="1">Yes</asp:ListItem>
              <asp:ListItem Value="0" Selected="True">No</asp:ListItem>
          </asp:RadioButtonList></td>
            </tr>
              <tr>
                  <!--immobilityOrDehydration-->
                <td><label class="control-label">Immobility Or Dehydration</label></td>
                <td><asp:RadioButtonList class="form-check-input" ID="outputImmobilityOrDehydration" runat="server">
              <asp:ListItem Value="1">Yes</asp:ListItem>
              <asp:ListItem Value="0" Selected="True">No</asp:ListItem>
          </asp:RadioButtonList></td>
            </tr>
            
        </tbody>
    </table>

  </div>
    </div>  
        </div>

        </div>

      <p class="lead" style="text-align: center">
        <button type="reset" class="btn btn-success">Cancel</button>
          <asp:Button ID="formSubmitBtn" class="btn btn-success" runat="server"  autopostback="false"  Text="Save Patient Changes" />
          <hr />
          <asp:Image ID="patientQRCode" width="100px" height="100px" runat="server" Visible="false"/>
          <br /><br />

          </p>
    <asp:HiddenField runat="server" ID="patientIdHidden" />
    <script>
        $(document).ready(function () {
            var patientId = $('#<%= patientIdHidden.ClientID %>').val();

            $.ajax({
                type: "GET",
                url: "/api/patients/GetPatient",
                data: { patientId: patientId },
                success: function (data) {
                    //alert("succeeded");

                    alert(JSON.stringify(data));

                    $('#MainContent_outputPatientId').html(data.patient.patientId);
                    if (data.patient.patientId != "") {
                        patientId = data.patientId;
                    }
                    /**********************************************************************/
                    $('#MainContent_outputFirstName').val(data.patient.firstName);


                    $('#MainContent_outputMiddleName').html(data.patient.middleName);
                    $('#MainContent_outputLastName').val(data.patient.lastName);
                    $('#MainContent_outputGender').val(data.patient.gender);
                    $('#MainContent_outputBirthdate').html(data.patient.birthdate);
                    $('#MainContent_outputWeight').val(data.patient.weight);
                    $('#MainContent_outputHeight').val(data.patient.height);
                    $('#MainContent_outputCivilStatus').val(data.patient.civilStatus);
                    $('#MainContent_outputDateOfAdmission').val(data.patient.dateOfAdmission);
                    /**********************************************************************/
                    $('#MainContent_outputParity').html(data.patient.parity);
                    RadionButtonSelectedValueSet('MainContent_outputPreviousVTE', data.patient.previousVTE);
                    RadionButtonSelectedValueSet('MainContent_outputSurgeryVTE', data.patient.surgeryVTE);
                    RadionButtonSelectedValueSet('MainContent_outputHighRiskThrombophilia', data.patient.highRiskThrombophilia);
                    RadionButtonSelectedValueSet('MainContent_outputCancer', data.patient.cancer);
                    RadionButtonSelectedValueSet('MainContent_outputHeartFailure', data.patient.heartFailure);
                    RadionButtonSelectedValueSet('MainContent_outputActiveSystemicLupusErythematosus', data.patient.activeSystemicLupusErythematosus);
                    RadionButtonSelectedValueSet('MainContent_outputInflammatoryPolyarthropathy', data.patient.inflammatoryPolyarthropathy);
                    RadionButtonSelectedValueSet('MainContent_outputInflammatoryBowelDisease', data.patient.inflammatoryBowelDisease);
                    RadionButtonSelectedValueSet('MainContent_outputNephroticSyndrome', data.patient.nephroticSyndrome);
                    RadionButtonSelectedValueSet('MainContent_outputTypeIDiabetesMellitusWithNephropathy', data.patient.typeIDiabetesMellitusWithNephropathy);
                    RadionButtonSelectedValueSet('MainContent_outputSickleCellDisease', data.patient.sickleCellDisease);
                    RadionButtonSelectedValueSet('MainContent_outputCurrentIntravenousDrugUser', data.patient.currentIntravenousDrugUser);
                    RadionButtonSelectedValueSet('MainContent_outputFamilyHistoryVTEFirstDegreeRelative', data.patient.familyHistoryVTEFirstDegreeRelative);
                    RadionButtonSelectedValueSet('MainContent_outputLowRiskThrombophilia', data.patient.lowRiskThrombophilia);
                    RadionButtonSelectedValueSet('MainContent_outputSmoker', data.patient.smoker);
                    RadionButtonSelectedValueSet('MainContent_outputGrossVaricoseVeins', data.patient.grossVaricoseVeins);
                    /**********************************************************************/
                    RadionButtonSelectedValueSet('MainContent_outputPreEclampsiaInCurrentPregnancy', data.patient.MainContent_outputPreEclampsiaInCurrentPregnancy);
                    RadionButtonSelectedValueSet('MainContent_outputARTorIVF', data.patient.ARTorIVF);
                    RadionButtonSelectedValueSet('MainContent_outputMultiplePregnancy', data.patient.multiplePregnancy);
                    RadionButtonSelectedValueSet('MainContent_outputCaesareanSectionInLabour', data.patient.caesareanSectionInLabour);
                    RadionButtonSelectedValueSet('MainContent_outputElectiveCaesareanSection', data.patient.electiveCaesareanSection);
                    RadionButtonSelectedValueSet('MainContent_outputOperativeDelivery', data.patient.operativeDelivery);
                    RadionButtonSelectedValueSet('MainContent_outputProlongedLabour', data.patient.prolongedLabour);
                    RadionButtonSelectedValueSet('MainContent_outputPPH', data.patient.PPH);
                    RadionButtonSelectedValueSet('MainContent_outputPretermBirth', data.patient.pretermBirth);
                    RadionButtonSelectedValueSet('MainContent_outputStillBirth', data.patient.stillBirth);
                    /**********************************************************************/
                    RadionButtonSelectedValueSet('MainContent_outputSurgicalProcedure', data.patient.surgicalProcedure);
                    RadionButtonSelectedValueSet('MainContent_outputHyperemesis', data.patient.Hyperemesis);
                    RadionButtonSelectedValueSet('MainContent_outputOHSS', data.patient.OHSS);
                    RadionButtonSelectedValueSet('MainContent_outputCurrentSystemicInfection', data.patient.currentSystemicInfection);
                    RadionButtonSelectedValueSet('MainContent_outputImmobilityOrDehydration', data.patient.immobilityOrDehydration);
                    /**********************************************************************/


                    var imageContainer = $('#patientQRCode');
                    if (data.images != null) {
                        data.images.forEach(function (image) {
                            imageContainer.append('<p><img src="' + image.filePath + '"/></p><br/>')
                        });
                    }
                },
                error: function (data) {
                    // alert('error: '+JSON.stringify(data));
                },
            });

            function RadionButtonSelectedValueSet(name, boolValue) {

                var selectedInt = 0;
                if (boolValue == true) {
                    selectedInt = 1;
                }

                $('input[name="' + name + '"][value="' + selectedInt + '"]').prop('Selected', true);
            };

        });
            </script>
</asp:Content>
