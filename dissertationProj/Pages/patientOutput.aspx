<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind    ="patientOutput.aspx.cs" Inherits="dissertationProj.Pages.patientOutput" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


    <h1 class="text-center">Patient Records</h1>        
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

<style>
    td {
        padding: 5px;
        text-align: left;
        
    }
    
    .radioButtonList { list-style:none; margin: 0; padding: 0;}
    .radioButtonList.horizontal li { display: inline;}

    .radioButtonList label{
        display:inline;
    }
</style>
          
      <%--------------------------------------
          Inserting General Patient Data
      --------------------------------------%>

          
  <div class="panel-body" style="overflow:auto;">

      <table style="width:100%;"  id="patientOutputTable" border="0">
          <tbody>
              <tr>
                  <%-- First Name--%>
                  <td ><label class="control-label">First Name</label></td>
                  <td ><asp:TextBox  class="form-control" ID="outputFirstName" runat="server" placeholder="First Name"></asp:TextBox></td>
                  <%--Patients QR Code--%>
                  <td><label class="control-label">Patient QR Code</label></td>
                  <td style="text-align:center;"><asp:Image ID="patientQRCode" width="175px" height="175px" runat="server"/></td>
                  
              </tr>

              <tr>
                  <%--Middle Name--%>
                  <td><label class="control-label">Middle Name</label></td>
                  <td><asp:TextBox  class="form-control" ID="outputMiddleName" runat="server" placeholder="Middle Name"></asp:TextBox></td>
                  <%--VTE Score Output --%>
                  <td><label class="control-label">VTE Risk Score</label></td>
                  <td style="text-align: center;"><span  ID="outputVTEScore" style="font-size: large"></span></td>
                 
              </tr>
              <tr>
                  <td></td>
                  <td></td>
              </tr>
              <tr>
                  <%--Last Name--%>
                  <td><label class="control-label">Last Name</label></td>
                  <td><asp:TextBox  class="form-control" ID="outputLastName" runat="server" placeholder="Last Name"></asp:TextBox></td>
                  <%--VTE Score Treatment--%>
                  <td style="vertical-align:bottom;"><label class="control-label">VTE Risk Output</label></td>
                  <td style="text-align: left;"><span ID="outputVTEOutput"  style="font-size: medium"></span></td>
              </tr>
              <tr>
                  <%--Gender--%>
                  <td><label class="control-label">Select Gender</label></td>
                  <td><asp:DropDownList class="form-control" ID="outputGender" runat="server" Width="280px">
              <asp:ListItem Text="Select Gender" Selected="True" Value="0">Select Gender</asp:ListItem>
              <asp:ListItem Text="Male" Value="1">Male</asp:ListItem>
              <asp:ListItem Text="Female" Value="2">Female</asp:ListItem>
              <asp:ListItem Text="Other" Value="3">Other</asp:ListItem>
              </asp:DropDownList></td>

                  </tr>
              <tr>
                  <%--Civil Status--%>
                  <td><label class="control-label">Select Civil Status</label></td>
                  <td><asp:DropDownList class="form-control" ID="outputCivilStatus" runat="server" Width="280px">
              <asp:ListItem Text="Select Civil Status" Selected="True" Value="0">Select Civil Status</asp:ListItem>
              <asp:ListItem Text="Single" Value="Single">Single</asp:ListItem>
              <asp:ListItem Text="Married" Value="Married">Married</asp:ListItem>
              <asp:ListItem Text="Seperated" Value="Seperated">Seperated</asp:ListItem>
              <asp:ListItem Text="Divorced" Value="Divorced">Divorced</asp:ListItem>
          </asp:DropDownList></td>
                <!--Parity-->
                <td><label class="control-label">Amount of pregnancies had (Parity)</label></td>
                <td class="text-center" ><asp:TextBox  style="text-align: center;" class="form-control" ID="outputParity" runat="server" placeholder="Parity" Width="75px"></asp:TextBox></td>
              </tr>
              <tr>
                  <%--Weight--%>
                  <td><label class="control-label">Weight (Kg)</label></td>
                  <td><asp:TextBox  class="form-control" ID="outputWeight" runat="server" placeholder="Weight (Kilograms)"></asp:TextBox></td>
                  <%--Height--%>
                  <td><label class="control-label">Height (Cm)</label></td>
                  <td style="display:inline; text-align:center;"><asp:TextBox style="text-align: center;" class="form-control" ID="outputHeight" runat="server" placeholder="Height (Centimeters)" Width="75px"></asp:TextBox></td>
              </tr>
              <tr>
                  <td>&nbsp</td>
              </tr>
              <tr>
                  <%--Birthdate--%>
                  <td><label class="control-label">Birthdate</label></td>
                  <td style="text-align: center;"><span id="outputBirthdate"></span></td>
                  <%--Date Of Admission--%>
                  <td><label class="control-label">Date of Admission</label></td>
                  <td style="text-align: center;"><span id="outputDateOfAdmission"></span></td>
              </tr>
          </tbody>
      </table>        
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

      <table style="width:100%;"  id="patientOutputTableOne">
        <tbody>

                       
            <tr>
                <!--previousVTE-->
                <td><label class="control-label">Previous VTE (except a single event related to major surgery)</label></td>
                <td><asp:RadioButtonList class="radioButtonList" ID="outputPreviousVTE" runat="server" RepeatDirection="Horizontal">
              <asp:ListItem Value="1">Yes (+4)</asp:ListItem>
              <asp:ListItem Value="0" Selected="True">No (+0)</asp:ListItem>
          </asp:RadioButtonList></td>
                <!--surgeryVTE-->
                <td><label class=" control-label">Previous VTE provoked by major surgery </label></td>
                <td><asp:RadioButtonList class="radioButtonList" ID="outputSurgeryVTE" runat="server" RepeatDirection="Horizontal">
              <asp:ListItem Value="1">Yes (+3)</asp:ListItem>
              <asp:ListItem Value="0" Selected="True">No (+0)</asp:ListItem>
          </asp:RadioButtonList></td>
            </tr>
            <tr>
                <!--highRiskThrombophilia-->
                <td><label class="control-label">High Risk Thrombophilia</label></td>
                <td><asp:RadioButtonList class="radioButtonList" ID="outputHighRiskThrombophilia" runat="server" RepeatDirection="Horizontal">
              <asp:ListItem Value="1">Yes (+3)</asp:ListItem>
              <asp:ListItem Value="0" Selected="True">No (+0)</asp:ListItem>
          </asp:RadioButtonList></td>
                <!--Medical comorbidities-->
                <td><label class="control-label">Medical Comorbidities</label></td>
                <td><asp:RadioButtonList class="radioButtonList" ID="outputMedicalComorbidities" runat="server" RepeatDirection="Horizontal">
              <asp:ListItem Value="1">Yes (+3)</asp:ListItem>
              <asp:ListItem Value="0" Selected="True">No (+0)</asp:ListItem>
          </asp:RadioButtonList></td>
            </tr>

            <tr >
                <!--familyHistoryVTEFirstDegreeRelative-->
                <td><label class="control-label">Family history of unprovoked or estrogen-related VTE in first-degree relative </label></td>
                <td><asp:RadioButtonList class="radioButtonList" ID="outputFamilyHistoryVTEFirstDegreeRelative" runat="server" RepeatDirection="Horizontal">
              <asp:ListItem Value="1">Yes (+1)</asp:ListItem>
              <asp:ListItem Value="0" Selected="True">No (+0)</asp:ListItem>
          </asp:RadioButtonList></td>
                <!--lowRiskThrombophilia-->
                <td><label class="control-label">Known low-risk thrombophilia (no VTE)</label></td>
                <td><asp:RadioButtonList class="radioButtonList" ID="outputLowRiskThrombophilia" runat="server" RepeatDirection="Horizontal">
              <asp:ListItem Value="1">Yes (+1)</asp:ListItem>
              <asp:ListItem Value="0" Selected="True">No (+0)</asp:ListItem>
          </asp:RadioButtonList></td>
            </tr>
            <tr >
                <!--smoker-->
                <td><label class="control-label">Smoker</label></td>
                <td><asp:RadioButtonList class="radioButtonList" ID="outputSmoker" runat="server" RepeatDirection="Horizontal">
              <asp:ListItem Value="1">Yes (+1)</asp:ListItem>
              <asp:ListItem Value="0" Selected="True">No (+0)</asp:ListItem>
          </asp:RadioButtonList></td>
                <!--grossVaricoseVeins-->
                <td><label class="control-label">Gross Varicose Veins</label></td>
                <td><asp:RadioButtonList class="radioButtonList" ID="outputGrossVaricoseVeins" runat="server" RepeatDirection="Horizontal">
              <asp:ListItem Value="1">Yes (+1)</asp:ListItem>
              <asp:ListItem Value="0" Selected="True">No (+0)</asp:ListItem>
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

      <table style="width:100%;" id="patientOutputTableTwo">
          <tbody>
            <tr>
                <!--preEclampsiaInCurrentPregnancy-->
                <td><label class="control-label">Pre Eclampsia In Current Pregnancy</label></td>
                <td><asp:RadioButtonList class="radioButtonList" ID="outputPreEclampsiaInCurrentPregnancy" runat="server" RepeatDirection="Horizontal">
              <asp:ListItem Value="1">Yes (+1)</asp:ListItem>
              <asp:ListItem Value="0" Selected="True">No (+0)</asp:ListItem>
          </asp:RadioButtonList></td>
                <!--ARTorIVF-->
                <td><label class="control-label">ART or IVF (antenatal only)</label></td>
                <td><asp:RadioButtonList class="radioButtonList" ID="outputARTorIVF" runat="server" RepeatDirection="Horizontal">
              <asp:ListItem Value="1">Yes (+1)</asp:ListItem>
              <asp:ListItem Value="0" Selected="True">No (+0)</asp:ListItem>
          </asp:RadioButtonList></td>
            </tr>
              <tr>
               <!--multiplePregnancy-->
                <td><label class="control-label">Multiple Pregnancy</label></td>
                <td><asp:RadioButtonList class="radioButtonList" ID="outputMultiplePregnancy" runat="server" RepeatDirection="Horizontal">
              <asp:ListItem Value="1">Yes (+1)</asp:ListItem>
              <asp:ListItem Value="0" Selected="True">No (+0)</asp:ListItem>
          </asp:RadioButtonList></td>
                  <!--caesareanSectionInLabour-->
                <td><label class="control-label">Caesarean Section In Labour</label></td>
                <td><asp:RadioButtonList class="radioButtonList" ID="outputCaesareanSectionInLabour" runat="server" RepeatDirection="Horizontal">
              <asp:ListItem Value="1">Yes (+2)</asp:ListItem>
              <asp:ListItem Value="0" Selected="True">No (+0)</asp:ListItem>
          </asp:RadioButtonList></td>
            </tr>
            <tr>
                <!--electiveCaesareanSection-->
                <td><label class="control-label">Elective Caesarean Section</label></td>
                <td><asp:RadioButtonList class="radioButtonList" ID="outputElectiveCaesareanSection" runat="server" RepeatDirection="Horizontal">
              <asp:ListItem Value="1">Yes (+1)</asp:ListItem>
              <asp:ListItem Value="0" Selected="True">No (+0)</asp:ListItem>
          </asp:RadioButtonList></td>
                <!--operativeDelivery-->
                <td> <label class="control-label">Mid-cavity or rotational operative delivery</label></td>
                <td><asp:RadioButtonList class="radioButtonList" ID="outputOperativeDelivery" runat="server" RepeatDirection="Horizontal">
              <asp:ListItem Value="1">Yes (+1)</asp:ListItem>
              <asp:ListItem Value="0" Selected="True">No (+0)</asp:ListItem>
          </asp:RadioButtonList></td>
            </tr>
            <tr>
                <!--prolongedLabour-->
                <td><label class="control-label">Prolonged labour (> 24 hours)</label></td>
                <td><asp:RadioButtonList class="radioButtonList" ID="outputProlongedLabour" runat="server" RepeatDirection="Horizontal">
              <asp:ListItem Value="1">Yes (+1)</asp:ListItem>
              <asp:ListItem Value="0" Selected="True">No (+0)</asp:ListItem>
          </asp:RadioButtonList></td>
                <!--PPH-->
                <td><label class="control-label">PPH (> 1 litre or transfusion)</label></td>
                <td><asp:RadioButtonList class="radioButtonList" ID="outputPPH" runat="server" RepeatDirection="Horizontal">
              <asp:ListItem Value="1">Yes (+1)</asp:ListItem>
              <asp:ListItem Value="0" Selected="True">No (+0)</asp:ListItem>
          </asp:RadioButtonList></td>
            </tr>
            <tr>
                <!--pretermBirth-->
                <td><label class="control-label">Preterm birth < 37+0 weeks in current pregnancy</label></td>
                <td><asp:RadioButtonList class="radioButtonList" ID="outputPretermBirth" runat="server" RepeatDirection="Horizontal">
              <asp:ListItem Value="1">Yes (+1)</asp:ListItem>
              <asp:ListItem Value="0" Selected="True">No (+0)</asp:ListItem>
          </asp:RadioButtonList></td>
                <!--stillBirth-->
                <td><label class="control-label">Stillbirth in current pregnancy</label></td>
                <td><asp:RadioButtonList class="radioButtonList" ID="outputStillBirth" runat="server" RepeatDirection="Horizontal">
              <asp:ListItem Value="1">Yes (+1)</asp:ListItem>
              <asp:ListItem Value="0" Selected="True">No (+0)</asp:ListItem>
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

      <table style="width:100%;" id="patientOutputTableThree">
          <tbody>
            <tr>
                <!--surgicalProcedure-->
