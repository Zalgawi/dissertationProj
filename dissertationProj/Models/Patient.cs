using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

namespace dissertationProj.Models
{
    public class Patient
    {
        //The patients ID
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int patiendId { get; set; }

        public string firstName { get; set; }

        public string middleName { get; set; }

        public string lastName { get; set; }

        public string gender { get; set; }

        public DateTime birthdate { get; set; }

        public decimal weight { get; set; }

        public decimal height { get; set; }


        /*  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            Pre-existing risk factors
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~          
         */

        //Parity is the amount of pregnancies had
        public bool parity { get; set; }
        // single, married, seperated or divorced
        public string civilStatus { get; set; }
        //  yes = 4 | no = 0
        public bool previousVTE { get; set; }
        // Provoked by major surgery?  yes = 3 | no = 0
        public bool surgeryVTE { get; set; }
        //  yes = 3 | no = 0
        public bool highRiskThrombophilia { get; set; }
        //  yes =  | no = 
        public bool cancer { get; set; }
        //  yes = 3 | no = 0
        public bool heartFailure { get; set; }
        //  yes = 3 | no = 0
        public bool activeSystemicLupusErythematosus { get; set; }
        //  yes = 3 | no = 0
        public bool inflammatoryPolyarthropathy { get; set; }
        //  yes = 3 | no = 0
        public bool inflammatoryBowelDisease { get; set; }
        //  yes = 3 | no = 0
        public bool nephroticSyndrome { get; set; }
        //  yes = 3 | no = 0
        public bool typeIDiabetesMellitusWithNephropathy { get; set; }
        //  yes = 3 | no = 0
        public bool sickleCellDisease { get; set; }
        //  yes = 3 | no = 0
        public bool currentInratvenousDrugUser { get; set; }
        // Family history of unprovoked / estrogen-related VTE in first-degree relative? yes = 1 | no = 0
        public bool familyHistoryVTEFirstDegreeRelative { get; set; }
        //  yes = 1 | no = 0
        public bool lowRiskThrombophilia { get; set; }
        //  yes = 1 | no = 0
        public bool smoker { get; set; }
        //  yes = 1 | no = 0
        public bool grossVaricoseVeins { get; set; }

        //  0 = no, 1=>30 2=>40
        public int obesity { get; set; }


        /*  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            Obstetric risk factors
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~     
         */

        //  yes = 1 | no = 0
        public bool preEclampsiaInCurrentPregnancy { get; set; }
        // ART/IVF (antenatal only) yes = 1 | no = 0
        public bool ARTorIVF { get; set; }
        //  yes = 1 | no = 0
        public bool multiplePregnancy { get; set; }
        //  yes = 2 | no = 0
        public bool caesareanSectionInLabour { get; set; }
        //  yes = 1 | no = 0
        public bool electiveCaesareanSection { get; set; }
        // Mid-cavity or rotational operative delivery yes = 1 | no = 0
        public bool operativeDelivery { get; set; }
        // Prolonged labour (> 24 hours) yes = 1 | no = 0
        public bool prolongedLabour { get; set; }
        // PPH (> 1 litre or transfusion) yes = 1 | no = 0
        public bool PPH { get; set; }
        // Preterm birth < 37+0 weeks in current pregnancy yes = 1 | no = 0
        public bool pretermBirth { get; set; }
        // Stillbirth in current pregnancy yes = 1 | no = 0
        public bool stillBirth { get; set; }

        /*  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            Transient risk factors
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~     
         */

        // Any surgical procedure in pregnancy or puerperium except immediate repair of the
        // perineum, e.g.appendicectomy, postpartum sterilisation yes = 3 | no = 0
        public bool surgicalProcedure { get; set; }
        // yes = 3 | no = 0
        public bool Hyperemesis { get; set; }
        // yes OHSS(first trimester only = 4 | no = 0
        public bool OHSS { get; set; }
        //  yes = 1 | no = 0
        public bool currentSystemicInfection { get; set; }
        //  yes = 1 | no = 0
        public bool immobilityOrDehydration { get; set; }


