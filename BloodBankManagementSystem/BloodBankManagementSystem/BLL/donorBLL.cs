using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BloodBankManagementSystem.BLL
{
    class donorBLL
    {
        public int donor_id { get; set; }
        public string donor_name { get; set; }
        public string last_donation_date { get; set; }
        public string contact { get; set; }
        public string gender { get; set; }
        public string address { get; set; }
        public string blood_group { get; set; }
        public DateTime added_date { get; set; }
        public string image_name { get; set; }
        public int added_by { get; set; }
    }
}
