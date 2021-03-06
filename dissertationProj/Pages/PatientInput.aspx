﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="PatientInput.aspx.cs" Inherits="dissertationProj.Pages.PatientInput" %>
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
      <table style="width:100%;"  id="patientInputTable" border="0">
      <tbody>
              <tr>
                  <%-- First Name--%>
                  <td ><label class="control-label">First Name</label></td>
                  <td><asp:TextBox class="form-control" ID="inputFirstName" runat="server" placeholder="First Name"></asp:TextBox></td>
                  <%--Middle Name--%>
                  <td><label class="control-label">Middle Name</label></td>
                   <td><asp:TextBox class="form-control" ID="inputMiddleName" runat="server" placeholder="Middle Name"></asp:TextBox></td>
                  </tr>
              <tr>
                  <%--Last Name--%>
                  <td><label class="control-label">Last Name</label></td>
                  <td><asp:TextBox class="form-control" ID="inputLastName" runat="server" placeholder="Last Name"></asp:TextBox></td>
                  <%--Gender--%>
                  <td><label class="control-label">Select Gender</label></td>
                 <td><asp:DropDownList class="form-control" ID="inputGender" runat="server">
                      <asp:ListItem Text="Select Gender" Selected="True" Value="0">Select Gender</asp:ListItem>
                      <asp:ListItem Text="Male" Value="1">Male</asp:ListItem>
                      <asp:ListItem Text="Female" Value="2">Female</asp:ListItem>
                      <asp:ListItem Text="Other" Value="3">Other</asp:ListItem>
                  </asp:DropDownList></td>
                  </tr>
          <tr>
              <%--Weight--%>
                <td><label class="control-label">Weight (Kg)</label></td>
                <td><asp:TextBox class="form-control" ID="inputWeight" runat="server" placeholder="Weight (Kilograms)"></asp:TextBox></td>
              <%--Height--%>
              <td><label class="control-label">Height (Cm)</label></td>
              <td><asp:TextBox class="form-control" ID="inputHeight" runat="server" placeholder="Height (Centimeters)"></asp:TextBox></td>
          </tr>
            <tr>
                  <%--Civil Status--%>
                  <td><label class="control-label">Select Civil Status</label></td>
                  <td><asp:DropDownList class="form-control" ID="inputCivilStatus" runat="server">
                      <asp:ListItem Text="Select Civil Status" Selected="True" Value="0">Select Civil Status</asp:ListItem>
                      <asp:ListItem Text="Single" Value="Single">Single</asp:ListItem>
                      <asp:ListItem Text="Married" Value="Married">Married</asp:ListItem>
                      <asp:ListItem Text="Seperated" Value="Seperated">Seperated</asp:ListItem>
                      <asp:ListItem Text="Divorced" Value="Divorced">Divorced</asp:ListItem>
                  </asp:DropDownList></td>
                 <!--Parity-->
                <td><label class="control-label">Amount of pregnancies had (Parity)</label></td>
                <td class="text-center" ><asp:TextBox  style="text-align: center;" class="form-control" ID="inputParity" runat="server" placeholder="Parity" Width="75px"></asp:TextBox></td>
                </tr>
          <tr>
               <%--Birthdate--%>
              <td><label class="control-label">Birthdate</label></td>
              <td><asp:DropDownList ID="drpCalMonth" runat="Server" OnSelectedIndexChanged="Set_Calendar" AutoPostBack="true"></asp:DropDownList>
                  <asp:DropDownList ID="drpCalYear" runat="Server" OnSelectedIndexChanged="Set_Calendar" AutoPostBack="true"></asp:DropDownList>
                      <asp:Calendar ID="inputBirthDate" runat="Server" Width="283px" Height="247px" BackColor="White" BorderColor="#999999" CellPadding="4" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="Black">
                          <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" />
                          <NextPrevStyle VerticalAlign="Bottom" />
                          <OtherMonthDayStyle ForeColor="#808080" />
                          <SelectedDayStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
                          <SelectorStyle BackColor="#CCCCCC" />
                          <TitleStyle BackColor="#999999" BorderColor="Black" Font-Bold="True" />
                          <TodayDayStyle BackColor="#CCCCCC" ForeColor="Black" />
                          <WeekendDayStyle BackColor="#FFFFCC" />
                      </asp:Calendar> </td>
              <%--Date Of Admission--%>
              <td><label class="control-label">Date of Admission</label></td>
              <td><asp:DropDownList ID="drpCalMonth2" runat="Server" OnSelectedIndexChanged="Set_Calendar2" AutoPostBack="true"></asp:DropDownList>
                  <asp:DropDownList ID="drpCalYear2" runat="Server" OnSelectedIndexChanged="Set_Calendar2" AutoPostBack="true"></asp:DropDownList>