        //public string middleName { get; set; }

        private ApplicationDbContext _dbContext;

        public Patient()
        {
            this._dbContext = new ApplicationDbContext();
        }



        public Patient(string firstName, string middleName, string lastName, string gender, DateTime birthdate, decimal weight, decimal height, bool parity, string civilStatus,
                       bool previousVTE, bool surgeryVTE, bool highRiskThrombophilia, bool cancer, bool heartFailure, bool activeSystemicLupusErythematosus,
                       bool inflammatoryPolyarthropathy, bool inflammatoryBowelDisease, bool nephroticSyndrome, bool typeIDiabetesMellitusWithNephropathy,
                       bool sickleCellDisease, bool currentInratvenousDrugUser, bool familyHistoryVTEFirstDegreeRelative, bool lowRiskThrombophilia, bool smoker,
                       bool grossVaricoseVeins, int obesity, bool preEclampsiaInCurrentPregnancy, bool ARTorIVF, bool multiplePregnancy, bool caesareanSectionInLabour,
                       bool electiveCaesareanSection, bool operativeDelivery, bool prolongedLabour, bool PPH, bool pretermBirth, bool stillBirth, bool surgicalProcedure,
                       bool Hyperemesis, bool OHSS, bool currentSystemicInfection, bool immobilityOrDehydration)
        {
            this._dbContext = new ApplicationDbContext();
            this.firstName = firstName;
            this.middleName = middleName;
            this.lastName = lastName;
            this.gender = gender;
            this.birthdate = birthdate;
            this.weight = weight;
            this.height = height;
            this.parity = parity;
            this.civilStatus = civilStatus;
            this.previousVTE = previousVTE;
            this.surgeryVTE = surgeryVTE;
            this.highRiskThrombophilia = highRiskThrombophilia;
            this.cancer = cancer;
            this.heartFailure = heartFailure;
            this.activeSystemicLupusErythematosus = activeSystemicLupusErythematosus;
            this.inflammatoryPolyarthropathy = inflammatoryPolyarthropathy;
            this.inflammatoryBowelDisease = inflammatoryBowelDisease;
            this.nephroticSyndrome = nephroticSyndrome;
            this.typeIDiabetesMellitusWithNephropathy = typeIDiabetesMellitusWithNephropathy;
            this.sickleCellDisease = sickleCellDisease;
            this.currentInratvenousDrugUser = currentInratvenousDrugUser;
            this.familyHistoryVTEFirstDegreeRelative = familyHistoryVTEFirstDegreeRelative;
            this.lowRiskThrombophilia = lowRiskThrombophilia;
            this.smoker = smoker;
            this.grossVaricoseVeins = grossVaricoseVeins;
            this.obesity = obesity;
            this.preEclampsiaInCurrentPregnancy = preEclampsiaInCurrentPregnancy;
            this.ARTorIVF = ARTorIVF;
            this.multiplePregnancy = multiplePregnancy;
            this.caesareanSectionInLabour = caesareanSectionInLabour;
            this.electiveCaesareanSection = electiveCaesareanSection;
            this.operativeDelivery = operativeDelivery;
            this.prolongedLabour = prolongedLabour;
            this.PPH = PPH;
            this.pretermBirth = pretermBirth;
            this.stillBirth = stillBirth;
            this.surgicalProcedure = surgicalProcedure;
            this.Hyperemesis = Hyperemesis;
            this.OHSS = OHSS;
            this.currentSystemicInfection = currentSystemicInfection;
            this.immobilityOrDehydration = immobilityOrDehydration;

        }

        public void AddToDatabase()
        {
            _dbContext.Patients.Add(this);
            _dbContext.SaveChanges();

        }

        public int AssessRisk()
        {
            return 0;
        }



    }
}