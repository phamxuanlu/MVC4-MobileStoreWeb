using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Net;
using System.Net.Mail;


namespace MobileStore.Utilities.Helper.Email
{
    public class MailServer
    {
        public string ServiceName { get; set; }
        public string HostName { get; set; }
        public Int32 Port { get; set; }
        public bool EnableSSL { get; set; }
        public NetworkCredential Credential { get; set; }


        private SmtpClient smtpClient;

        public MailServer()
        {
            smtpClient = new SmtpClient();
            EnableSSL = smtpClient.EnableSsl = true;
        }

        public MailServer(string host)
        {
            HostName = host;
            smtpClient = new SmtpClient(HostName);
            EnableSSL = smtpClient.EnableSsl = true;
        }

        public MailServer(string Host, int Port)
        {
            HostName = Host;
            this.Port = Port;
            smtpClient = new SmtpClient(HostName, this.Port);
            EnableSSL = smtpClient.EnableSsl = true;
        }

        public void LoginToMailServer(string username,string password)
        {
            Credential = new NetworkCredential(username, password);
            smtpClient.Credentials = Credential;
        }

        public void StartServer()
        {
            smtpClient = new SmtpClient(HostName, Port);
            smtpClient.UseDefaultCredentials = false;
            smtpClient.EnableSsl = EnableSSL = true;
            smtpClient.Credentials = Credential;
        }

        public void Send(Message emailMess)
        {
            if (smtpClient == null)
                throw new Exception("The server not config.");
            StartServer();
            try
            {
                smtpClient.Send(emailMess.Email);
            }
            catch(Exception e)
            {
                throw e;
            }
        }

       // public bool TestConnection(
    
    }
}
