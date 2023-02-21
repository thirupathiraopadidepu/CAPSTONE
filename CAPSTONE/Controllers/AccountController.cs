using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Security;
using CAPSTONE.Models;
using System.Linq;

namespace CAPSTONE.Controllers
{
    public class AccountController : Controller
    {
        CAPSTONEEntities db =new CAPSTONEEntities();
        // GET: Account
        public ActionResult Login()
        {
            return View();
        }
        public ActionResult Signup()
        {
            return View();
        }
        [HttpPost]
        public ActionResult Login(LoginViewModel credentials)
        {
            bool uaerExist = db.UsersTbls.Any(x => x.Email == credentials.Email && x.Password == credentials.Password);
            UsersTbl u = db.UsersTbls.FirstOrDefault(x => x.Email == credentials.Email && x.Password == credentials.Password);
            if (uaerExist)
            {
                FormsAuthentication.SetAuthCookie(u.Username, false);
                return RedirectToAction("Index", "Home");   

            }
            ModelState.AddModelError("", "Username or Password is wrong");
            return View();
        }
        [HttpPost]
        public ActionResult Signup(UsersTbl userinfo)
        {
            db.UsersTbls.Add(userinfo);
            db.SaveChanges();
            return RedirectToAction("Login");
        }
        public ActionResult Signout()
        {
            FormsAuthentication.SignOut();

            return RedirectToAction("Login");
        }
    }
}