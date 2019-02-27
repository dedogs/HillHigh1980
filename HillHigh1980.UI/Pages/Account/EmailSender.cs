using Microsoft.AspNetCore.Identity.UI.Services;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Threading.Tasks;

namespace HillHigh1980.UI.Pages.Account
{
    public class EmailSender : IEmailSender
    {
        public Task SendEmailAsync(string email, string subject, string htmlMessage)
        {
            SmtpClient client = new SmtpClient("smtp.ionos.net", 25);
            client.UseDefaultCredentials = false;
            client.Credentials = new NetworkCredential("m92895872-137691125", "ph1c-OvocUwlSti");

            MailMessage mailMessage = new MailMessage();
            mailMessage.From = new MailAddress("classmates@hillhigh1980.com");
            mailMessage.To.Add(email);
            mailMessage.IsBodyHtml = true;
            mailMessage.Body = subject;
            mailMessage.Subject = htmlMessage;

            try
            {
                client.Send(mailMessage);
            }
            catch (Exception e)
            {
                throw new Exception(e.Message);
            }

            return null;
        }

    }
}
