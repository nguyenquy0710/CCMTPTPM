using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using FaceShop.Models;

namespace FaceShop.Models
{
    public partial class Categories
    {
        private static DBDataContext db = new DBDataContext();

        //get list Danh Muc
        public static List<Category> GetList
        {
            get
            {
                return db.Categories.ToList();
            }
        }
    }
}