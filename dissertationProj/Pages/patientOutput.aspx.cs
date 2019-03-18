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




        }
    }
}