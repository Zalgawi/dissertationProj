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
    public class TransientFactors 
    {
    
        // Any surgical procedure in pregnancy or puerperium except immediate repair of the
        // perineum, e.g.appendicectomy, postpartum sterilisation yes = 3 | no = 0
        public Risk surgicalProcedure { get; set; }
        // yes = 3 | no = 0
        public Risk Hyperemesis { get; set; }
        // yes OHSS(first trimester only = 4 | no = 0
        public Risk OHSS { get; set; }
        //  yes = 1 | no = 0
        public Risk currentSystemicInfection { get; set; }
        //  yes = 1 | no = 0
        public Risk immobilityOrDehydration { get; set; }

        private List<Risk> allRisks;

       

        public TransientFactors()
        {
            allRisks = new List<Risk>();

            surgicalProcedure = new Risk("surgicalProcedure", 3);
            Hyperemesis = new Risk("Hyperemesis", 3);
            OHSS = new Risk("OHSS", 4);
            currentSystemicInfection = new Risk("currentSystemicInfection", 1);
            immobilityOrDehydration = new Risk("immobilityOrDehydration", 1);

        }

        public List<Risk> AllRisks()
        {
            allRisks.Add(surgicalProcedure);
            allRisks.Add(Hyperemesis);
            allRisks.Add(OHSS);
            allRisks.Add(currentSystemicInfection);
            allRisks.Add(immobilityOrDehydration);

            return allRisks;

        }
    }
}