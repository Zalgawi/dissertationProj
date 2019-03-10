using dissertationProj.Models;
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

        }

        public void AddPatient()
        {

            Patient newPatient = new Patient()
            {
                firstName = inputFirstName.Text,
                middleName = inputMiddleName.Text,
                lastName = inputLastName.Text,
                gender = inputGender.SelectedValue,
                birthdate = DateTime.ParseExact(inputBirthDate.Text, "dd/MM/yyyy", CultureInfo.InvariantCulture),
                age = ,
                weight = inputWeight.,
                height = height,
                parity = inputParity.SelectedValue,
                civilStatus = inputCivilStatus.SelectedValue,
                previousVTE = previousVTE,
                surgeryVTE = surgeryVTE,
                highRiskThrombophilia = highRiskThrombophilia,
                cancer = cancer,
                heartFailure = heartFailure,
                activeSystemicLupusErythematosus = activeSystemicLupusErythematosus,
                inflammatoryPolyarthropathy = inflammatoryPolyarthropathy,
                inflammatoryBowelDisease = inflammatoryBowelDisease,
                nephroticSyndrome = nephroticSyndrome,
                typeIDiabetesMellitusWithNephropathy = typeIDiabetesMellitusWithNephropathy,
                sickleCellDisease = sickleCellDisease,
                currentInratvenousDrugUser = currentInratvenousDrugUser,
                familyHistoryVTEFirstDegreeRelative = familyHistoryVTEFirstDegreeRelative,
                lowRiskThrombophilia = lowRiskThrombophilia,
                smoker = smoker,
                grossVaricoseVeins = grossVaricoseVeins,
                obesity = obesity,
                preEclampsiaInCurrentPregnancy = preEclampsiaInCurrentPregnancy,
                ARTorIVF = ARTorIVF,
                multiplePregnancy = multiplePregnancy,
                caesareanSectionInLabour = caesareanSectionInLabour,
                electiveCaesareanSection = electiveCaesareanSection,
                operativeDelivery = operativeDelivery,
                prolongedLabour = prolongedLabour,
                PPH = PPH,
                pretermBirth = pretermBirth,
                stillBirth = stillBirth,
                surgicalProcedure = surgicalProcedure,
                Hyperemesis = Hyperemesis,
                OHSS = OHSS,
                currentSystemicInfection = currentSystemicInfection,
                immobilityOrDehydration = immobilityOrDehydration,

            };

        }
    }
}