using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

namespace dissertationProj.Models
{
    [ComplexType]
    public class Risk
    {

        public string riskName { get; set; }
        public int riskValue { get; set; }
        public bool riskSelected { get; set; }
        

        public Risk(string name, int value)
        {
            riskName = name;
            riskValue = value;
        }


        public Risk()
        {

        }
    }
}