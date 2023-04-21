using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;
using System.Web;
using System.Web.Mvc;

namespace CRUDAjax.Models
{
    public class ClassDB
    {
        //declare connection string
        string cs = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;

        //Return list of all Category
        public List<Class> ListCategory()
        {
            List<Class> lst = new List<Class>();
            using (SqlConnection con = new SqlConnection(cs))
            {
                var Class = new List<Class>();
                con.Open();
                SqlCommand com = new SqlCommand("GetCategory", con);
                com.CommandType = CommandType.StoredProcedure;
                SqlDataReader rdr = com.ExecuteReader();
                while (rdr.Read())
                {
                    Class m = new Class();
                    m.SrNo = Convert.ToInt32(rdr["SrNo"]);
                    m.CategoryId = Convert.ToInt32(rdr["Id"]);
                    m.CategoryName = rdr["CategoryName"].ToString();
                    m.Status = Convert.ToInt32(rdr["Status"]);
                    if (m.Status == 1) 
                    m.StatusStr = "<span class='badge badge-pill text-success fw-bolder' style='font-size:12px;color: #bb0909;'>Active</span>";
                    else
                        m.StatusStr = "<span class='badge badge-pill fs-16px fw-bolder' style='font-size:12px;color: #bb0909;'>InActive</span>";
                    lst.Add(m);
                }
            }
            return lst;
        }

        //Method for Adding an Category
        public int AddCategory(Class obj)
        {
            int i;
            using (SqlConnection con = new SqlConnection(cs))
            {
                con.Open();
                SqlCommand com = new SqlCommand("InsertCategory", con);
                com.CommandType = CommandType.StoredProcedure;
                com.Parameters.AddWithValue("@CategoryName", obj.CategoryName);
                com.Parameters.AddWithValue("@Status", obj.Status);
                i = com.ExecuteNonQuery();
            }
            return 1;
        }

        //Method for Updating Category record
        public int UpdateCategory(Class obj)
        {
            int i;
            using (SqlConnection con = new SqlConnection(cs))
            {
                con.Open();
                SqlCommand com = new SqlCommand("UpdateCategory", con);
                com.CommandType = CommandType.StoredProcedure;
                com.Parameters.AddWithValue("@Id", obj.CategoryId);
                com.Parameters.AddWithValue("@CategoryName", obj.CategoryName);
                com.Parameters.AddWithValue("@Status", obj.Status);
                i = com.ExecuteNonQuery();
            }
            return 1;
        }

        //Method for Deleting an Category
        public int DeleteCategory(int CategoryId)
        {
            int i;
            using (SqlConnection con = new SqlConnection(cs))
            {
                con.Open();
                SqlCommand com = new SqlCommand("DeleteCategory", con);
                com.CommandType = CommandType.StoredProcedure;
                com.Parameters.AddWithValue("@Id", CategoryId);
                i = com.ExecuteNonQuery();
            }
            return 1;
        }
        // Subcategory
        //Bind list of ddl Category for Subcategory
        public List<Class> DDLCategory()
        {
            List<Class> lst = new List<Class>();
            using (SqlConnection con = new SqlConnection(cs))
            {
                con.Open();
                SqlCommand com = new SqlCommand("Select Id, CategoryName From Category where Status=1", con);
                com.CommandType = CommandType.Text;
                SqlDataReader rdr = com.ExecuteReader();
                while (rdr.Read())
                {
                    lst.Add(new Class
                    {
                        CategoryId = Convert.ToInt32(rdr["Id"]),
                        CategoryName = rdr["CategoryName"].ToString(),
                    });
                }
                return lst;
            }
        }
        //Method for Adding an Category
        public int AddProduct(Class obj)
        {
            int i;
            using (SqlConnection con = new SqlConnection(cs))
            {
                con.Open();
                SqlCommand com = new SqlCommand("InsertProduct", con);
                com.CommandType = CommandType.StoredProcedure;
                com.Parameters.AddWithValue("@CatId", obj.CategoryId);
                com.Parameters.AddWithValue("@ProductName", obj.ProductName);
                i = com.ExecuteNonQuery();
            }
            return 1;
        }
        //Method for Updating Category record
        public int UpdateProduct(Class obj)
        {
            int i;
            using (SqlConnection con = new SqlConnection(cs))
            {
                con.Open();
                SqlCommand com = new SqlCommand("UpdateProduct", con);
                com.CommandType = CommandType.StoredProcedure;
                com.Parameters.AddWithValue("@Id", obj.ProductId);
                com.Parameters.AddWithValue("@CatId", obj.CategoryId);
                com.Parameters.AddWithValue("@ProductName", obj.ProductName);
                i = com.ExecuteNonQuery();
            }
            return 1;
        }
        //Method for Deleting an Product
        public int DeleteProduct(int ProductId)
        {
            int i;
            using (SqlConnection con = new SqlConnection(cs))
            {
                con.Open();
                SqlCommand com = new SqlCommand("DeleteProduct", con);
                com.CommandType = CommandType.StoredProcedure;
                com.Parameters.AddWithValue("@Id", ProductId);
                i = com.ExecuteNonQuery();
            }
            return 1;
        }
    }
}