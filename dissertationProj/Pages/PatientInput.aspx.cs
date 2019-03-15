using dissertationProj.Models;
using Microsoft.AspNet.Identity;
using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace dissertationProj.Pages
{
    public partial class PatientInput : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.User.Identity.IsAuthenticated)
            {
                string strCurrentUserId = User.Identity.GetUserId();
                Response.Redirect("/Account/Login", true);

            }
        }

        protected void AddPatient(object sender, EventArgs e)
        {
            var User = System.Web.HttpContext.Current.User.Identity.GetUserId();

            Patient newPatient = new Patient()
            {
                Id = User,
                firstName = inputFirstName.Text,
                middleName = inputMiddleName.Text,
                lastName = inputLastName.Text,
                gender = inputGender.SelectedValue,
                birthdate = DateTime.ParseExact(inputBirthDate.Text, "dd/MM/yyyy", CultureInfo.InvariantCulture),
                weight = Decimal.Parse(inputWeight.Text),
                height = Decimal.Parse(inputHeight.Text),
                parity = Int32.Parse(inputParity.Text),
                civilStatus = inputCivilStatus.SelectedValue,
                previousVTE = Convert.ToBoolean(Int32.Parse(inputPreviousVTE.SelectedValue)),
                surgeryVTE = Convert.ToBoolean(Int32.Parse(inputSurgeryVTE.SelectedValue)),
                highRiskThrombophilia = Convert.ToBoolean(Int32.Parse(inputHighRiskThrombophilia.SelectedValue)),
                cancer = Convert.ToBoolean(Int32.Parse(inputCancer.SelectedValue)),
                heartFailure = Convert.ToBoolean(Int32.Parse(inputHeartFailure.SelectedValue)),
                activeSystemicLupusErythematosus = Convert.ToBoolean(Int32.Parse(inputActiveSystemicLupusErythematosus.SelectedValue)),
                inflammatoryPolyarthropathy = Convert.ToBoolean(Int32.Parse(inputInflammatoryPolyarthropathy.SelectedValue)),
                inflammatoryBowelDisease = Convert.ToBoolean(Int32.Parse(inputInflammatoryBowelDisease.SelectedValue)),
                nephroticSyndrome = Convert.ToBoolean(Int32.Parse(inputNephroticSyndrome.SelectedValue)),
                typeIDiabetesMellitusWithNephropathy = Convert.ToBoolean(Int32.Parse(inputTypeIDiabetesMellitusWithNephropathy.SelectedValue)),
                sickleCellDisease = Convert.ToBoolean(Int32.Parse(inputSickleCellDisease.SelectedValue)),
                currentInratvenousDrugUser = Convert.ToBoolean(Int32.Parse(inputCurrentInratvenousDrugUser.SelectedValue)),
                familyHistoryVTEFirstDegreeRelative = Convert.ToBoolean(Int32.Parse(inputFamilyHistoryVTEFirstDegreeRelative.SelectedValue)),
                lowRiskThrombophilia = Convert.ToBoolean(Int32.Parse(inputLowRiskThrombophilia.SelectedValue)),
                smoker = Convert.ToBoolean(Int32.Parse(inputSmoker.SelectedValue)),
                grossVaricoseVeins = Convert.ToBoolean(Int32.Parse(inputGrossVaricoseVeins.SelectedValue)),
                obesity = inputObesity.SelectedValue,
                preEclampsiaInCurrentPregnancy = Convert.ToBoolean(Int32.Parse(inputPreEclampsiaInCurrentPregnancy.SelectedValue)),
                ARTorIVF = Convert.ToBoolean(Int32.Parse(inputARTorIVF.SelectedValue)),
                multiplePregnancy = Convert.ToBoolean(Int32.Parse(inputMultiplePregnancy.SelectedValue)),
                caesareanSectionInLabour = Convert.ToBoolean(Int32.Parse(inputCaesareanSectionInLabour.SelectedValue)),
                electiveCaesareanSection = Convert.ToBoolean(Int32.Parse(inputElectiveCaesareanSection.SelectedValue)),
                operativeDelivery = Convert.ToBoolean(Int32.Parse(inputOperativeDelivery.SelectedValue)),
                prolongedLabour = Convert.ToBoolean(Int32.Parse(inputProlongedLabour.SelectedValue)),
                PPH = Convert.ToBoolean(Int32.Parse(inputPPH.SelectedValue)),
                pretermBirth = Convert.ToBoolean(Int32.Parse(inputPretermBirth.SelectedValue)),
                stillBirth = Convert.ToBoolean(Int32.Parse(inputStillBirth.SelectedValue)),
                surgicalProcedure = Convert.ToBoolean(Int32.Parse(inputSurgicalProcedure.SelectedValue)),
                Hyperemesis = Convert.ToBoolean(Int32.Parse(inputHyperemesis.SelectedValue)),
                OHSS = Convert.ToBoolean(Int32.Parse(inputOHSS.SelectedValue)),
                currentSystemicInfection = Convert.ToBoolean(Int32.Parse(inputCurrentSystemicInfection.SelectedValue)),
                immobilityOrDehydration = Convert.ToBoolean(Int32.Parse(inputImmobilityOrDehydration.SelectedValue)),

            };

            using (var _dbContext = new ApplicationDbContext())
            {
                _dbContext.Patients.Add(newPatient);
                _dbContext.SaveChanges();
            }

        }
    }
}