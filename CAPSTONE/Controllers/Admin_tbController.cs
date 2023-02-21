using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using CAPSTONE.Models;

namespace CAPSTONE.Controllers
{
    public class Admin_tbController : Controller
    {
        private CAPSTONEEntities db = new CAPSTONEEntities();

        // GET: Admin_tb
        public ActionResult Index()
        {
            return View(db.Admin_tb.ToList());
        }

        // GET: Admin_tb/Details/5
        public ActionResult Login(Admin_tb avm)
        {
            Admin_tb ad = db.Admin_tb.Where(x => x.Username == avm.Username && x.Password == avm.Password).SingleOrDefault();
            if (ad != null)
            {

                Session["id"] = ad.id.ToString();
                return Redirect("https://localhost:44315/Admin.aspx");

            }
            else
            {
                ViewBag.error = "Invalid username or password";

            }

            return View();
        }

        // GET: Admin_tb/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Admin_tb/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "id,Name,Username,Password")] Admin_tb admin_tb)
        {
            if (ModelState.IsValid)
            {
                db.Admin_tb.Add(admin_tb);
                db.SaveChanges();
                return RedirectToAction("Login");
            }

            return View(admin_tb);
        }

        // GET: Admin_tb/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Admin_tb admin_tb = db.Admin_tb.Find(id);
            if (admin_tb == null)
            {
                return HttpNotFound();
            }
            return View(admin_tb);
        }

        // POST: Admin_tb/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "id,Name,Username,Password")] Admin_tb admin_tb)
        {
            if (ModelState.IsValid)
            {
                db.Entry(admin_tb).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(admin_tb);
        }

        // GET: Admin_tb/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Admin_tb admin_tb = db.Admin_tb.Find(id);
            if (admin_tb == null)
            {
                return HttpNotFound();
            }
            return View(admin_tb);
        }

        // POST: Admin_tb/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Admin_tb admin_tb = db.Admin_tb.Find(id);
            db.Admin_tb.Remove(admin_tb);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }
    }
}
