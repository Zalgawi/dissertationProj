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
    public class ObstetricFactors 
    {
    


        //  yes = 1 | no = 0
        public Risk preEclampsiaInCurrentPregnancy { get; set; }
        // ART/IVF (antenatal only) yes = 1 | no = 0
        public Risk ARTorIVF { get; set; }
        //  yes = 1 | no = 0
        public Risk multiplePregnancy { get; set; }
        //  yes = 2 | no = 0
        public Risk caesareanSectionInLabour { get; set; }
        //  yes = 1 | no = 0
        public Risk electiveCaesareanSection { get; set; }
        // Mid-cavity or rotational operative delivery yes = 1 | no = 0
        public Risk operativeDelivery { get; set; }
        // Prolonged labour (> 24 hours) yes = 1 | no = 0
        public Risk prolongedLabour { get; set; }
        // PPH (> 1 litre or transfusion) yes = 1 | no = 0
        public Risk PPH { get; set; }
        // Preterm birth < 37+0 weeks in current pregnancy yes = 1 | no = 0
        public Risk pretermBirth { get; set; }
        // Stillbirth in current pregnancy yes = 1 | no = 0
        public Risk stillBirth { get; set; }

        private List<Risk> allRisks;

        


        public ObstetricFactors()
        {
            allRisks = new List<Risk>();

            preEclampsiaInCurrentPregnancy = new Risk("preEclampsiaInCurrentPregnancy", 1);
            ARTorIVF = new Risk("ARTorIVF", 1);
            multiplePregnancy = new Risk("multiplePregnancy", 1);
            caesareanSectionInLabour = new Risk("caesareanSectionInLabour", 2);
            electiveCaesareanSection = new Risk("electiveCaesareanSection", 1);
            operativeDelivery = new Risk("operativeDelivery", 1);
            prolongedLabour = new Risk("prolongedLabour", 1);
            PPH = new Risk("PPH", 1);
            pretermBirth = new Risk("pretermBirth", 1);
            stillBirth = new Risk("stillBirth", 1);

            


        }

        public List<Risk> AllRisks()
        {
            allRisks.Add(preEclampsiaInCurrentPregnancy);
            allRisks.Add(ARTorIVF);
            allRisks.Add(multiplePregnancy);
            allRisks.Add(caesareanSectionInLabour);
            allRisks.Add(electiveCaesareanSection);
            allRisks.Add(operativeDelivery);
            allRisks.Add(prolongedLabour);
            allRisks.Add(PPH);
            allRisks.Add(pretermBirth);
            allRisks.Add(stillBirth);

            return allRisks;

        }
    }
}