<td><label class="control-label">Any surgical procedure in pregnancy or puerperium except immediate repair of the
perineum, e.g. appendicectomy, postpartum sterilisation</label></td>
                <td><asp:RadioButtonList class="radioButtonList" ID="outputSurgicalProcedure" runat="server" RepeatDirection="Horizontal">
              <asp:ListItem Value="1">Yes (+3)</asp:ListItem>
              <asp:ListItem Value="0" Selected="True">No (+0)</asp:ListItem>
          </asp:RadioButtonList></td>
                 <!--Hyperemesis-->
                <td><label class="control-label">Hyperemesis</label></td>
                <td><asp:RadioButtonList class="radioButtonList" ID="outputHyperemesis" runat="server" RepeatDirection="Horizontal">
              <asp:ListItem Value="1">Yes (+3)</asp:ListItem>
              <asp:ListItem Value="0" Selected="True">No (+0)</asp:ListItem>
          </asp:RadioButtonList></td>
            </tr>
              <tr>
                  <!--OHSS-->
                <td><label class="control-label">OHSS</label></td>
                <td><asp:RadioButtonList class="radioButtonList" ID="outputOHSS" runat="server" RepeatDirection="Horizontal">
              <asp:ListItem Value="1">Yes (+4)</asp:ListItem>
              <asp:ListItem Value="0" Selected="True">No (+0)</asp:ListItem>
          </asp:RadioButtonList></td>
                  <!--currentSystemicInfection-->
                <td><label class="control-label">Current Systemic Infection</label></td>
                <td><asp:RadioButtonList class="radioButtonList" ID="outputCurrentSystemicInfection" runat="server" RepeatDirection="Horizontal">
              <asp:ListItem Value="1">Yes (+1)</asp:ListItem>
              <asp:ListItem Value="0" Selected="True">No (+0)</asp:ListItem>
          </asp:RadioButtonList></td>
            </tr>
              <tr>
                  <!--immobilityOrDehydration-->
                <td><label class="control-label">Immobility Or Dehydration</label></td>
                <td><asp:RadioButtonList class="radioButtonList" ID="outputImmobilityOrDehydration" runat="server" RepeatDirection="Horizontal">
              <asp:ListItem Value="1">Yes (+1)</asp:ListItem>
              <asp:ListItem Value="0" Selected="True">No (+0)</asp:ListItem>
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
          <asp:Button ID="formSubmitBtn" class="btn btn-success" runat="server" OnClick="Save_Patient"  autopostback="false"  Text="Save Patient Changes" />
          <hr />
          
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

                    

                    $('#MainContent_outputPatientId').html(data.patient.patientId);
                    if (data.patient.patientId != "") {
                       
                        patientId = data.patient.patientId;
                    }
                    /**********************************************************************/
                    

                    var vteSeverityClass = 'label-success';
                    var vteOutputMessage = '';

                    var riskAssesmentInt = data.patient.riskAssessmentScore;

                    

                    if(riskAssesmentInt > 0 && riskAssesmentInt < 2) {
                      
                        vteSeverityClass = 'label-info'
                    } else if(riskAssesmentInt == 2) {
                        vteSeverityClass = 'label-primary'
                        vteOutputMessage = 'Antenatally, consider thromboprophylaxis from the first trimester ';
                    } else if(riskAssesmentInt == 3) {
                        vteSeverityClass = 'label-warning'
                        vteOutputMessage = 'Antenatally, consider thromboprophylaxis from 28 weeks';
                    } else if(riskAssesmentInt >= 4) {
                        
                        vteSeverityClass = 'label-danger'
                        vteOutputMessage = 'Postnatally, consider thromboprophylaxis for at least 10 days.';
                        
                    }



                    $('#MainContent_outputFirstName').val(data.patient.firstName);
                    $('#outputVTEScore').html('<label class="label ' + vteSeverityClass + '">' + data.patient.riskAssessmentScore.toString() + '</label>');
                    $('#outputVTEOutput').html('<label class="label ' + vteSeverityClass + '">'+vteOutputMessage+'</label>');
                    
                    var dateAdmitted = new Date(data.patient.dateOfAdmission);
                    var birthdate = new Date(data.patient.birthdate);

                    $('#outputDateOfAdmission').html(dateAdmitted.toLocaleDateString());
                    $('#outputBirthdate').html(birthdate.toLocaleDateString() + '  <a href=#>edit</a>');

                    
                    $('#MainContent_outputMiddleName').val(data.patient.middleName);
                    $('#MainContent_outputLastName').val(data.patient.lastName);
                    $('#MainContent_outputGender').val(data.patient.gender);
                    
                    $('#MainContent_outputWeight').val(data.patient.weight);
                    $('#MainContent_outputHeight').val(data.patient.height);
                    $('#MainContent_outputCivilStatus').val(data.patient.civilStatus);
                    
                    /**********************************************************************/
                    $('#MainContent_outputParity').val(data.patient.noOfPregnancies.toString());
                    
                    

                    RadionButtonSelectedValueSet('outputPreviousVTE', data.patient.preExistingFactors.previousVTE.riskSelected);
                    RadionButtonSelectedValueSet('outputSurgeryVTE', data.patient.preExistingFactors.surgeryVTE.riskSelected);
                    RadionButtonSelectedValueSet('outputHighRiskThrombophilia', data.patient.preExistingFactors.highRiskThrombophilia.riskSelected);
                    RadionButtonSelectedValueSet('outputMedicalComorbidities', data.patient.preExistingFactors.medicalComorbities.riskSelected);
                    //RadionButtonSelectedValueSet('outputCancer', data.patient.preExistingFactors.cancer.riskSelected);
                    //RadionButtonSelectedValueSet('outputHeartFailure', data.patient.preExistingFactors.heartFailure.riskSelected);
                    //RadionButtonSelectedValueSet('outputActiveSystemicLupusErythematosus', data.patient.preExistingFactors.activeSystemicLupusErythematosus.riskSelected);
                    //RadionButtonSelectedValueSet('outputInflammatoryPolyarthropathy', data.patient.preExistingFactors.inflammatoryPolyarthropathy.riskSelected);
                    //RadionButtonSelectedValueSet('outputInflammatoryBowelDisease', data.patient.preExistingFactors.inflammatoryBowelDisease.riskSelected);
                    //RadionButtonSelectedValueSet('outputNephroticSyndrome', data.patient.preExistingFactors.nephroticSyndrome.riskSelected);
                    //RadionButtonSelectedValueSet('outputTypeIDiabetesMellitusWithNephropathy', data.patient.preExistingFactors.typeIDiabetesMellitusWithNephropathy.riskSelected);
                    //RadionButtonSelectedValueSet('outputSickleCellDisease', data.patient.preExistingFactors.sickleCellDisease.riskSelected);
                    //RadionButtonSelectedValueSet('outputCurrentIntravenousDrugUser', data.patient.preExistingFactors.currentIntravenousDrugUser.riskSelected);
                    RadionButtonSelectedValueSet('outputFamilyHistoryVTEFirstDegreeRelative', data.patient.preExistingFactors.familyHistoryVTEFirstDegreeRelative.riskSelected);
                    RadionButtonSelectedValueSet('outputLowRiskThrombophilia', data.patient.preExistingFactors.lowRiskThrombophilia.riskSelected);
                    RadionButtonSelectedValueSet('outputSmoker', data.patient.preExistingFactors.smoker.riskSelected);
                    RadionButtonSelectedValueSet('outputGrossVaricoseVeins', data.patient.preExistingFactors.grossVaricoseVeins.riskSelected);
                    /**********************************************************************/
                    RadionButtonSelectedValueSet('outputPreEclampsiaInCurrentPregnancy', data.patient.ObstetricFactors.preEclampsiaInCurrentPregnancy.riskSelected);
                    RadionButtonSelectedValueSet('outputARTorIVF', data.patient.ObstetricFactors.ARTorIVF.riskSelected);
                    RadionButtonSelectedValueSet('outputMultiplePregnancy', data.patient.ObstetricFactors.multiplePregnancy.riskSelected);
                    RadionButtonSelectedValueSet('outputCaesareanSectionInLabour', data.patient.ObstetricFactors.caesareanSectionInLabour.riskSelected);
                    RadionButtonSelectedValueSet('outputElectiveCaesareanSection', data.patient.ObstetricFactors.electiveCaesareanSection.riskSelected);
                    RadionButtonSelectedValueSet('outputOperativeDelivery', data.patient.ObstetricFactors.operativeDelivery.riskSelected);
                    RadionButtonSelectedValueSet('outputProlongedLabour', data.patient.ObstetricFactors.prolongedLabour.riskSelected);
                    RadionButtonSelectedValueSet('outputPPH', data.patient.ObstetricFactors.PPH.riskSelected);
                    RadionButtonSelectedValueSet('outputPretermBirth', data.patient.ObstetricFactors.pretermBirth.riskSelected);
                    RadionButtonSelectedValueSet('outputStillBirth', data.patient.ObstetricFactors.stillBirth.riskSelected);
                    /**********************************************************************/
                    RadionButtonSelectedValueSet('outputSurgicalProcedure', data.patient.TransientFactors.surgicalProcedure.riskSelected);
                    RadionButtonSelectedValueSet('outputHyperemesis', data.patient.TransientFactors.Hyperemesis.riskSelected);
                    RadionButtonSelectedValueSet('outputOHSS', data.patient.TransientFactors.OHSS.riskSelected);
                    RadionButtonSelectedValueSet('outputCurrentSystemicInfection', data.patient.TransientFactors.currentSystemicInfection.riskSelected);
                    RadionButtonSelectedValueSet('outputImmobilityOrDehydration', data.patient.TransientFactors.immobilityOrDehydration.riskSelected);
                    /**********************************************************************/


                    var imageContainer = $('#MainContent_patientQRCode');
                    
                    imageContainer.attr('src' ,'/images/' + patientId + '.jpg');
                    imageContainer.show();
                    
                },
                error: function (data) {
                    // alert('error: '+JSON.stringify(data));
                },
            });

           

        });

         function RadionButtonSelectedValueSet(name, boolValue) {
                
                var selectedInt = 0;
                if (boolValue == true) {
                    selectedInt = 1;
                }

                //$('#'+name+'[value="' + selectedInt + '"]').prop('Selected', true);
                $('[id*='+name+'] input[value='+selectedInt.toString()+']').attr('checked', 'checked');
         };
            </script>
</asp:Content>
