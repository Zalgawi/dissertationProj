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
      </div>
    <%--Middle Name--%>
     <label for="inputMiddleName" class="col-lg-2 control-label">Middle Name</label>
      <div class="col-lg-10">
          <asp:TextBox  class="form-control" ID="inputMiddleName" runat="server" placeholder="Middle Name"></asp:TextBox>
      </div>
    <%--Last Name--%>
     <label for="inputLastName" class="col-lg-2 control-label">Last Name</label>
      <div class="col-lg-10">
          <asp:TextBox  class="form-control" ID="inputLastName" runat="server" placeholder="Last Name"></asp:TextBox>
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
      </div>
            
        <%--Birthdate--%>
        <label for="inputBirthDate" class="col-lg-2 control-label">Birthdate</label>
      <div class="col-lg-10">
          <asp:TextBox  class="form-control" ID="inputBirthDate" runat="server" placeholder="dd/mm/yyyy" TextMode="DateTime"></asp:TextBox>
      </div>
         <%--Weight--%>
     <label for="inputWeight" class="col-lg-2 control-label">Weight (Kg)</label>
      <div class="col-lg-10">
          <asp:TextBox  class="form-control" ID="inputWeight" runat="server" placeholder="Weight (Kilograms)"></asp:TextBox>
      </div>
         <%--Height--%>
     <label for="inputHeight" class="col-lg-2 control-label">Height (Cm)</label>
      <div class="col-lg-10">
          <asp:TextBox  class="form-control" ID="inputHeight" runat="server" placeholder="Height (Centimeters)"></asp:TextBox>
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


      <!--Parity-->
      <div class="form-group">
          <label for="inputParity" class="col-lg-2 control-label">Parity</label>
           <div class="col-lg-10">
          <asp:TextBox  class="form-control" ID="inputParity" runat="server" placeholder="Parity"></asp:TextBox>
      </div>
      </div>  
       <%--Civil Status--%>
     <label for="inputCivilStatus" class="col-lg-2 control-label">Select Civil Status</label>
      <div class="col-lg-10">
          <asp:DropDownList class="form-control" ID="inputCivilStatus" runat="server">
              <asp:ListItem Text="Select Civil Status" Value="0">Select Civil Status</asp:ListItem>
              <asp:ListItem Text="Single" Value="Single">Single</asp:ListItem>
              <asp:ListItem Text="Married" Value="Married">Married</asp:ListItem>
              <asp:ListItem Text="Seperated" Value="Seperated">Seperated</asp:ListItem>
              <asp:ListItem Text="Divorced" Value="Divorced">Divorced</asp:ListItem>
          </asp:DropDownList>
      </div>
      <!--previousVTE-->
      <div class="form-group">
          <label for="inputPreviousVTE" class="col-lg-2 control-label">Previous VTE</label>
          <asp:RadioButtonList class="form-check-input" ID="inputPreviousVTE" runat="server">
              <asp:ListItem Value="1">Yes</asp:ListItem>
              <asp:ListItem Value="0">No</asp:ListItem>
          </asp:RadioButtonList>
      </div>  
      <!--surgeryVTE-->
      <div class="form-group">
          <label for="inputSurgeryVTE" class="col-lg-2 control-label">Surgery Caused VTE</label>
          <asp:RadioButtonList class="form-check-input" ID="inputSurgeryVTE" runat="server">
              <asp:ListItem Value="1">Yes</asp:ListItem>
              <asp:ListItem Value="0">No</asp:ListItem>
          </asp:RadioButtonList>
      </div>  
       <!--highRiskThrombophilia-->
      <div class="form-group">
          <label for="inputHighRiskThrombophilia" class="col-lg-2 control-label">High Risk Thrombophilia</label>
          <asp:RadioButtonList class="form-check-input" ID="inputHighRiskThrombophilia" runat="server">
              <asp:ListItem Value="1">Yes</asp:ListItem>
              <asp:ListItem Value="0">No</asp:ListItem>
          </asp:RadioButtonList>
      </div>  
       <!--cancer-->
      <div class="form-group">
          <label for="inputCancer" class="col-lg-2 control-label">Cancer</label>
          <asp:RadioButtonList class="form-check-input" ID="inputCancer" runat="server">
              <asp:ListItem Value="1">Yes</asp:ListItem>
              <asp:ListItem Value="0">No</asp:ListItem>
          </asp:RadioButtonList>
      </div>  
       <!--heartFailure-->
      <div class="form-group">
          <label for="inputHeartFailure" class="col-lg-2 control-label">Heart Failure</label>
          <asp:RadioButtonList class="form-check-input" ID="inputHeartFailure" runat="server">
              <asp:ListItem Value="1">Yes</asp:ListItem>
              <asp:ListItem Value="0">No</asp:ListItem>
          </asp:RadioButtonList>
      </div>  
      <!--activeSystemicLupusErythematosus-->
      <div class="form-group">
          <label for="inputActiveSystemicLupusErythematosus" class="col-lg-2 control-label">Active Systemic Lupus Erythematosus</label>
          <asp:RadioButtonList class="form-check-input" ID="inputActiveSystemicLupusErythematosus" runat="server">
              <asp:ListItem Value="1">Yes</asp:ListItem>
              <asp:ListItem Value="0">No</asp:ListItem>
          </asp:RadioButtonList>
      </div>  
      <!--inflammatoryPolyarthropathy-->
      <div class="form-group">
          <label for="inputInflammatoryPolyarthropathy" class="col-lg-2 control-label">Inflammatory Polyarthropathy</label>
          <asp:RadioButtonList class="form-check-input" ID="inputInflammatoryPolyarthropathy" runat="server">
              <asp:ListItem Value="1">Yes</asp:ListItem>
              <asp:ListItem Value="0">No</asp:ListItem>
          </asp:RadioButtonList>
      </div>  
      <!--inflammatoryBowelDisease-->
      <div class="form-group">
          <label for="inputInflammatoryBowelDisease" class="col-lg-2 control-label">Inflammatory Bowel Disease</label>
          <asp:RadioButtonList class="form-check-input" ID="inputInflammatoryBowelDisease" runat="server">
              <asp:ListItem Value="1">Yes</asp:ListItem>
              <asp:ListItem Value="0">No</asp:ListItem>
          </asp:RadioButtonList>
      </div>  
      <!--nephroticSyndrome-->
      <div class="form-group">
          <label for="inputNephroticSyndrome" class="col-lg-2 control-label">Nephrotic Syndrome</label>
          <asp:RadioButtonList class="form-check-input" ID="inputNephroticSyndrome" runat="server">
              <asp:ListItem Value="1">Yes</asp:ListItem>
              <asp:ListItem Value="0">No</asp:ListItem>
          </asp:RadioButtonList>
      </div>  
      <!--typeIDiabetesMellitusWithNephropathy-->
      <div class="form-group">
          <label for="inputTypeIDiabetesMellitusWithNephropathy" class="col-lg-2 control-label">Type I Diabetes Mellitus With Nephropathy</label>
          <asp:RadioButtonList class="form-check-input" ID="inputTypeIDiabetesMellitusWithNephropathy" runat="server">
              <asp:ListItem Value="1">Yes</asp:ListItem>
              <asp:ListItem Value="0">No</asp:ListItem>
          </asp:RadioButtonList>
      </div>  
      <!--sickleCellDisease-->
      <div class="form-group">
          <label for="inputSickleCellDisease" class="col-lg-2 control-label">Sickle Cell Disease</label>
          <asp:RadioButtonList class="form-check-input" ID="inputSickleCellDisease" runat="server">
              <asp:ListItem Value="1">Yes</asp:ListItem>
              <asp:ListItem Value="0">No</asp:ListItem>
          </asp:RadioButtonList>
      </div>  
      <!--currentIntravenousDrugUser-->
      <div class="form-group">
          <label for="inputCurrentIntravenousDrugUser" class="col-lg-2 control-label">Current Intravenous Drug User</label>
          <asp:RadioButtonList class="form-check-input" ID="inputCurrentIntravenousDrugUser" runat="server">
              <asp:ListItem Value="1">Yes</asp:ListItem>
              <asp:ListItem Value="0">No</asp:ListItem>
          </asp:RadioButtonList>
      </div>  
      <!--familyHistoryVTEFirstDegreeRelative-->
      <div class="form-group">
          <label for="inputFamilyHistoryVTEFirstDegreeRelative" class="col-lg-2 control-label">Family History of VTE , First Degree Relative</label>
          <asp:RadioButtonList class="form-check-input" ID="inputFamilyHistoryVTEFirstDegreeRelative" runat="server">
              <asp:ListItem Value="1">Yes</asp:ListItem>
              <asp:ListItem Value="0">No</asp:ListItem>
          </asp:RadioButtonList>
      </div> 
      <!--lowRiskThrombophilia-->
      <div class="form-group">
          <label for="inputLowRiskThrombophilia" class="col-lg-2 control-label">Low Risk Thrombophilia</label>
          <asp:RadioButtonList class="form-check-input" ID="inputLowRiskThrombophilia" runat="server">
              <asp:ListItem Value="1">Yes</asp:ListItem>
              <asp:ListItem Value="0">No</asp:ListItem>
          </asp:RadioButtonList>
      </div> 
      <!--smoker-->
      <div class="form-group">
          <label for="inputSmoker" class="col-lg-2 control-label">Smoker</label>
          <asp:RadioButtonList class="form-check-input" ID="inputSmoker" runat="server">
              <asp:ListItem Value="1">Yes</asp:ListItem>
              <asp:ListItem Value="0">No</asp:ListItem>
          </asp:RadioButtonList>
      </div> 
      <!--grossVaricoseVeins-->
      <div class="form-group">
          <label for="inputGrossVaricoseVeins" class="col-lg-2 control-label">Gross Varicose Veins</label>
          <asp:RadioButtonList class="form-check-input" ID="inputGrossVaricoseVeins" runat="server">
              <asp:ListItem Value="1">Yes</asp:ListItem>
              <asp:ListItem Value="0">No</asp:ListItem>
          </asp:RadioButtonList>
      </div> 
      
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
      <div class="form-group">
          <!--preEclampsiaInCurrentPregnancy-->
      <div class="form-group">
          <label for="inputPreEclampsiaInCurrentPregnancy" class="col-lg-2 control-label">Pre Eclampsia In Current Pregnancy</label>
          <asp:RadioButtonList class="form-check-input" ID="inputPreEclampsiaInCurrentPregnancy" runat="server">
              <asp:ListItem Value="1">Yes</asp:ListItem>
              <asp:ListItem Value="0">No</asp:ListItem>
          </asp:RadioButtonList>
      </div> 
      <!--ARTorIVF-->
      <div class="form-group">
          <label for="inputARTorIVF" class="col-lg-2 control-label">ART or IVF</label>
          <asp:RadioButtonList class="form-check-input" ID="inputARTorIVF" runat="server">
              <asp:ListItem Value="1">Yes</asp:ListItem>
              <asp:ListItem Value="0">No</asp:ListItem>
          </asp:RadioButtonList>
      </div> 
      <!--multiplePregnancy-->
      <div class="form-group">
          <label for="inputMultiplePregnancy" class="col-lg-2 control-label">Multiple Pregnancy</label>
          <asp:RadioButtonList class="form-check-input" ID="inputMultiplePregnancy" runat="server">
              <asp:ListItem Value="1">Yes</asp:ListItem>
              <asp:ListItem Value="0">No</asp:ListItem>
          </asp:RadioButtonList>
      </div> 
      <!--caesareanSectionInLabour-->
      <div class="form-group">
          <label for="inputCaesareanSectionInLabour" class="col-lg-2 control-label">Caesarean Section In Labour</label>
          <asp:RadioButtonList class="form-check-input" ID="inputCaesareanSectionInLabour" runat="server">
              <asp:ListItem Value="1">Yes</asp:ListItem>
              <asp:ListItem Value="0">No</asp:ListItem>
          </asp:RadioButtonList>
      </div> 
      <!--electiveCaesareanSection-->
      <div class="form-group">
          <label for="inputElectiveCaesareanSection" class="col-lg-2 control-label">Elective Caesarean Section</label>
          <asp:RadioButtonList class="form-check-input" ID="inputElectiveCaesareanSection" runat="server">
              <asp:ListItem Value="1">Yes</asp:ListItem>
              <asp:ListItem Value="0">No</asp:ListItem>
          </asp:RadioButtonList>
      </div> 
      <!--operativeDelivery-->
      <div class="form-group">
          <label for="inputOperativeDelivery" class="col-lg-2 control-label">Operative Delivery</label>
          <asp:RadioButtonList class="form-check-input" ID="inputOperativeDelivery" runat="server">
              <asp:ListItem Value="1">Yes</asp:ListItem>
              <asp:ListItem Value="0">No</asp:ListItem>
          </asp:RadioButtonList>
      </div> 
          <!--prolongedLabour-->
      <div class="form-group">
          <label for="inputProlongedLabour" class="col-lg-2 control-label">Prolonged Labour</label>
          <asp:RadioButtonList class="form-check-input" ID="inputProlongedLabour" runat="server">
              <asp:ListItem Value="1">Yes</asp:ListItem>
              <asp:ListItem Value="0">No</asp:ListItem>
          </asp:RadioButtonList>
      </div> 
          <!--PPH-->
      <div class="form-group">
          <label for="inputPPH" class="col-lg-2 control-label">PPH</label>
          <asp:RadioButtonList class="form-check-input" ID="inputPPH" runat="server">
              <asp:ListItem Value="1">Yes</asp:ListItem>
              <asp:ListItem Value="0">No</asp:ListItem>
          </asp:RadioButtonList>
      </div> 
          <!--pretermBirth-->
      <div class="form-group">
          <label for="inputPretermBirth" class="col-lg-2 control-label">Preterm Birth</label>
          <asp:RadioButtonList class="form-check-input" ID="inputPretermBirth" runat="server">
              <asp:ListItem Value="1">Yes</asp:ListItem>
              <asp:ListItem Value="0">No</asp:ListItem>
          </asp:RadioButtonList>
      </div> 
          <!--stillBirth-->
      <div class="form-group">
          <label for="inputStillBirth" class="col-lg-2 control-label">Still Birth</label>
          <asp:RadioButtonList class="form-check-input" ID="inputStillBirth" runat="server">
              <asp:ListItem Value="1">Yes</asp:ListItem>
              <asp:ListItem Value="0">No</asp:ListItem>
          </asp:RadioButtonList>
      </div> 

      </div>  
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
      <div class="form-group">
          <!--surgicalProcedure-->
      <div class="form-group">
          <label for="inputSurgicalProcedure" class="col-lg-2 control-label">Surgical Procedure</label>
          <asp:RadioButtonList class="form-check-input" ID="inputSurgicalProcedure" runat="server">
              <asp:ListItem Value="1">Yes</asp:ListItem>
              <asp:ListItem Value="0">No</asp:ListItem>
          </asp:RadioButtonList>
      </div> 
          <!--Hyperemesis-->
      <div class="form-group">
          <label for="inputHyperemesis" class="col-lg-2 control-label">Hyperemesis</label>
          <asp:RadioButtonList class="form-check-input" ID="inputHyperemesis" runat="server">
              <asp:ListItem Value="1">Yes</asp:ListItem>
              <asp:ListItem Value="0">No</asp:ListItem>
          </asp:RadioButtonList>
      </div> 
          <!--OHSS-->
      <div class="form-group">
          <label for="inputOHSS" class="col-lg-2 control-label">OHSS</label>
          <asp:RadioButtonList class="form-check-input" ID="inputOHSS" runat="server">
              <asp:ListItem Value="1">Yes</asp:ListItem>
              <asp:ListItem Value="0">No</asp:ListItem>
          </asp:RadioButtonList>
      </div> 
          <!--currentSystemicInfection-->
      <div class="form-group">
          <label for="inputCurrentSystemicInfection" class="col-lg-2 control-label">Current Systemic Infection</label>
          <asp:RadioButtonList class="form-check-input" ID="inputCurrentSystemicInfection" runat="server">
              <asp:ListItem Value="1">Yes</asp:ListItem>
              <asp:ListItem Value="0">No</asp:ListItem>
          </asp:RadioButtonList>
      </div> 
           <!--immobilityOrDehydration-->
      <div class="form-group">
          <label for="inputImmobilityOrDehydration" class="col-lg-2 control-label">Immobility Or Dehydration</label>
          <asp:RadioButtonList class="form-check-input" ID="inputImmobilityOrDehydration" runat="server">
              <asp:ListItem Value="1">Yes</asp:ListItem>
              <asp:ListItem Value="0">No</asp:ListItem>
          </asp:RadioButtonList>
      </div> 
      </div>  
  </div>
    </div>  
        </div>

        </div>

      <div class="col-lg-10 col-lg-offset-2">
        <button type="reset" class="btn btn-default">Cancel</button>
          <asp:Button ID="formSubmitBtn" class="btn btn-default" runat="server" autopostback="false" onclick="AddPatient" Text="Button" />
          <br />
      </div>


</asp:Content>
