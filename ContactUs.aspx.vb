Imports System.Net.Mail
Imports System.Net
Partial Class ContactUs
    Inherits System.Web.UI.Page
    Protected Sub btn_send_Click(sender As Object, e As EventArgs) Handles btn_send.Click
        Dim msg As New MailMessage
        Dim client As New SmtpClient


        Dim sendersEmail As String
        Dim sendersMessage As String


        sendersEmail = tb_email.Text.ToString() 'capture the senders email from the textbox
        sendersMessage = tb_message.Text.ToString().Replace(Environment.NewLine, "<br />")   ' get the text from the message textbox keep text box formatting by replacing new lines (returns) with <br/>


        msg.To.Add("michael-colbert@uiowa.edu")  'destination email address
        msg.From = New MailAddress("ui.6k183@gmail.com")  'account used to send the email.
        msg.ReplyToList.Add(sendersEmail) 'set the senders email address as the "reply to" for easy of sending a response
        msg.Body = sendersMessage  'add the message body
        msg.IsBodyHtml = True


        client.Host = "smtp.gmail.com"  'place your smtp server inside quotation marks - gmail is smtp.gmail.com
        client.Port = 587  'place your smtp port here - gmail is 587
        client.Credentials = New NetworkCredential("ui.6k183", "6k183U*I")  'enter you username and password for gmail
        client.EnableSsl = True  'gmail uses ssl
        client.Send(msg)  'send you msg (variable from above)

        'Clear out the textboxes after the message is sent.
        'If not, it does not appear to send and the user will click "send" repeatedly, sending multiple messages.
        tb_email.Text = ""
        tb_message.Text = ""

        'Write into the label that the message has been sent.
        lbl_confirmSent.Text = "Thank you.  Your message has been sent."

        'After the message has displayed for 2 seconds, "reload" the page.
        Response.AddHeader("REFRESH", "2;URL=default.aspx")
    End Sub
End Class
