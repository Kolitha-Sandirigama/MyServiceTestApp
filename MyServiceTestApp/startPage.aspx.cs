using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Threading.Tasks;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyServiceTestApp
{
    public partial class startPage : System.Web.UI.Page
    {
        protected async void Page_Load(object sender, EventArgs e)
        {
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;      // disable the use of unobtrusive JavaScript for client - side validation
            if (!Page.IsPostBack)
            {
                string url = "http://localhost/MyService/api/student";
                HttpClient client = new HttpClient();

                try
                {
                    HttpResponseMessage response = await client.GetAsync(url);
                    string responseContent = await response.Content.ReadAsStringAsync();
                    List<Student> foos = JsonConvert.DeserializeObject<List<Student>>(responseContent);

                    gvStudent.DataSource = foos;
                    gvStudent.DataBind();

                }
                catch(HttpRequestException ex) 
                {
                    Console.WriteLine(ex.Message);
                }

            }
        }
    }
}