<asp:Calendar ID="inputDateOfAdmission" runat="Server" Width="283px" Height="247px" BackColor="White" BorderColor="#999999" CellPadding="4" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="Black">
                          <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" />
                          <NextPrevStyle VerticalAlign="Bottom" />
                          <OtherMonthDayStyle ForeColor="#808080" />
                          <SelectedDayStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
                          <SelectorStyle BackColor="#CCCCCC" />
                          <TitleStyle BackColor="#999999" BorderColor="Black" Font-Bold="True" />
                          <TodayDayStyle BackColor="#CCCCCC" ForeColor="Black" />
                          <WeekendDayStyle BackColor="#FFFFCC" />
                      </asp:Calendar> </td>
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

      <table style="width:100%; "  id="patientInputTableOne">
        <tbody>

               

            
            <tr>
                <!--previousVTE-->
                <td><label class="control-label">Previous VTE (except a single event related to major surgery)</label></td>
                <td><asp:RadioButtonList class="form-check-input" ID="inputPreviousVTE" runat="server">
              <asp:ListItem Value="1">Yes (+4)</asp:ListItem>
              <asp:ListItem Value="0" Selected="True">No (+0)</asp:ListItem>
          </asp:RadioButtonList></td>
                <!--surgeryVTE-->
                <td><label class=" control-label">Previous VTE provoked by major surgery </label></td>
                <td><asp:RadioButtonList class="form-check-input" ID="inputSurgeryVTE" runat="server">
              <asp:ListItem Value="1">Yes (+3)</asp:ListItem>
              <asp:ListItem Value="0" Selected="True">No (+0)</asp:ListItem>
          </asp:RadioButtonList></td>
            </tr>
            <tr>
                <!--highRiskThrombophilia-->
                <td><label class="control-label">Known high-risk thrombophilia</label></td>
                <td><asp:RadioButtonList class="form-check-input" ID="inputHighRiskThrombophilia" runat="server">
              <asp:ListItem Value="1">Yes (+3)</asp:ListItem>
              <asp:ListItem Value="0" Selected="True">No (+0)</asp:ListItem>
          </asp:RadioButtonList></td>
                <!--Medical comorbidities-->
                <td><label class=" control-label">Medical Comorbidities</label></td>
                <td><asp:RadioButtonList class="form-check-input" ID="inputMedicalComorbidities" runat="server">
              <asp:ListItem Value="1">Yes (+3)</asp:ListItem>
              <asp:ListItem Value="0" Selected="True">No (+0)</asp:ListItem>
          </asp:RadioButtonList></td>
            </tr>

            <tr>
                <!--familyHistoryVTEFirstDegreeRelative-->
                <td><label class="control-label">Family history of unprovoked or estrogen-related VTE in first-degree relative </label></td>
                <td><asp:RadioButtonList class="form-check-input" ID="inputFamilyHistoryVTEFirstDegreeRelative" runat="server">
              <asp:ListItem Value="1">Yes (+1)</asp:ListItem>
              <asp:ListItem Value="0" Selected="True">No (+0)</asp:ListItem>
          </asp:RadioButtonList></td>
                <!--lowRiskThrombophilia-->
                <td><label class="control-label">Known low-risk thrombophilia (no VTE)</label></td>
                <td><asp:RadioButtonList class="form-check-input" ID="inputLowRiskThrombophilia" runat="server">
              <asp:ListItem Value="1">Yes (+1)</asp:ListItem>
              <asp:ListItem Value="0" Selected="True">No (+0)</asp:ListItem>
          </asp:RadioButtonList></td>
            </tr>
            <tr>
                <!--smoker-->
                <td><label class="control-label">Smoker</label></td>
                <td><asp:RadioButtonList class="form-check-input" ID="inputSmoker" runat="server">
              <asp:ListItem Value="1">Yes (+1)</asp:ListItem>
              <asp:ListItem Value="0" Selected="True">No (+0)</asp:ListItem>
          </asp:RadioButtonList></td>
                <!--grossVaricoseVeins-->
                <td><label class="control-label">Gross Varicose Veins</label></td>
                <td><asp:RadioButtonList class="form-check-input" ID="inputGrossVaricoseVeins" runat="server">
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

      <table style="width:100%;" id="patientInputTableTwo">
          <tbody>
            <tr>
                <!--preEclampsiaInCurrentPregnancy-->
                <td><label class="control-label">Pre Eclampsia In Current Pregnancy</label></td>
                <td><asp:RadioButtonList class="form-check-input" ID="inputPreEclampsiaInCurrentPregnancy" runat="server">
              <asp:ListItem Value="1">Yes (+1)</asp:ListItem>
              <asp:ListItem Value="0" Selected="True">No (+0)</asp:ListItem>
          </asp:RadioButtonList></td>
                <!--ARTorIVF-->
                <td><label class="control-label">ART or IVF (antenatal only)</label></td>
                <td><asp:RadioButtonList class="form-check-input" ID="inputARTorIVF" runat="server">
              <asp:ListItem Value="1">Yes (+1)</asp:ListItem>
              <asp:ListItem Value="0" Selected="True">No (+0)</asp:ListItem>
          </asp:RadioButtonList></td>
            </tr>
              <tr>
               <!--multiplePregnancy-->
                <td><label class="control-label">Multiple Pregnancy</label></td>
                <td><asp:RadioButtonList class="form-check-input" ID="inputMultiplePregnancy" runat="server">
              <asp:ListItem Value="1">Yes (+1)</asp:ListItem>
              <asp:ListItem Value="0" Selected="True">No (+0)</asp:ListItem>
          </asp:RadioButtonList></td>
                  <!--caesareanSectionInLabour-->
                <td><label class="control-label">Caesarean Section In Labour</label></td>
                <td><asp:RadioButtonList class="form-check-input" ID="inputCaesareanSectionInLabour" runat="server">
              <asp:ListItem Value="1">Yes (+2)</asp:ListItem>
              <asp:ListItem Value="0" Selected="True">No (+0)</asp:ListItem>
          </asp:RadioButtonList></td>
            </tr>
            <tr>
                <!--electiveCaesareanSection-->
                <td><label class="control-label">Elective caesarean section</label></td>
                <td><asp:RadioButtonList class="form-check-input" ID="inputElectiveCaesareanSection" runat="server">
              <asp:ListItem Value="1">Yes (+1)</asp:ListItem>
              <asp:ListItem Value="0" Selected="True">No (+0)</asp:ListItem>
          </asp:RadioButtonList></td>
                <!--operativeDelivery-->
                <td> <label class="control-label">Mid-cavity or rotational operative delivery</label></td>
                <td><asp:RadioButtonList class="form-check-input" ID="inputOperativeDelivery" runat="server">
              <asp:ListItem Value="1">Yes (+1)</asp:ListItem>
              <asp:ListItem Value="0" Selected="True">No (+0)</asp:ListItem>
          </asp:RadioButtonList></td>
            </tr>
            <tr>
                <!--prolongedLabour-->
                <td><label class="control-label">Prolonged labour (> 24 hours)</label></td>
                <td><asp:RadioButtonList class="form-check-input" ID="inputProlongedLabour" runat="server">
              <asp:ListItem Value="1">Yes (+1)</asp:ListItem>
              <asp:ListItem Value="0" Selected="True">No (+0)</asp:ListItem>
          </asp:RadioButtonList></td>
                <!--PPH-->
                <td><label class="control-label">PPH (> 1 litre or transfusion)</label></td>
                <td><asp:RadioButtonList class="form-check-input" ID="inputPPH" runat="server">
              <asp:ListItem Value="1">Yes (+1)</asp:ListItem>
              <asp:ListItem Value="0" Selected="True">No (+0)</asp:ListItem>
          </asp:RadioButtonList></td>
            </tr>
            <tr>
                <!--pretermBirth-->
                <td><label class="control-label">Preterm birth < 37+0 weeks in current pregnancy</label></td>
                <td><asp:RadioButtonList class="form-check-input" ID="inputPretermBirth" runat="server">
              <asp:ListItem Value="1">Yes (+1)</asp:ListItem>
              <asp:ListItem Value="0" Selected="True">No (+0)</asp:ListItem>
          </asp:RadioButtonList></td>
                <!--stillBirth-->
                <td><label class="control-label">Stillbirth in current pregnancy</label></td>
                <td><asp:RadioButtonList class="form-check-input" ID="inputStillBirth" runat="server">
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

      <table style="width:100%;" id="patientInputTableThree">
          <tbody>
            <tr>
                <!--surgicalProcedure-->
                <td><label class="control-label">Any surgical procedure in pregnancy or puerperium except immediate repair of the
