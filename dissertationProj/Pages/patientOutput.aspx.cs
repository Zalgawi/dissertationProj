using dissertationProj.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace dissertationProj.Pages
{
    public partial class patientOutput : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

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


            /*

       if (riskAssessmentScore >= 4)
       {
           display: If total score ≥ 4 antenatally, consider thromboprophylaxis from the first trimester.
       }
       else (riskAssessmentScore == 3)
       {
           display: If total score 3 antenatally, consider thromboprophylaxis from 28 weeks.
       }
       else (riskAssessmentScore >= 2)
       {
           display: If total score ≥ 2 postnatally, consider thromboprophylaxis for at least 10 days.
       }
       else ()

      */


            //If admitted to hospital antenatally consider thromboprophylaxis.

            //If prolonged admission (≥ 3 days) or readmission to hospital within the puerperium consider thromboprophylaxis.

            //For patients with an identified bleeding risk, the balance of risks of bleeding and thrombosis should be discussed
            //in consultation with a haematologist with expertise in thrombosis and bleeding in pregnancy.

        }
    }
}