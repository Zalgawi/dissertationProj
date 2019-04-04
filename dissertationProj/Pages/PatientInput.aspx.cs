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
                civilStatus = inputCivilStatus.SelectedValue,

            };

            //PRE-EXISTING-RISK-FACTORS
            newPatient.preExistingFactors.previousVTE.riskSelected = Convert.ToBoolean(Int32.Parse(inputPreviousVTE.SelectedValue));
            newPatient.preExistingFactors.surgeryVTE.riskSelected = Convert.ToBoolean(Int32.Parse(inputSurgeryVTE.SelectedValue));
            newPatient.preExistingFactors.highRiskThrombophilia.riskSelected = Convert.ToBoolean(Int32.Parse(inputHighRiskThrombophilia.SelectedValue));
            newPatient.preExistingFactors.cancer.riskSelected = Convert.ToBoolean(Int32.Parse(inputCancer.SelectedValue));
            newPatient.preExistingFactors.heartFailure.riskSelected = Convert.ToBoolean(Int32.Parse(inputHeartFailure.SelectedValue));
            newPatient.preExistingFactors.activeSystemicLupusErythematosus.riskSelected = Convert.ToBoolean(Int32.Parse(inputActiveSystemicLupusErythematosus.SelectedValue));
            newPatient.preExistingFactors.inflammatoryPolyarthropathy.riskSelected = Convert.ToBoolean(Int32.Parse(inputInflammatoryPolyarthropathy.SelectedValue));
            newPatient.preExistingFactors.inflammatoryBowelDisease.riskSelected = Convert.ToBoolean(Int32.Parse(inputInflammatoryBowelDisease.SelectedValue));
            newPatient.preExistingFactors.nephroticSyndrome.riskSelected = Convert.ToBoolean(Int32.Parse(inputNephroticSyndrome.SelectedValue));
            newPatient.preExistingFactors.typeIDiabetesMellitusWithNephropathy.riskSelected = Convert.ToBoolean(Int32.Parse(inputTypeIDiabetesMellitusWithNephropathy.SelectedValue));
            newPatient.preExistingFactors.sickleCellDisease.riskSelected = Convert.ToBoolean(Int32.Parse(inputSickleCellDisease.SelectedValue));
            newPatient.preExistingFactors.currentIntravenousDrugUser.riskSelected = Convert.ToBoolean(Int32.Parse(inputCurrentIntravenousDrugUser.SelectedValue));
            newPatient.preExistingFactors.familyHistoryVTEFirstDegreeRelative.riskSelected = Convert.ToBoolean(Int32.Parse(inputFamilyHistoryVTEFirstDegreeRelative.SelectedValue));
            newPatient.preExistingFactors.lowRiskThrombophilia.riskSelected = Convert.ToBoolean(Int32.Parse(inputLowRiskThrombophilia.SelectedValue));
            newPatient.preExistingFactors.smoker.riskSelected = Convert.ToBoolean(Int32.Parse(inputSmoker.SelectedValue));
            newPatient.preExistingFactors.grossVaricoseVeins.riskSelected = Convert.ToBoolean(Int32.Parse(inputGrossVaricoseVeins.SelectedValue));

            //OBSTETRIC-RISK-FACTORS
            newPatient.ObstetricFactors.preEclampsiaInCurrentPregnancy.riskSelected = Convert.ToBoolean(Int32.Parse(inputPreEclampsiaInCurrentPregnancy.SelectedValue));
            newPatient.ObstetricFactors.ARTorIVF.riskSelected = Convert.ToBoolean(Int32.Parse(inputARTorIVF.SelectedValue));
            newPatient.ObstetricFactors.multiplePregnancy.riskSelected = Convert.ToBoolean(Int32.Parse(inputMultiplePregnancy.SelectedValue));
            newPatient.ObstetricFactors.caesareanSectionInLabour.riskSelected = Convert.ToBoolean(Int32.Parse(inputCaesareanSectionInLabour.SelectedValue));
            newPatient.ObstetricFactors.electiveCaesareanSection.riskSelected = Convert.ToBoolean(Int32.Parse(inputElectiveCaesareanSection.SelectedValue));
            newPatient.ObstetricFactors.operativeDelivery.riskSelected = Convert.ToBoolean(Int32.Parse(inputOperativeDelivery.SelectedValue));
            newPatient.ObstetricFactors.prolongedLabour.riskSelected = Convert.ToBoolean(Int32.Parse(inputProlongedLabour.SelectedValue));
            newPatient.ObstetricFactors.PPH.riskSelected = Convert.ToBoolean(Int32.Parse(inputPPH.SelectedValue));
            newPatient.ObstetricFactors.pretermBirth.riskSelected = Convert.ToBoolean(Int32.Parse(inputPretermBirth.SelectedValue));
            newPatient.ObstetricFactors.stillBirth.riskSelected = Convert.ToBoolean(Int32.Parse(inputStillBirth.SelectedValue));

            //TRANSIENT-RISK-FACTORS
            newPatient.TransientFactors.surgicalProcedure.riskSelected = Convert.ToBoolean(Int32.Parse(inputSurgicalProcedure.SelectedValue));
            newPatient.TransientFactors.Hyperemesis.riskSelected = Convert.ToBoolean(Int32.Parse(inputHyperemesis.SelectedValue));
            newPatient.TransientFactors.OHSS.riskSelected = Convert.ToBoolean(Int32.Parse(inputOHSS.SelectedValue));
            newPatient.TransientFactors.currentSystemicInfection.riskSelected = Convert.ToBoolean(Int32.Parse(inputCurrentSystemicInfection.SelectedValue));
            newPatient.TransientFactors.immobilityOrDehydration.riskSelected = Convert.ToBoolean(Int32.Parse(inputImmobilityOrDehydration.SelectedValue));


            if (Int32.Parse(inputParity.Text) >= 3)
            {
                newPatient.preExistingFactors.parity.riskSelected = true;
            }
            else
            {
                newPatient.preExistingFactors.parity.riskSelected = false;
            }


            newPatient.riskAssessmentScore += newPatient.preExistingFactors.AllRisks().Where(c => c.riskSelected == true).Sum(c => c.riskValue);


            var today = DateTime.Today;
            // Calculate the age.
            var age = today.Year - newPatient.birthdate.Year;
            // Go back to the year the person was born in case of a leap year
            if (newPatient.birthdate > today.AddYears(-age)) age--;


            if (age > 35)
            {
                newPatient.riskAssessmentScore += 1;
            }

            newPatient.bmiCalculator();

            if (newPatient.bmi > 40)
            {
                newPatient.riskAssessmentScore += 2;
            }
            else if (newPatient.bmi > 30)
            {
                newPatient.riskAssessmentScore += 1;
            }
            

            using (var _dbContext = new ApplicationDbContext())
            {
                _dbContext.Patients.Add(newPatient);
                _dbContext.SaveChanges();
            }

        }
    }
}