using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using WebApplication1.Models;

namespace WebApplication1.Controllers
{
    public class Inspiration_ProfilesController : Controller
    {
        private LibreriaDBEntities db = new LibreriaDBEntities();

        // GET: Inspiration_Profiles
        public ActionResult Index()
        {
            return View(db.Inspiration_Profiles.ToList());
        }

        // GET: Inspiration_Profiles/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Inspiration_Profiles inspiration_Profiles = db.Inspiration_Profiles.Find(id);
            if (inspiration_Profiles == null)
            {
                return HttpNotFound();
            }
            return View(inspiration_Profiles);
        }

        // GET: Inspiration_Profiles/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Inspiration_Profiles/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "ID,Nombre,email")] Inspiration_Profiles inspiration_Profiles)
        {
            if (ModelState.IsValid)
            {
                db.Inspiration_Profiles.Add(inspiration_Profiles);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(inspiration_Profiles);
        }

        // GET: Inspiration_Profiles/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Inspiration_Profiles inspiration_Profiles = db.Inspiration_Profiles.Find(id);
            if (inspiration_Profiles == null)
            {
                return HttpNotFound();
            }
            return View(inspiration_Profiles);
        }

        // POST: Inspiration_Profiles/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "ID,Nombre,email")] Inspiration_Profiles inspiration_Profiles)
        {
            if (ModelState.IsValid)
            {
                db.Entry(inspiration_Profiles).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(inspiration_Profiles);
        }

        // GET: Inspiration_Profiles/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Inspiration_Profiles inspiration_Profiles = db.Inspiration_Profiles.Find(id);
            if (inspiration_Profiles == null)
            {
                return HttpNotFound();
            }
            return View(inspiration_Profiles);
        }

        // POST: Inspiration_Profiles/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Inspiration_Profiles inspiration_Profiles = db.Inspiration_Profiles.Find(id);
            db.Inspiration_Profiles.Remove(inspiration_Profiles);
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
