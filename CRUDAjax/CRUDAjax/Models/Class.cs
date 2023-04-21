using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;
using System.Text;
using System.Threading.Tasks;

namespace CRUDAjax.Models
{
    public class Class
    {
        public int SrNo { get; set; }
        public int CategoryId { get; set; }
        public string CategoryName { get; set; }
        public int ProductId { get; set; }
        public string ProductName { get; set; }
        public int Status { get; set; }
        public string StatusStr { get; set; }
        public string Action1 { get; set; }
        public string Action2 { get; set; }
        public string page { get; set; }
        public string length { get; set; }
        public string pdraw { get; set; }
    }
    public class Pagination
    {
        public DatatablePostData data { get; set; }
    }
    public class DatatablePostData
    {
        public int draw { get; set; }
        public int start { get; set; }
        public int length { get; set; }
        public List<Column> columns { get; set; }
        public Search search { get; set; }
        public List<Order> order { get; set; }
    }

    public class Column
    {
        public string data { get; set; }
        public string name { get; set; }
        public string searchable { get; set; }
        public string orderable { get; set; }
        public Search search { get; set; }
    }

    public class Search
    {
        public string value { get; set; }
        public string regex { get; set; }
    }

    public class Order
    {
        public int column { get; set; }
        public string dir { get; set; }
    }
    public class DTResponse
    {
        public int recordsTotal { get; set; }
        public int recordsFiltered { get; set; }
        public string data { get; set; }
    }
}
    public class DBAccess
    {
        public int Id { get; set; }
        public bool Success { get; set; }
        public string Message { get; set; }
    }
