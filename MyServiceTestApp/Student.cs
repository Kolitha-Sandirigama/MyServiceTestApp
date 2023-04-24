using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MyServiceTestApp
{
    [Serializable]
    public class Student
    {

        public int StudentId { get; set; }
        public int RollNo { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string Branch { get; set; }
        public string College { get; set; }

        public Student() { }

        public Student(int StudentId, int RollNo, string FirstName, string LastName, string Branch, string College) 
        {
            this.StudentId = StudentId;
            this.RollNo = RollNo;
            this.FirstName = FirstName;
            this.LastName = LastName;
            this.Branch = Branch;
            this.College = College;
        }

    }
}