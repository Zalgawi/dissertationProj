using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace dissertationProj.Models.Ajax_Models
{
    public class PatientDoctorAjaxModel
    {

        public Patient patient { get; set; }
        public ApplicationUser personnel { get; set; }

        public PatientDoctorAjaxModel()
        {

        }
    }
}