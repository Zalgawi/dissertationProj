using dissertationProj.Models;
using dissertationProj.Models.Ajax_Models;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.Owin;
using System;
using System.Collections.Generic;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.Http;
using ZXing;

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
                Doctor newDoctor = new Doctor();
                newDoctor.firstName = personnel.firstName;
                newDoctor.secondName = personnel.secondName;
                newDoctor.lastName = personnel.lastName;
                newDoctor.Id = personnel.Id;

                PatientDoctorAjaxModel modelToAdd = new PatientDoctorAjaxModel()
                    {
                        patient = patient,
                        personnel = newDoctor
                    };

                    records.Add(modelToAdd);
                }

                return Json(records);
            

            
        }

        [HttpGet]
        public IHttpActionResult GetPatient(int patientId)
        {

            var _dbContext = new ApplicationDbContext();

            Patient patient;
            PatientDoctorAjaxModel model = new PatientDoctorAjaxModel();
           
                patient = _dbContext.Patients.FirstOrDefault(c => c.patientId == patientId);
                model.patient = patient;

                var personnel = _dbContext.Users.FirstOrDefault(c => c.Id == patient.Id);
                Doctor newDoctor = new Doctor();
                newDoctor.firstName = personnel.firstName;
                newDoctor.secondName = personnel.secondName;
                newDoctor.lastName = personnel.lastName;
                newDoctor.Id = personnel.Id;

                model.personnel = newDoctor;

            

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

        [HttpPost]
        public IHttpActionResult ScanPatient(HttpRequestMessage dataURI)
        {
            


            
            string stringName = dataURI.Content.ReadAsStringAsync().Result;

            var base64Data = Regex.Match(stringName, @"data:image/(?<type>.+?),(?<data>.+)").Groups["data"].Value;
            var binData = Convert.FromBase64String(base64Data);
            var reader = new BarcodeReader { AutoRotate = true, };

            MemoryStream imageStream = new MemoryStream(binData);


            //Detatch and decode the barcode inside the bitmap
            try
            {
                var imageBitmap = new Bitmap(imageStream);

                var result = reader.Decode(imageBitmap);
                if (result != null)
                {
                    var patientIdString = result.ToString();

                    

                    string url = "PatientOutput?id=" + patientIdString;

                    return Json(new { redirect = true, redirectURL = url, error = "" });
                }
                else
                {
                    return Json(new { redirect = false, redirectURL = "", error = "Null result from ZXing decoding Bitmap of imageStream" });
                }
            }
            catch (Exception e)
            {
                return Json(new { redirect=false, redirectURL = "", error = e.ToString() });
            }






            
        }

    }
}