perineum, e.g. appendicectomy, postpartum sterilisation</label></td>
                <td><asp:RadioButtonList class="form-check-input" ID="inputSurgicalProcedure" runat="server">
              <asp:ListItem Value="1">Yes (+3)</asp:ListItem>
              <asp:ListItem Value="0" Selected="True">No (+0)</asp:ListItem>
          </asp:RadioButtonList></td>
                 <!--Hyperemesis-->
                <td><label class="control-label">Hyperemesis</label></td>
                <td><asp:RadioButtonList class="form-check-input" ID="inputHyperemesis" runat="server">
              <asp:ListItem Value="1">Yes (+3)</asp:ListItem>
              <asp:ListItem Value="0" Selected="True">No (+0)</asp:ListItem>
          </asp:RadioButtonList></td>
            </tr>
              <tr>
                  <!--OHSS-->
                <td><label class="control-label">OHSS (first trimester only)</label></td>
                <td><asp:RadioButtonList class="form-check-input" ID="inputOHSS" runat="server">
              <asp:ListItem Value="1">Yes (+4)</asp:ListItem>
              <asp:ListItem Value="0" Selected="True">No (+0)</asp:ListItem>
          </asp:RadioButtonList></td>
                  <!--currentSystemicInfection-->
                <td><label class="control-label">Current Systemic Infection</label></td>
                <td><asp:RadioButtonList class="form-check-input" ID="inputCurrentSystemicInfection" runat="server">
              <asp:ListItem Value="1">Yes (+1)</asp:ListItem>
              <asp:ListItem Value="0" Selected="True">No (+0)</asp:ListItem>
          </asp:RadioButtonList></td>
            </tr>
              <tr>
                  <!--immobilityOrDehydration-->
                <td><label class="control-label">Immobility Or Dehydration</label></td>
                <td><asp:RadioButtonList class="form-check-input" ID="inputImmobilityOrDehydration" runat="server">
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
          <asp:Button ID="formSubmitBtn" class="btn btn-success" runat="server"  autopostback="false" onclick="AddPatient" Text="Submit Patient" />
          <hr />
          <asp:Image ID="patientQRCode" width="100px" height="100px" runat="server" Visible="false"/>
          <br /><br />

          </p>

</asp:Content>
