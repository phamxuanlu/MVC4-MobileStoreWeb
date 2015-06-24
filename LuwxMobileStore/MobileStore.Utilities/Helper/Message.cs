using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Net.Mail;

namespace MobileStore.Utilities.Helper.Email
{
    public class Message
    {
        public string From { set { emailMess.From = new MailAddress(value); } }
        public string ToEmail { set { emailMess.To.Add(value); } }
        public string[] ToEmails {  set { value.ToList().ForEach(x => { emailMess.To.Add(x); }); } }
        public string Subject {  set { emailMess.Subject = value; } }
        public string Body {  set { emailMess.Body = value; } }
        public bool AllowHtmlBody {  set { emailMess.IsBodyHtml = value; } }
        public MailMessage Email { get { return emailMess; } }
        private MailMessage emailMess;

   
        public Message()
        {
            emailMess = new MailMessage();
        }

        public void Attach(string Filename)
        {
            Attachment att = new Attachment(Filename);
            emailMess.Attachments.Add(att);
        }

        public void Attach(string[] FileNames)
        {
            Array.ForEach(FileNames, (x) => {
                Attachment att = new Attachment(x);
                emailMess.Attachments.Add(att);
            });
        }
    }
}
