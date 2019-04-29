using System;
using System.Collections;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Reflection;
using System.Web;

namespace dissertationProj.Models
{
    public class Patient 
    {
        //The patients ID
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int patientId { get; set; }

      //  [ForeignKey("ApplicationUser")]
        //ID of doctor that created patient record.
        public string Id { get; set; }

        //ID of doctor that last edited patient record.
        public string lastEditedId { get; set; }
      //  public virtual ApplicationUser ApplicationUser { get; set; }

        /*  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            General Patient Data
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~     
        */

        public string firstName { get; set; }

        public string middleName { get; set; }

        public string lastName { get; set; }

        public string gender { get; set; }

        public DateTime ?birthdate { get; set; }

        public decimal weight { get; set; }

        public decimal height { get; set; }

        public string civilStatus { get; set; }
        //  0 = no, 1=>30 2=>40

        public decimal bmi { get; set; }

        public int noOfPregnancies { get; set; }

        public DateTime ?dateOfAdmission { get; set; }
        public DateTime ?dateOfLastEdit { get; set; }

        



        /*  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            Pre Existing risk factors
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  */

        public PreExistingFactors preExistingFactors { get; set; }

        /*  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            Obstetric risk factors
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  */

        public ObstetricFactors ObstetricFactors { get; set; }

        /*  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            Transient risk factors
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  */

        public TransientFactors TransientFactors { get; set; }



        public int riskAssessmentScore { get; set; }


        private ApplicationDbContext _dbContext;


       
        public Patient()
        {
            this._dbContext = new ApplicationDbContext();
            this.preExistingFactors = new PreExistingFactors();
            this.ObstetricFactors = new ObstetricFactors();
            this.TransientFactors = new TransientFactors();
            this.riskAssessmentScore = 0;
            preExistingFactors.parity.riskSelected = true;
        }

       
        public void AddToDatabase()
        {
            _dbContext.Patients.Add(this);
            _dbContext.SaveChanges();

        }



        public void bmiCalculator()
            //The formula to calculate a BMI is kg/m^2   (^2 means squared)
        {
            if(height != 0)
            {
                /*BMI uses meters whereas my height intake is in cm, therefore I must
                convert cm into m by dividing it by 100.*/
                var bmiHeight = (this.height / 100) * (this.height / 100);
                var bmiWeight = this.weight;

                var finalBMIcalculation = bmiWeight / bmiHeight;

                this.bmi = finalBMIcalculation;

               
            }
            else
            {
                Exception e = new Exception("One of required fields is empty");
                throw e;
            }
            

        }

        //Calculates bmi and total risk score. Prevents repeating same code multiple times.
        public void calculatePatientScore()
        {

            this.riskAssessmentScore = 0;
            this.riskAssessmentScore += this.preExistingFactors.AllRisks().Where(c => c.riskSelected == true).Sum(c => c.riskValue);

            var today = DateTime.Today;
            // Calculate the age.
            var age = today.Year - this.birthdate.Value.Year;
            // Go back to the year the person was born in case of a leap year
            if (this.birthdate > today.AddYears(-age)) age--;


            if (age > 35)
            {
                this.riskAssessmentScore += 1;
            }

            this.bmiCalculator();

            if (this.bmi > 40)
            {
                this.riskAssessmentScore += 2;
            }
            else if (this.bmi > 30)
            {
                this.riskAssessmentScore += 1;
            }
        }

    }
}