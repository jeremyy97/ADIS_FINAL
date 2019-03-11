using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entities
{
    public class Preferencia
    {
        public int id { set; get; }
        public int estudiante { set; get; }
        public string dia { set; get; }
        public string hora { set; get; }
        public string cede { set; get; }
    }
}
