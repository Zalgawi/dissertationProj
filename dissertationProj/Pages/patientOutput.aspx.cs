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
                //Populate_MonthList();
                //Populate_YearList();
                

                var id = Request.QueryString["id"];

                patientIdHidden.Value = id;
            }
            if (!Page.User.Identity.IsAuthenticated)
            {
                string strCurrentUserId = User.Identity.GetUserId();
                Response.Redirect("/Account/Login", true);

            }
        }

 
        //protected void Populate_MonthList2()
        //{
        //    Add each month to the list
        //    var dtf = System.Globalization.CultureInfo.CurrentCulture.DateTimeFormat;
        //    for (int i = 1; i <= 12; i++)
        //        drpCalMonth2.Items.Add(new ListItem(dtf.GetMonthName(i), i.ToString()));

        //    Make the current month selected item in the list
        //    drpCalMonth2.Items.FindByValue(DateTime.Now.Month.ToString()).Selected = true;
        //}


        //protected void Populate_YearList()
        //{
        //    //Year list can be changed by changing the lower and upper 
        //    //limits of the For statement    
        //    for (int intYear = DateTime.Now.Year - 70; intYear <= DateTime.Now.Year; intYear++)
        //    {
        //        drpCalYear.Items.Add(intYear.ToString());
        //    }

        //    //Make the current year selected item in the list
        //    drpCalYear.Items.FindByValue(DateTime.Now.Year.ToString()).Selected = true;
        //}

        //protected void Populate_YearList2()
        //{
        //    //Year list can be changed by changing the lower and upper 
        //    //limits of the For statement    
        //    for (int intYear = DateTime.Now.Year - 70; intYear <= DateTime.Now.Year + 20; intYear++)
        //    {
        //        drpCalYear2.Items.Add(intYear.ToString());
        //    }

        //    //Make the current year selected item in the list
        //    drpCalYear2.Items.FindByValue(DateTime.Now.Year.ToString()).Selected = true;
        //}
        
        
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
                patientQRCode.Visible = true;
                patientQRCode.ImageUrl = "~/images/" + patientIdString + ".jpg";
                //lblQRCode.Text = "QR Code : " + result.Text;
            }
            

        }

       


        protected void Save_Patient(object sender, EventArgs e)
        {
            var User = System.Web.HttpContext.Current.User.Identity.GetUserId();

            var _dbContext = new ApplicationDbContext();
            var patientIdInt = Int32.Parse(patientIdHidden.Value);
            var patient = _dbContext.Patients.FirstOrDefault(c => c.patientId == patientIdInt);


            patient.firstName = outputFirstName.Text;
            patient.middleName = outputMiddleName.Text;
            patient.lastName = outputLastName.Text;
            patient.gender = outputGender.SelectedValue;
            //patient.birthdate = DateTime.Parse(outputBirthDate.SelectedDate.ToString());
            //birthdate = DateTime.TryParse(inputBirthDate.ToString(), "dd/MM/yyyy", CultureInfo.InvariantCulture),
            patient.weight = Decimal.Parse(outputWeight.Text);
            patient.height = Decimal.Parse(outputHeight.Text);
            patient.civilStatus = outputCivilStatus.SelectedValue;

            DateTime currentDateTime = DateTime.Now;

            patient.dateOfLastEdit = currentDateTime;
            patient.lastEditedId = User;

            //PRE-EXISTING-RISK-FACTORS
            patient.preExistingFactors.previousVTE.riskSelected = Convert.ToBoolean(Int32.Parse(outputPreviousVTE.SelectedValue));
            patient.preExistingFactors.surgeryVTE.riskSelected = Convert.ToBoolean(Int32.Parse(outputSurgeryVTE.SelectedValue));
            patient.preExistingFactors.highRiskThrombophilia.riskSelected = Convert.ToBoolean(Int32.Parse(outputHighRiskThrombophilia.SelectedValue));
            patient.preExistingFactors.medicalComorbities.riskSelected = Convert.ToBoolean(Int32.Parse(outputMedicalComorbidities.SelectedValue));
            patient.preExistingFactors.familyHistoryVTEFirstDegreeRelative.riskSelected = Convert.ToBoolean(Int32.Parse(outputFamilyHistoryVTEFirstDegreeRelative.SelectedValue));
            patient.preExistingFactors.lowRiskThrombophilia.riskSelected = Convert.ToBoolean(Int32.Parse(outputLowRiskThrombophilia.SelectedValue));
            patient.preExistingFactors.smoker.riskSelected = Convert.ToBoolean(Int32.Parse(outputSmoker.SelectedValue));
            patient.preExistingFactors.grossVaricoseVeins.riskSelected = Convert.ToBoolean(Int32.Parse(outputGrossVaricoseVeins.SelectedValue));
            patient.noOfPregnancies = Int32.Parse(outputParity.Text);

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

            patient.calculatePatientScore();

            //patient.riskAssessmentScore += patient.preExistingFactors.AllRisks().Where(c => c.riskSelected == true).Sum(c => c.riskValue);

            //var today = DateTime.Today;
            //// Calculate the age.
            //var age = today.Year - patient.birthdate.Value.Year;
            //// Go back to the year the person was born in case of a leap year
            //if (patient.birthdate > today.AddYears(-age)) age--;


            //if (age > 35)
            //{
            //    patient.riskAssessmentScore += 1;
            //}

            //patient.bmiCalculator();

            //if (patient.bmi > 40)
            //{
            //    patient.riskAssessmentScore += 2;
            //}
            //else if (patient.bmi > 30)
            //{
            //    patient.riskAssessmentScore += 1;
            //}

            
                
                _dbContext.SaveChanges();
            


            //Display success message and clear the form.
            System.Windows.Forms.MessageBox.Show("You have successfully updated patient!");


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


        }
        //protected void Set_Calendar(object Sender, EventArgs e)
        //{
        //    int year = int.Parse(drpCalYear.SelectedValue);
        //    int month = int.Parse(drpCalMonth.SelectedValue);
        //    outputBirthDate.TodaysDate = new DateTime(year, month, 1);
        //}
        //protected void Set_Calendar2(object Sender, EventArgs e)
        //{
        //    int year = int.Parse(drpCalYear2.SelectedValue);
        //    int month = int.Parse(drpCalMonth2.SelectedValue);
        //    outputDateOfAdmission.TodaysDate = new DateTime(year, month, 1);
        //}
    }
}