using dissertationProj.Models;
using Microsoft.AspNet.Identity;
using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;
using System.Drawing.Imaging;
using System.IO;
using ZXing;


namespace dissertationProj.Pages
{
    public partial class patientOutput : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Populate_MonthList();
                Populate_YearList();
                Populate_MonthList2();
                Populate_YearList2();

                var id = Request.QueryString["id"];

                patientIdHidden.Value = id;
            }
        }

        protected void Populate_MonthList()
        {
            //Add each month to the list
            var dtf = System.Globalization.CultureInfo.CurrentCulture.DateTimeFormat;
            for (int i = 1; i <= 12; i++)
                drpCalMonth.Items.Add(new ListItem(dtf.GetMonthName(i), i.ToString()));

            //Make the current month selected item in the list
            drpCalMonth.Items.FindByValue(DateTime.Now.Month.ToString()).Selected = true;
        }
        protected void Populate_MonthList2()
        {
            //Add each month to the list
            var dtf = System.Globalization.CultureInfo.CurrentCulture.DateTimeFormat;
            for (int i = 1; i <= 12; i++)
                drpCalMonth2.Items.Add(new ListItem(dtf.GetMonthName(i), i.ToString()));

            //Make the current month selected item in the list
            drpCalMonth2.Items.FindByValue(DateTime.Now.Month.ToString()).Selected = true;
        }


        protected void Populate_YearList()
        {
            //Year list can be changed by changing the lower and upper 
            //limits of the For statement    
            for (int intYear = DateTime.Now.Year - 70; intYear <= DateTime.Now.Year; intYear++)
            {
                drpCalYear.Items.Add(intYear.ToString());
            }

            //Make the current year selected item in the list
            drpCalYear.Items.FindByValue(DateTime.Now.Year.ToString()).Selected = true;
        }

        protected void Populate_YearList2()
        {
            //Year list can be changed by changing the lower and upper 
            //limits of the For statement    
            for (int intYear = DateTime.Now.Year - 70; intYear <= DateTime.Now.Year + 20; intYear++)
            {
                drpCalYear2.Items.Add(intYear.ToString());
            }

            //Make the current year selected item in the list
            drpCalYear2.Items.FindByValue(DateTime.Now.Year.ToString()).Selected = true;
        }
        
        
        //READ CODE FROM QR IMAGE
        private void ReadQRCode(int patientId)
        {
            var patientIdString = patientId.ToString();
            var reader = new BarcodeReader();
            string filename = Path.Combine(Request.MapPath("~/images/"),  patientIdString + ".jpg");
            //Detatch and decode the barcode inside the bitmap
            var result = reader.Decode(new Bitmap(filename));
            if (result != null)
            {
                //lblQRCode.Text = "QR Code : " + result.Text;
            }
            patientQRCode.Visible = true;
            patientQRCode.ImageUrl = "~/images/" + patientIdString + ".jpg";
        }

       


        protected void Save_Patient(int patientId)
        {
            var _dbContext = new ApplicationDbContext();

            var patient = _dbContext.Patients.FirstOrDefault(c => c.patientId == patientId);

            //PRE-EXISTING-RISK-FACTORS
            patient.preExistingFactors.previousVTE.riskSelected = Convert.ToBoolean(Int32.Parse(outputPreviousVTE.SelectedValue));
            patient.preExistingFactors.surgeryVTE.riskSelected = Convert.ToBoolean(Int32.Parse(outputSurgeryVTE.SelectedValue));
            patient.preExistingFactors.highRiskThrombophilia.riskSelected = Convert.ToBoolean(Int32.Parse(outputHighRiskThrombophilia.SelectedValue));
            patient.preExistingFactors.cancer.riskSelected = Convert.ToBoolean(Int32.Parse(outputCancer.SelectedValue));
            patient.preExistingFactors.heartFailure.riskSelected = Convert.ToBoolean(Int32.Parse(outputHeartFailure.SelectedValue));
            patient.preExistingFactors.activeSystemicLupusErythematosus.riskSelected = Convert.ToBoolean(Int32.Parse(outputActiveSystemicLupusErythematosus.SelectedValue));
            patient.preExistingFactors.inflammatoryPolyarthropathy.riskSelected = Convert.ToBoolean(Int32.Parse(outputInflammatoryPolyarthropathy.SelectedValue));
            patient.preExistingFactors.inflammatoryBowelDisease.riskSelected = Convert.ToBoolean(Int32.Parse(outputInflammatoryBowelDisease.SelectedValue));
            patient.preExistingFactors.nephroticSyndrome.riskSelected = Convert.ToBoolean(Int32.Parse(outputNephroticSyndrome.SelectedValue));
            patient.preExistingFactors.typeIDiabetesMellitusWithNephropathy.riskSelected = Convert.ToBoolean(Int32.Parse(outputTypeIDiabetesMellitusWithNephropathy.SelectedValue));
            patient.preExistingFactors.sickleCellDisease.riskSelected = Convert.ToBoolean(Int32.Parse(outputSickleCellDisease.SelectedValue));
            patient.preExistingFactors.currentIntravenousDrugUser.riskSelected = Convert.ToBoolean(Int32.Parse(outputCurrentIntravenousDrugUser.SelectedValue));
            patient.preExistingFactors.familyHistoryVTEFirstDegreeRelative.riskSelected = Convert.ToBoolean(Int32.Parse(outputFamilyHistoryVTEFirstDegreeRelative.SelectedValue));
            patient.preExistingFactors.lowRiskThrombophilia.riskSelected = Convert.ToBoolean(Int32.Parse(outputLowRiskThrombophilia.SelectedValue));
            patient.preExistingFactors.smoker.riskSelected = Convert.ToBoolean(Int32.Parse(outputSmoker.SelectedValue));
            patient.preExistingFactors.grossVaricoseVeins.riskSelected = Convert.ToBoolean(Int32.Parse(outputGrossVaricoseVeins.SelectedValue));

            //OBSTETRIC-RISK-FACTORS
            patient.ObstetricFactors.preEclampsiaInCurrentPregnancy.riskSelected = Convert.ToBoolean(Int32.Parse(outputPreEclampsiaInCurrentPregnancy.SelectedValue));
            patient.ObstetricFactors.ARTorIVF.riskSelected = Convert.ToBoolean(Int32.Parse(outputARTorIVF.SelectedValue));
            patient.ObstetricFactors.multiplePregnancy.riskSelected = Convert.ToBoolean(Int32.Parse(outputMultiplePregnancy.SelectedValue));
            patient.ObstetricFactors.caesareanSectionInLabour.riskSelected = Convert.ToBoolean(Int32.Parse(outputCaesareanSectionInLabour.SelectedValue));
            patient.ObstetricFactors.electiveCaesareanSection.riskSelected = Convert.ToBoolean(Int32.Parse(outputElectiveCaesareanSection.SelectedValue));
            patient.ObstetricFactors.operativeDelivery.riskSelected = Convert.ToBoolean(Int32.Parse(outputOperativeDelivery.SelectedValue));
            patient.ObstetricFactors.prolongedLabour.riskSelected = Convert.ToBoolean(Int32.Parse(outputProlongedLabour.SelectedValue));
            patient.ObstetricFactors.PPH.riskSelected = Convert.ToBoolean(Int32.Parse(outputPPH.SelectedValue));
            patient.ObstetricFactors.pretermBirth.riskSelected = Convert.ToBoolean(Int32.Parse(outputPretermBirth.SelectedValue));
            patient.ObstetricFactors.stillBirth.riskSelected = Convert.ToBoolean(Int32.Parse(outputStillBirth.SelectedValue));

            //TRANSIENT-RISK-FACTORS
            patient.TransientFactors.surgicalProcedure.riskSelected = Convert.ToBoolean(Int32.Parse(outputSurgicalProcedure.SelectedValue));
            patient.TransientFactors.Hyperemesis.riskSelected = Convert.ToBoolean(Int32.Parse(outputHyperemesis.SelectedValue));
            patient.TransientFactors.OHSS.riskSelected = Convert.ToBoolean(Int32.Parse(outputOHSS.SelectedValue));
            patient.TransientFactors.currentSystemicInfection.riskSelected = Convert.ToBoolean(Int32.Parse(outputCurrentSystemicInfection.SelectedValue));
            patient.TransientFactors.immobilityOrDehydration.riskSelected = Convert.ToBoolean(Int32.Parse(outputImmobilityOrDehydration.SelectedValue));

            if (Int32.Parse(outputParity.Text) >= 3)
            {
                patient.preExistingFactors.parity.riskSelected = true;
            }
            else
            {
                patient.preExistingFactors.parity.riskSelected = false;
            }

            patient.riskAssessmentScore += patient.preExistingFactors.AllRisks().Where(c => c.riskSelected == true).Sum(c => c.riskValue);

            var today = DateTime.Today;
            // Calculate the age.
            var age = today.Year - patient.birthdate.Value.Year;
            // Go back to the year the person was born in case of a leap year
            if (patient.birthdate > today.AddYears(-age)) age--;


            if (age > 35)
            {
                patient.riskAssessmentScore += 1;
            }

            patient.bmiCalculator();

            if (patient.bmi > 40)
            {
                patient.riskAssessmentScore += 2;
            }
            else if (patient.bmi > 30)
            {
                patient.riskAssessmentScore += 1;
            }

            
                patient = _dbContext.Patients.Add(patient);
                _dbContext.SaveChanges();
            


            //Display success message and clear the form.
            System.Windows.Forms.MessageBox.Show("You have successfully submitted a patient!");
            outputFirstName.Text = "";
            outputMiddleName.Text = "";
            outputLastName.Text = "";
            outputGender.SelectedValue = "Select Gender";
            //inputBirthDate.SelectedDate = ;
            outputWeight.Text = "";
            outputHeight.Text = "";
            //inputDateOfAdmission.Text = "";

        }

        

        protected void LoadPatient(int patientId)
        {
            using (var _dbContext = new ApplicationDbContext())
            {
                var patient = _dbContext.Patients.FirstOrDefault(c => c.patientId == patientId);

                //var latestPosts = _dbContext.Posts.Where(c => c.Id != null).ToList().OrderByDescending(c => c.postDate == postDate);
                if (patient == null)
                {
                    Exception e = new Exception("Can't find post");
                    throw e;
                }
                else
                {
                  //  outputTitle.Text = patient.postTitle;
                  //  outputBody.Text = patient.postBody;
                  //  outputCategory.Text = patient.postCategory;


                }
            }


            /*

       if (riskAssessmentScore >= 4)
       {
           display: If total score ≥ 4 antenatally, consider thromboprophylaxis from the first trimester.
       }
       else (riskAssessmentScore == 3)
       {
           display: If total score 3 antenatally, consider thromboprophylaxis from 28 weeks.
       }
       else (riskAssessmentScore >= 2)
       {
           display: If total score ≥ 2 postnatally, consider thromboprophylaxis for at least 10 days.
       }
       else ()

      */


            //If admitted to hospital antenatally consider thromboprophylaxis.

            //If prolonged admission (≥ 3 days) or readmission to hospital within the puerperium consider thromboprophylaxis.

            //For patients with an identified bleeding risk, the balance of risks of bleeding and thrombosis should be discussed
            //in consultation with a haematologist with expertise in thrombosis and bleeding in pregnancy.

        }
        protected void Set_Calendar(object Sender, EventArgs e)
        {
            int year = int.Parse(drpCalYear.SelectedValue);
            int month = int.Parse(drpCalMonth.SelectedValue);
            outputBirthDate.TodaysDate = new DateTime(year, month, 1);
        }
        protected void Set_Calendar2(object Sender, EventArgs e)
        {
            int year = int.Parse(drpCalYear2.SelectedValue);
            int month = int.Parse(drpCalMonth2.SelectedValue);
            outputDateOfAdmission.TodaysDate = new DateTime(year, month, 1);
        }
    }
}