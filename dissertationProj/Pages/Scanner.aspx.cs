using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;
using System.Drawing.Imaging;
using System.IO;
using ZXing;

namespace dissertationProj.Pages
{
    public partial class Scanner : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //MediaStreamTrack.getSources(gotSources);

            if (!Page.User.Identity.IsAuthenticated)
            {

                Response.Redirect("/Account/Login", true);

            }
        }

        protected void patientQRScanner_Click(object sender, EventArgs e)
            
        {
            ReadQRCode();
        }
        
        //READ CODE FROM QR IMAGE
        private void ReadQRCode()
        {
            var reader = new BarcodeReader();
            string filename = Path.Combine(Request.MapPath("~/images/"), "QRImage.jpg");
            //Detatch and decode the barcode inside the bitmap
            var result = reader.Decode(new Bitmap(filename));
            if (result != null)
            {
                lblQRCode.Text = "QR Code : " + result.Text;
            }
        }
    }
}