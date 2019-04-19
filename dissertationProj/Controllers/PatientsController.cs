using dissertationProj.Models;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.Owin;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web;
using System.Web.Http;

namespace dissertationProj.Controllers
{
    public class PatientsController : ApiController


    {
        
        [HttpGet]
        public IHttpActionResult GetDataTables()
        {

            ApplicationUserManager _userManager = HttpContext.Current.GetOwinContext().GetUserManager<ApplicationUserManager>();
            ApplicationUser user = _userManager.FindByName<ApplicationUser, string>(HttpContext.Current.User.Identity.Name);

            List<Patient> records;

            using (var _dbContext = new ApplicationDbContext())
            {
                records = new List<Patient>(_dbContext.Patients.ToList());
            }

            return Json(records);
        }

        [HttpGet]
        public IHttpActionResult GetPatient(int patientId)
        {

            Patient patient;
            using(var _dbContext = new ApplicationDbContext())
            {
                patient = _dbContext.Patients.FirstOrDefault(c => c.patientId == patientId);
                if(patient == null)
                {
                    patient = null;
                }
            }

            return Json(patient);

        }

        [HttpGet]
        public IHttpActionResult CheckPatientId(int patientId)
        {

            bool validId = true;

            using (var _dbContext = new ApplicationDbContext())
            {


                Patient patient = _dbContext.Patients.FirstOrDefault(c => c.patientId == patientId);
                if (patient == null)
                {
                    validId = false;
                }
            }

            return Json(validId);

        }

    }
}