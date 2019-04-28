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
    public partial class PatientInput : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            

            if (!IsPostBack)
            {
                Populate_MonthList();
                Populate_YearList();
                Populate_MonthList2();
                Populate_YearList2();
            }

            if (!Page.User.Identity.IsAuthenticated)
            {
                string strCurrentUserId = User.Identity.GetUserId();
                Response.Redirect("/Account/Login", true);

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

        //GENERATE QRCODE
        private void GenerateCode(string patientIdString)
        {           

            var writer = new BarcodeWriter();
            writer.Format = BarcodeFormat.QR_CODE;
            var result = writer.Write(patientIdString);
            string path = Server.MapPath("~/images/" + patientIdString + ".jpg");
            var barcodeBitmap = new Bitmap(result);

            using (MemoryStream memory = new MemoryStream())
            {
                using (FileStream fs = new FileStream(path, FileMode.Create, FileAccess.ReadWrite))
                {
                    barcodeBitmap.Save(memory, ImageFormat.Jpeg);
                    byte[] bytes = memory.ToArray();
                    fs.Write(bytes, 0, bytes.Length);
                }
            }
           
        }



        protected void AddPatient(object sender, EventArgs e)
        {
            var User = System.Web.HttpContext.Current.User.Identity.GetUserId();

            Patient newPatient = new Patient()
            {
                Id = User,
                lastEditedId = User,
                firstName = inputFirstName.Text,
                middleName = inputMiddleName.Text,
                lastName = inputLastName.Text,
                gender = inputGender.SelectedValue,
                birthdate = DateTime.Parse(inputBirthDate.SelectedDate.ToString()),
                //birthdate = DateTime.TryParse(inputBirthDate.ToString(), "dd/MM/yyyy", CultureInfo.InvariantCulture),
                weight = Decimal.Parse(inputWeight.Text),
                height = Decimal.Parse(inputHeight.Text),                
                civilStatus = inputCivilStatus.SelectedValue,
                dateOfAdmission = DateTime.Parse(inputDateOfAdmission.SelectedDate.ToString())

            };

            //PRE-EXISTING-RISK-FACTORS
            newPatient.preExistingFactors.previousVTE.riskSelected = Convert.ToBoolean(Int32.Parse(inputPreviousVTE.SelectedValue));
            newPatient.preExistingFactors.surgeryVTE.riskSelected = Convert.ToBoolean(Int32.Parse(inputSurgeryVTE.SelectedValue));
            newPatient.preExistingFactors.highRiskThrombophilia.riskSelected = Convert.ToBoolean(Int32.Parse(inputHighRiskThrombophilia.SelectedValue));
            newPatient.preExistingFactors.medicalComorbities.riskSelected = Convert.ToBoolean(Int32.Parse(inputMedicalComorbidities.SelectedValue));
            newPatient.preExistingFactors.familyHistoryVTEFirstDegreeRelative.riskSelected = Convert.ToBoolean(Int32.Parse(inputFamilyHistoryVTEFirstDegreeRelative.SelectedValue));
            newPatient.preExistingFactors.lowRiskThrombophilia.riskSelected = Convert.ToBoolean(Int32.Parse(inputLowRiskThrombophilia.SelectedValue));
            newPatient.preExistingFactors.smoker.riskSelected = Convert.ToBoolean(Int32.Parse(inputSmoker.SelectedValue));
            newPatient.preExistingFactors.grossVaricoseVeins.riskSelected = Convert.ToBoolean(Int32.Parse(inputGrossVaricoseVeins.SelectedValue));
            newPatient.noOfPregnancies = Int32.Parse(inputParity.Text);

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


            newPatient.calculatePatientScore();
            
            
            using (var _dbContext = new ApplicationDbContext())
            {
                newPatient = _dbContext.Patients.Add(newPatient);
                _dbContext.SaveChanges();
            }


            //Display success message and clear the form.
            System.Windows.Forms.MessageBox.Show("You have successfully submitted a patient!");
            inputFirstName.Text = "";
            inputMiddleName.Text = "";
            inputLastName.Text = "";
            inputGender.SelectedValue = "Select Gender";
            //inputBirthDate.SelectedDate = ;
            inputWeight.Text = "";
            inputHeight.Text = "";
            //inputDateOfAdmission.Text = "";


            GenerateCode(newPatient.patientId.ToString());

            

        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {

        }

        protected void Set_Calendar(object Sender, EventArgs e)
        {
            int year = int.Parse(drpCalYear.SelectedValue);
            int month = int.Parse(drpCalMonth.SelectedValue);
            inputBirthDate.TodaysDate = new DateTime(year, month, 1);
        }
        protected void Set_Calendar2(object Sender, EventArgs e)
        {
            int year = int.Parse(drpCalYear2.SelectedValue);
            int month = int.Parse(drpCalMonth2.SelectedValue);
            inputDateOfAdmission.TodaysDate = new DateTime(year, month, 1);
        }
    }
}