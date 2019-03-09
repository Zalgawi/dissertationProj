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
        <%--Gender
     <label for="inputGender" class="col-lg-2 control-label">Select Gender</label>
      <div class="col-lg-10">
          <asp:DropDownList ID="inputGender" runat="server">
              <asp:ListItem Text="Select Gender" Value="0">Select Gender</asp:ListItem>
              <asp:ListItem Text="Male" Value="1">Male</asp:ListItem>
              <asp:ListItem Text="Female" Value="2">Female</asp:ListItem>
              <asp:ListItem Text="Other" Value="3">Other</asp:ListItem>
          </asp:DropDownList>
      </div>
            --%>
        <%--Birthdate--%>
        <label for="inputBirthDate" class="col-lg-2 control-label">Birthdate</label>
      <div class="col-lg-10">
          <asp:TextBox  class="form-control" ID="inputBirthDate" runat="server" placeholder="day/month/year"></asp:TextBox>
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
      <div class="form-group">

          <label for="inputParity" class="col-lg-2 control-label">Parity</label><br />
      <div class="form-check">
        <label class="form-check-label">
          <input type="radio" class="form-check-input" name="optionsRadios" id="optionsRadios1" value="option1" checked="">
          Option one is this and that—be sure to include why it's great
        </label>
      </div>
      <div class="form-check">
      <label class="form-check-label">
          <input type="radio" class="form-check-input" name="optionsRadios" id="optionsRadios2" value="option2">
          Option two can be something else and selecting it will deselect option one
        </label>
      </div>
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
