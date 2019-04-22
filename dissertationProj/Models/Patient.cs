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
        public string Id { get; set; }
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

        public DateTime ?dateOfAdmission { get; set; }

        



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
                //BMI uses meters whereas my height intake is in cm, therefore I must convert cm into m by dividing it by 100.
                //
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

    }
}