<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="PatientInput.aspx.cs" Inherits="dissertationProj.Pages.PatientInput" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1 class="text-center">Input New Patient</h1>
    <div style="border-color:#00ffff"  class="jumbotronTwo">
        
        <form class="form-horizontal">
  <fieldset>

      <%--------------------------------------
          Inserting General Patient Data
      --------------------------------------%>

<div class="panel panel-success">
  <div class="panel-heading">
    <h3 class="panel-title" style="text-align: center">Medical Information</h3>
  </div>
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

      <%--------------------------------------
          Inserting Pre-existing risk factors
      --------------------------------------%>

      <div class="panel panel-success">
  <div class="panel-heading">
    <h3 class="panel-title" style="text-align: center">Pre-existing risk factors</h3>
  </div>
  <div class="panel-body">

      <!--Parity-->
      <div class="form-group">
          <label for="inputParity" class="col-lg-2 control-label">Parity</label>
          <asp:RadioButtonList class="form-check-input" ID="inputParity" runat="server">
              <asp:ListItem Value="1">Yes</asp:ListItem>
              <asp:ListItem Value="0">No</asp:ListItem>
          </asp:RadioButtonList>
      </div>  
       <%--Civil Status--%>
     <label for="inputCivilStatus" class="col-lg-2 control-label">Select Civil Status</label>
      <div class="col-lg-10">
          <asp:DropDownList class="form-control" ID="inputCivilStatus" runat="server">
              <asp:ListItem Text="Select Civil Status" Value="0">Select Civil Status</asp:ListItem>
              <asp:ListItem Text="Single" Value="1">Single</asp:ListItem>
              <asp:ListItem Text="Married" Value="2">Married</asp:ListItem>
              <asp:ListItem Text="Seperated" Value="3">Seperated</asp:ListItem>
              <asp:ListItem Text="Divorced" Value="4">Divorced</asp:ListItem>
          </asp:DropDownList>
      </div>
      <!--previousVTE-->
      <div class="form-group">
          <label for="inputPreviousVTE" class="col-lg-2 control-label">Parity</label>
          <asp:RadioButtonList class="form-check-input" ID="inputPreviousVTE" runat="server">
              <asp:ListItem Value="1">Yes</asp:ListItem>
              <asp:ListItem Value="0">No</asp:ListItem>
          </asp:RadioButtonList>
      </div>  
      <!--surgeryVTE-->
      <div class="form-group">
          <label for="inputSurgeryVTE" class="col-lg-2 control-label">Parity</label>
          <asp:RadioButtonList class="form-check-input" ID="inputSurgeryVTE" runat="server">
              <asp:ListItem Value="1">Yes</asp:ListItem>
              <asp:ListItem Value="0">No</asp:ListItem>
          </asp:RadioButtonList>
      </div>  




  </div>
    </div>


      <%--------------------------------------
          Inserting Obstetric risk factors
      --------------------------------------%>

      <div class="panel panel-success">
  <div class="panel-heading">
    <h3 class="panel-title" style="text-align: center">Obstetric risk factors</h3>
  </div>
  <div class="panel-body">
      <div class="form-group">

      </div>  
  </div>
    </div>

      <%--------------------------------------
          Inserting Transient risk factors
      --------------------------------------%>

      <div class="panel panel-success">
  <div class="panel-heading">
    <h3 class="panel-title" style="text-align: center">Transient risk factors  </h3>
  </div>
  <div class="panel-body">
      <div class="form-group">

      </div>  
  </div>
    </div>

    <div class="form-group">
      &nbsp;</div>
    <div class="form-group">
      <div class="col-lg-10 col-lg-offset-2">
        <button type="reset" class="btn btn-default">Cancel</button>
        <button type="submit" class="btn btn-primary">Submit</button>
      </div>
    </div>

     
  </fieldset>
</form>
        
    </div>
</asp:Content>
