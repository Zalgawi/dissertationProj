<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="PatientInput.aspx.cs" Inherits="dissertationProj.Pages.PatientInput" %>
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
      <label for="inputFirstName" class="col-lg-2 control-label">First Name</label>
      <div class="col-lg-10">
          <asp:TextBox  class="form-control" ID="inputFirstName" runat="server" placeholder="First Name"></asp:TextBox>
          <br />
      </div>
    <%--Middle Name--%>
     <label for="inputMiddleName" class="col-lg-2 control-label">Middle Name</label>
      <div class="col-lg-10">
          <asp:TextBox  class="form-control" ID="inputMiddleName" runat="server" placeholder="Middle Name"></asp:TextBox>
          <br />
      </div>
    <%--Last Name--%>
     <label for="inputLastName" class="col-lg-2 control-label">Last Name</label>
      <div class="col-lg-10">
          <asp:TextBox  class="form-control" ID="inputLastName" runat="server" placeholder="Last Name"></asp:TextBox>
          <br />
      </div>
        <%--Gender--%>
     <label for="inputGender" class="col-lg-2 control-label">Select Gender</label>
      <div class="col-lg-10">
          <asp:DropDownList class="form-control" ID="inputGender" runat="server">
              <asp:ListItem Text="Select Gender" Value="0">Select Gender</asp:ListItem>
              <asp:ListItem Text="Male" Value="1">Male</asp:ListItem>
              <asp:ListItem Text="Female" Value="2">Female</asp:ListItem>
              <asp:ListItem Text="Other" Value="3">Other</asp:ListItem>
          </asp:DropDownList>
          <br />
      </div>
            
        <%--Birthdate--%>
        <label for="inputBirthDate" class="col-lg-2 control-label">Birthdate</label>
      <div class="col-lg-10">
          <asp:TextBox  class="form-control" ID="inputBirthDate" runat="server" placeholder="dd/mm/yyyy" TextMode="DateTime"></asp:TextBox>
          <br />
      </div>
         <%--Weight--%>
     <label for="inputWeight" class="col-lg-2 control-label">Weight (Kg)</label>
      <div class="col-lg-10">
          <asp:TextBox  class="form-control" ID="inputWeight" runat="server" placeholder="Weight (Kilograms)"></asp:TextBox>
          <br />
      </div>
         <%--Height--%>
     <label for="inputHeight" class="col-lg-2 control-label">Height (Cm)</label>
      <div class="col-lg-10">
          <asp:TextBox  class="form-control" ID="inputHeight" runat="server" placeholder="Height (Centimeters)"></asp:TextBox>
          <br />
      </div>    
      <%--Date Of Admission--%>
     <label for="inputDateOfAdmission" class="col-lg-2 control-label">Date of Admission</label>
      <div class="col-lg-10">
          <asp:TextBox  class="form-control" ID="inputDateOfAdmission" runat="server" placeholder="dd/mm/yyyy" TextMode="DateTime"></asp:TextBox>
          <br />
      </div>    
        
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

      <table style="width:100%; "  id="patientInputTableOne">
        <tbody>

            <tr>
                <!--Parity-->
                <td><label class="control-label">Parity</label></td>
                <td><asp:TextBox  class="form-control" ID="inputParity" runat="server" placeholder="Parity"></asp:TextBox></td>
                <%--Civil Status--%>
                <td><label class="control-label">Select Civil Status</label></td>
                <td><asp:DropDownList class="form-control" ID="inputCivilStatus" runat="server">
              <asp:ListItem Text="Select Civil Status" Value="0">Select Civil Status</asp:ListItem>
              <asp:ListItem Text="Single" Value="Single">Single</asp:ListItem>
              <asp:ListItem Text="Married" Value="Married">Married</asp:ListItem>
              <asp:ListItem Text="Seperated" Value="Seperated">Seperated</asp:ListItem>
              <asp:ListItem Text="Divorced" Value="Divorced">Divorced</asp:ListItem>
          </asp:DropDownList></td>
                
            </tr>

            
            <tr>
                <!--previousVTE-->
                <td><label class="control-label">Previous VTE</label></td>
                <td><asp:RadioButtonList class="form-check-input" ID="inputPreviousVTE" runat="server">
              <asp:ListItem Value="1">Yes</asp:ListItem>
              <asp:ListItem Value="0">No</asp:ListItem>
          </asp:RadioButtonList></td>
                <!--surgeryVTE-->
                <td><label class=" control-label">Surgery Caused VTE</label></td>
                <td><asp:RadioButtonList class="form-check-input" ID="inputSurgeryVTE" runat="server">
              <asp:ListItem Value="1">Yes</asp:ListItem>
              <asp:ListItem Value="0">No</asp:ListItem>
          </asp:RadioButtonList></td>
            </tr>
            <tr>
                <!--highRiskThrombophilia-->
                <td><label class="control-label">High Risk Thrombophilia</label></td>
                <td><asp:RadioButtonList class="form-check-input" ID="inputHighRiskThrombophilia" runat="server">
              <asp:ListItem Value="1">Yes</asp:ListItem>
              <asp:ListItem Value="0">No</asp:ListItem>
          </asp:RadioButtonList></td>
                <!--cancer-->
                <td><label class=" control-label">Cancer</label></td>
                <td><asp:RadioButtonList class="form-check-input" ID="inputCancer" runat="server">
              <asp:ListItem Value="1">Yes</asp:ListItem>
              <asp:ListItem Value="0">No</asp:ListItem>
          </asp:RadioButtonList></td>
            </tr>
            <tr>
                <!--heartFailure-->
                <td><label class="control-label">Heart Failure</label></td>
                <td><asp:RadioButtonList class="form-check-input" ID="inputHeartFailure" runat="server">
              <asp:ListItem Value="1">Yes</asp:ListItem>
              <asp:ListItem Value="0">No</asp:ListItem>
          </asp:RadioButtonList></td>
                <!--activeSystemicLupusErythematosus-->
                <td><label class="control-label">Active Systemic Lupus Erythematosus</label></td>
                <td><asp:RadioButtonList class="form-check-input" ID="inputActiveSystemicLupusErythematosus" runat="server">
              <asp:ListItem Value="1">Yes</asp:ListItem>
              <asp:ListItem Value="0">No</asp:ListItem>
          </asp:RadioButtonList></td>
            </tr>
            <tr>
                <!--inflammatoryPolyarthropathy-->
                <td><label class="control-label">Inflammatory Polyarthropathy</label></td>
                <td><asp:RadioButtonList class="form-check-input" ID="inputInflammatoryPolyarthropathy" runat="server">
              <asp:ListItem Value="1">Yes</asp:ListItem>
              <asp:ListItem Value="0">No</asp:ListItem>
          </asp:RadioButtonList></td>
                <!--inflammatoryBowelDisease-->
                <td><label class="control-label">Inflammatory Bowel Disease</label></td>
                <td><asp:RadioButtonList class="form-check-input" ID="inputInflammatoryBowelDisease" runat="server">
              <asp:ListItem Value="1">Yes</asp:ListItem>
              <asp:ListItem Value="0">No</asp:ListItem>
          </asp:RadioButtonList></td>
            </tr>
            <tr>
                <!--nephroticSyndrome-->
                <td><label class="control-label">Nephrotic Syndrome</label></td>
                <td><asp:RadioButtonList class="form-check-input" ID="inputNephroticSyndrome" runat="server">
              <asp:ListItem Value="1">Yes</asp:ListItem>
              <asp:ListItem Value="0">No</asp:ListItem>
          </asp:RadioButtonList></td>
                <!--typeIDiabetesMellitusWithNephropathy-->
                <td><label class="control-label">Type I Diabetes Mellitus With Nephropathy</label></td>
                <td><asp:RadioButtonList class="form-check-input" ID="inputTypeIDiabetesMellitusWithNephropathy" runat="server">
              <asp:ListItem Value="1">Yes</asp:ListItem>
              <asp:ListItem Value="0">No</asp:ListItem>
          </asp:RadioButtonList></td>
            </tr>
            <tr>
                <!--sickleCellDisease-->
                <td><label class="control-label">Sickle Cell Disease</label></td>
                <td><asp:RadioButtonList class="form-check-input" ID="inputSickleCellDisease" runat="server">
              <asp:ListItem Value="1">Yes</asp:ListItem>
              <asp:ListItem Value="0">No</asp:ListItem>
          </asp:RadioButtonList></td>
                <!--currentIntravenousDrugUser-->
                <td><label class="control-label">Current Intravenous Drug User</label></td>
                <td><asp:RadioButtonList class="form-check-input" ID="inputCurrentIntravenousDrugUser" runat="server">
              <asp:ListItem Value="1">Yes</asp:ListItem>
              <asp:ListItem Value="0">No</asp:ListItem>
          </asp:RadioButtonList></td>
            </tr>
            <tr>
                <!--familyHistoryVTEFirstDegreeRelative-->
                <td><label class="control-label">Family History of VTE , First Degree Relative</label></td>
                <td><asp:RadioButtonList class="form-check-input" ID="inputFamilyHistoryVTEFirstDegreeRelative" runat="server">
              <asp:ListItem Value="1">Yes</asp:ListItem>
              <asp:ListItem Value="0">No</asp:ListItem>
          </asp:RadioButtonList></td>
                <!--lowRiskThrombophilia-->
                <td><label class="control-label">Low Risk Thrombophilia</label></td>
                <td><asp:RadioButtonList class="form-check-input" ID="inputLowRiskThrombophilia" runat="server">
              <asp:ListItem Value="1">Yes</asp:ListItem>
              <asp:ListItem Value="0">No</asp:ListItem>
          </asp:RadioButtonList></td>
            </tr>
            <tr>
                <!--smoker-->
                <td><label class="control-label">Smoker</label></td>
                <td><asp:RadioButtonList class="form-check-input" ID="inputSmoker" runat="server">
              <asp:ListItem Value="1">Yes</asp:ListItem>
              <asp:ListItem Value="0">No</asp:ListItem>
          </asp:RadioButtonList></td>
                <!--grossVaricoseVeins-->
                <td><label class="control-label">Gross Varicose Veins</label></td>
                <td><asp:RadioButtonList class="form-check-input" ID="inputGrossVaricoseVeins" runat="server">
              <asp:ListItem Value="1">Yes</asp:ListItem>
              <asp:ListItem Value="0">No</asp:ListItem>
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

      <table style="width:100%;" id="patientInputTableTwo">
          <tbody>
            <tr>
                <!--preEclampsiaInCurrentPregnancy-->
                <td><label class="control-label">Pre Eclampsia In Current Pregnancy</label></td>
                <td><asp:RadioButtonList class="form-check-input" ID="inputPreEclampsiaInCurrentPregnancy" runat="server">
              <asp:ListItem Value="1">Yes</asp:ListItem>
              <asp:ListItem Value="0">No</asp:ListItem>
          </asp:RadioButtonList></td>
                <!--ARTorIVF-->
                <td><label class="control-label">ART or IVF</label></td>
                <td><asp:RadioButtonList class="form-check-input" ID="inputARTorIVF" runat="server">
              <asp:ListItem Value="1">Yes</asp:ListItem>
              <asp:ListItem Value="0">No</asp:ListItem>
          </asp:RadioButtonList></td>
            </tr>
              <tr>
               <!--multiplePregnancy-->
                <td><label class="control-label">Multiple Pregnancy</label></td>
                <td><asp:RadioButtonList class="form-check-input" ID="inputMultiplePregnancy" runat="server">
              <asp:ListItem Value="1">Yes</asp:ListItem>
              <asp:ListItem Value="0">No</asp:ListItem>
          </asp:RadioButtonList></td>
                  <!--caesareanSectionInLabour-->
                <td><label class="control-label">Caesarean Section In Labour</label></td>
                <td><asp:RadioButtonList class="form-check-input" ID="inputCaesareanSectionInLabour" runat="server">
              <asp:ListItem Value="1">Yes</asp:ListItem>
              <asp:ListItem Value="0">No</asp:ListItem>
          </asp:RadioButtonList></td>
            </tr>
            <tr>
                <!--electiveCaesareanSection-->
                <td><label class="control-label">Elective Caesarean Section</label></td>
                <td><asp:RadioButtonList class="form-check-input" ID="inputElectiveCaesareanSection" runat="server">
              <asp:ListItem Value="1">Yes</asp:ListItem>
              <asp:ListItem Value="0">No</asp:ListItem>
          </asp:RadioButtonList></td>
                <!--operativeDelivery-->
                <td> <label class="control-label">Operative Delivery</label></td>
                <td><asp:RadioButtonList class="form-check-input" ID="inputOperativeDelivery" runat="server">
              <asp:ListItem Value="1">Yes</asp:ListItem>
              <asp:ListItem Value="0">No</asp:ListItem>
          </asp:RadioButtonList></td>
            </tr>
            <tr>
                <!--prolongedLabour-->
                <td><label class="control-label">Prolonged Labour</label></td>
                <td><asp:RadioButtonList class="form-check-input" ID="inputProlongedLabour" runat="server">
              <asp:ListItem Value="1">Yes</asp:ListItem>
              <asp:ListItem Value="0">No</asp:ListItem>
          </asp:RadioButtonList></td>
                <!--PPH-->
                <td><label class="control-label">PPH</label></td>
                <td><asp:RadioButtonList class="form-check-input" ID="inputPPH" runat="server">
              <asp:ListItem Value="1">Yes</asp:ListItem>
              <asp:ListItem Value="0">No</asp:ListItem>
          </asp:RadioButtonList></td>
            </tr>
            <tr>
                <!--pretermBirth-->
                <td><label class="control-label">Preterm Birth</label></td>
                <td><asp:RadioButtonList class="form-check-input" ID="inputPretermBirth" runat="server">
              <asp:ListItem Value="1">Yes</asp:ListItem>
              <asp:ListItem Value="0">No</asp:ListItem>
          </asp:RadioButtonList></td>
                <!--stillBirth-->
                <td><label class="control-label">Still Birth</label></td>
                <td><asp:RadioButtonList class="form-check-input" ID="inputStillBirth" runat="server">
              <asp:ListItem Value="1">Yes</asp:ListItem>
              <asp:ListItem Value="0">No</asp:ListItem>
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

      <table style="width:100%;" id="patientInputTableThree">
          <tbody>
            <tr>
                <!--surgicalProcedure-->
                <td><label class="control-label">Surgical Procedure</label></td>
                <td><asp:RadioButtonList class="form-check-input" ID="inputSurgicalProcedure" runat="server">
              <asp:ListItem Value="1">Yes</asp:ListItem>
              <asp:ListItem Value="0">No</asp:ListItem>
          </asp:RadioButtonList></td>
                 <!--Hyperemesis-->
                <td><label class="control-label">Hyperemesis</label></td>
                <td><asp:RadioButtonList class="form-check-input" ID="inputHyperemesis" runat="server">
              <asp:ListItem Value="1">Yes</asp:ListItem>
              <asp:ListItem Value="0">No</asp:ListItem>
          </asp:RadioButtonList></td>
            </tr>
              <tr>
                  <!--OHSS-->
                <td><label class="control-label">OHSS</label></td>
                <td><asp:RadioButtonList class="form-check-input" ID="inputOHSS" runat="server">
              <asp:ListItem Value="1">Yes</asp:ListItem>
              <asp:ListItem Value="0">No</asp:ListItem>
          </asp:RadioButtonList></td>
                  <!--currentSystemicInfection-->
                <td><label class="control-label">Current Systemic Infection</label></td>
                <td><asp:RadioButtonList class="form-check-input" ID="inputCurrentSystemicInfection" runat="server">
              <asp:ListItem Value="1">Yes</asp:ListItem>
              <asp:ListItem Value="0">No</asp:ListItem>
          </asp:RadioButtonList></td>
            </tr>
              <tr>
                  <!--immobilityOrDehydration-->
                <td><label class="control-label">Immobility Or Dehydration</label></td>
                <td><asp:RadioButtonList class="form-check-input" ID="inputImmobilityOrDehydration" runat="server">
              <asp:ListItem Value="1">Yes</asp:ListItem>
              <asp:ListItem Value="0">No</asp:ListItem>
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
          <asp:Button ID="formSubmitBtn" class="btn btn-success" runat="server" autopostback="false" onclick="AddPatient" Text="Submit Patient" />
          <br />
          </p>

</asp:Content>
