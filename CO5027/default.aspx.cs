using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CO5027
{
    public partial class _default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                SearchProducts();
            }
        }
        
        private void SearchProducts()
        {
            string value = SearchText.Text;
            value = value.Replace("'", "['']");
            SqlDataSource1.SelectCommand = "SELECT productID, productName, productPlatform, productPrice, productAvailability, productDateReleased, productType, productPhoto FROM dbo.GameProduct WHERE (productName LIKE '" + value.ToString() + "%')"; 
                }
        protected void SearchButton_Click(object sender, EventArgs e)
        {

            SearchProducts();
        }
    
    }
}