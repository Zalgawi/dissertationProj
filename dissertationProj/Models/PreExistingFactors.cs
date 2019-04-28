using System;
using System.Collections;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Reflection;
using System.Web;

namespace dissertationProj.Models
{

    [ComplexType]
    public class PreExistingFactors
    {
        // yes = 1 | no = 0
        public Risk parity { get; set; }                
        //  yes = 4 | no = 0
        public Risk previousVTE { get; set; }
        // Provoked by major surgery?  yes = 3 | no = 0
        public Risk surgeryVTE { get; set; }
        //  yes = 3 | no = 0
        public Risk highRiskThrombophilia { get; set; }



        //  yes = 3 | no = 0
        public Risk medicalComorbities { get; set; }


        //public Risk cancer { get; set; }
        ////  yes = 3 | no = 0
        //public Risk heartFailure { get; set; }
        ////  yes = 3 | no = 0
        //public Risk activeSystemicLupusErythematosus { get; set; }
        ////  yes = 3 | no = 0
        //public Risk inflammatoryPolyarthropathy { get; set; }
        ////  yes = 3 | no = 0
        //public Risk inflammatoryBowelDisease { get; set; }
        ////  yes = 3 | no = 0
        //public Risk nephroticSyndrome { get; set; }
        ////  yes = 3 | no = 0
        //public Risk typeIDiabetesMellitusWithNephropathy { get; set; }
        ////  yes = 3 | no = 0
        //public Risk sickleCellDisease { get; set; }
        ////  yes = 3 | no = 0
        //public Risk currentIntravenousDrugUser { get; set; }
        // Family history of unprovoked / estrogen-related VTE in first-degree relative? yes = 1 | no = 0
        public Risk familyHistoryVTEFirstDegreeRelative { get; set; }
        //  yes = 1 | no = 0
        public Risk lowRiskThrombophilia { get; set; }
        //  yes = 1 | no = 0
        public Risk smoker { get; set; }
        //  yes = 1 | no = 0
        public Risk grossVaricoseVeins { get; set; }

        private List<Risk> allRisks;

        


        public PreExistingFactors()
        {
            allRisks = new List<Risk>();

            parity = new Risk("Parity", 1);
            
            previousVTE = new Risk("previousVTE", 4);
            
            surgeryVTE = new Risk("surgeryVTE", 3);
            highRiskThrombophilia = new Risk("highRiskThrombophilia", 3);
            medicalComorbities = new Risk("medicalComorbities", 3);
            familyHistoryVTEFirstDegreeRelative = new Risk("familyHistoryVTEFirstDegreeRelative", 1);
            lowRiskThrombophilia = new Risk("lowRiskThrombophilia", 1);
            smoker = new Risk("smoker", 1);
            grossVaricoseVeins = new Risk("grossVaricoseVeins", 1);

        }


        public List<Risk> AllRisks()
        {
            allRisks.Add(parity);
            allRisks.Add(previousVTE);
            allRisks.Add(surgeryVTE);
            allRisks.Add(highRiskThrombophilia);
            allRisks.Add(medicalComorbities);
            
            allRisks.Add(familyHistoryVTEFirstDegreeRelative);
            allRisks.Add(lowRiskThrombophilia);
            allRisks.Add(smoker);
            allRisks.Add(grossVaricoseVeins);
                                                  
            return allRisks;

        }

    }
}