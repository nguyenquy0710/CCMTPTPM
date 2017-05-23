using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace FaceShop.Models
{
    public partial class Products
    {
        private static DBDataContext db = new DBDataContext();

        //lay danh sach san pham
        public static List<Product> GetList
        {
            get
            {
                return db.Products.ToList();
            }
        }
    }
}