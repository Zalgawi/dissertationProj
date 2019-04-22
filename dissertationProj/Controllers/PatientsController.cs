﻿using dissertationProj.Models;
using dissertationProj.Models.Ajax_Models;
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

            ApplicationDbContext _dbContext = new ApplicationDbContext();

            List<PatientDoctorAjaxModel> records = new List<PatientDoctorAjaxModel>();
            List<Patient> patients;
           
                patients = new List<Patient>(_dbContext.Patients.ToList());

                foreach(var patient in patients)
                {
                    var personnel = _dbContext.Users.FirstOrDefault(c => c.Id == patient.Id);
                    PatientDoctorAjaxModel modelToAdd = new PatientDoctorAjaxModel()
                    {
                        patient = patient,
                        personnel = personnel
                    };

                    records.Add(modelToAdd);
                }

                return Json(records);
            

            
        }

        [HttpGet]
        public IHttpActionResult GetPatient(int patientId)
        {

            Patient patient;
            PatientDoctorAjaxModel model = new PatientDoctorAjaxModel();
            using(var _dbContext = new ApplicationDbContext())
            {
                patient = _dbContext.Patients.FirstOrDefault(c => c.patientId == patientId);
                model.patient = patient;

                var personnel = _dbContext.Users.FirstOrDefault(c => c.Id == patient.Id);
                model.personnel = personnel;
            }

            return Json(model);

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