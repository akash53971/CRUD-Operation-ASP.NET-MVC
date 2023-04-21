using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using CRUDAjax.Models;
using System.Configuration;
using System.IO;
using System.Data;
using System.Data.SqlClient;
using Newtonsoft.Json;

namespace CRUDAjax.Controllers
{
    public class HomeController : Controller
    {
        ClassDB objDB = new ClassDB();
        // GET: Home
        public ActionResult Index()
        {
            return View();
        }
        public ActionResult Category()
        {
            return View();
        }
        public JsonResult ListCategory()
        {
            return Json(objDB.ListCategory(), JsonRequestBehavior.AllowGet);
        }
        public JsonResult AddCategory(Class obj)
        {
            return Json(objDB.AddCategory(obj), JsonRequestBehavior.AllowGet);
        }
        public JsonResult GetCategorybyId(int CategoryId)
        {
            var Category = objDB.ListCategory().Find(x => x.CategoryId.Equals(CategoryId));
            return Json(Category, JsonRequestBehavior.AllowGet);
        }
        public JsonResult UpdateCategory(Class obj)
        {
            return Json(objDB.UpdateCategory(obj), JsonRequestBehavior.AllowGet);
        }
        public JsonResult DeleteCategory(int CategoryId)
        {
            return Json(objDB.DeleteCategory(CategoryId), JsonRequestBehavior.AllowGet);
        }
        public JsonResult BindCategory()
        {
            return Json(objDB.DDLCategory(), JsonRequestBehavior.AllowGet);
        }
        //Product
        public ActionResult Product()
        {
            return View();
        }
        public ActionResult ListProduct(int pageNumber, int pageSize)
        {
            string cs = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
            List<Class> lst = new List<Class>();
            using (SqlConnection con = new SqlConnection(cs))
            {
                using (SqlCommand cmd = new SqlCommand("GetProduct", con))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@PageNumber", pageNumber);
                    cmd.Parameters.AddWithValue("@PageSize", pageSize);

                    con.Open();
                    //SqlDataReader rdr = cmd.ExecuteReader();
                    SqlDataAdapter sda = new SqlDataAdapter(cmd);
                    var Class = new List<Class>();
                    DataTable dt = new DataTable();
                    sda.Fill(dt);
                        if (dt != null)
                        {
                            for (int i = 0; i < dt.Rows.Count; i++)
                            {
                                Class m = new Class();
                                m.SrNo = Convert.ToInt32(dt.Rows[i]["SrNo"]);
                                m.CategoryId = Convert.ToInt32(dt.Rows[i]["CatId"]);
                                m.CategoryName = dt.Rows[i]["CategoryName"].ToString();
                                m.ProductId = Convert.ToInt32(dt.Rows[i]["Id"]);
                                m.ProductName = dt.Rows[i]["ProductName"].ToString();
                                m.Action1 = "<a title='Update' class='waves-effect' href='javascript:;' onclick=\"GetbyId(" + m.ProductId + "," + m.CategoryId + ",'" + m.ProductName + "')\"><i class='fa fa-edit'></i>Edit</a>";
                                m.Action2 = "<a title='Delete' class='waves-effect' href='javascript:;' onclick=\"Delete(" + m.ProductId + ")\"><img src='/Images/icon-bin.jpg'/></a>";

                                lst.Add(m);
                            }
                        }
                        con.Close();
                    return Json(new { data = lst }, JsonRequestBehavior.AllowGet);
                }
            }
        }
        public JsonResult AddProduct(Class obj)
        {
            return Json(objDB.AddProduct(obj), JsonRequestBehavior.AllowGet);
        }
        public JsonResult UpdateProduct(Class obj)
        {
            return Json(objDB.UpdateProduct(obj), JsonRequestBehavior.AllowGet);
        }
        public JsonResult DeleteProduct(int ProductId)
        {
            return Json(objDB.DeleteProduct(ProductId), JsonRequestBehavior.AllowGet);
        }
    }
}