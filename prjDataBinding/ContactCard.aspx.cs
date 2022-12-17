using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;
using System.Configuration;
using System.Data;

public partial class ContactCard : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-CF62VSD\SQLEXPRESS;Initial Catalog=Alpha_Music;Integrated Security=True");
    public enum FooterFomat
    {
        LongDate,
        ShortTime
    }

    private FooterFomat format = FooterFomat.LongDate;

    public FooterFomat Format
    {
        get { return format; }
        set { format = value; }
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        Bitmap image = new Bitmap(300, 20);
        Graphics g = Graphics.FromImage(image);
        Font font = new Font("Times New Roman", 100, FontStyle.Regular);
        g.DrawString("Rolodex Contact Card", font, Brushes.Black, 0, 0);

        if (!IsPostBack)
        {
            MultiView1.ActiveViewIndex = 0;
        }
        lblFooter.Font.Name = "Times New Roman";
        lblFooter.Font.Size = 8;
        lblFooter.Text = "This page was served at ";
        if (format == FooterFomat.LongDate)
        {
            lblFooter.Text += DateTime.Now.ToLongDateString();
        }
        else if (format == FooterFomat.ShortTime)
        {
            lblFooter.Text += DateTime.Now.ToShortTimeString();
        }
    }

    protected void nextView4View1_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 1;
    }

    protected void prevView4View2_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 0;
    }

    protected void nextView4View2_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 2;
    }

    protected void prevView4View3_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 1;
    }

    protected void nextView4View3_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 3;
    }

    protected void prevView4View4_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 2;
    }

    protected void actionUpdate_Click1(object sender, EventArgs e)
    {
        //Adding data to dataset
        con.Open();

        SqlCommand cmd = con.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "INSERT INTO AuditionContact VALUES('"+ contactFullName.Text +"','"+ contactOccupation.Text +"','"+ contactPhoneNumber.Text +"','"+ contactEmail.Text +"','"+ contactAvailability.SelectedDate +"')";
        cmd.ExecuteNonQuery();
        con.Close();

        //Background Color
        cardPanel.BackColor = Color.FromName(cardColor.SelectedItem.Text);

        //Font
        lblFullName.Font.Name = cardFont.SelectedItem.Text;
        lblOccupation.Font.Name = cardFont.SelectedItem.Text;
        lblPhoneNum.Font.Name = cardFont.SelectedItem.Text;
        lblEmail.Font.Name = cardFont.SelectedItem.Text;
        lblAvailableDate.Font.Name = cardFont.SelectedItem.Text;

        //Font Size
        if (Int32.Parse(cardFontSize.Text) > 0)
        {
            lblFullName.Font.Size = FontUnit.Point(Int32.Parse(cardFontSize.Text));
            lblOccupation.Font.Size = FontUnit.Point(Int32.Parse(cardFontSize.Text));
            lblPhoneNum.Font.Size = FontUnit.Point(Int32.Parse(cardFontSize.Text));
            lblEmail.Font.Size = FontUnit.Point(Int32.Parse(cardFontSize.Text));
            lblAvailableDate.Font.Size = FontUnit.Point(Int32.Parse(cardFontSize.Text));
        }

        //Border Style
        string selectedStyle = cardBorderStyle.SelectedItem.Text;
        if (selectedStyle == "None")
        {
            cardPanel.BorderStyle = BorderStyle.None;
        }
        else if (selectedStyle == "Solid")
        {
            cardPanel.BorderStyle = BorderStyle.Solid;
        }
        else if (selectedStyle == "Double")
        {
            cardPanel.BorderStyle = BorderStyle.Double;
        }

        //Contact Info
        lblFullName.Text = contactFullName.Text;
        lblOccupation.Text = contactOccupation.Text;
        lblPhoneNum.Text = contactPhoneNumber.Text;
        lblEmail.Text = contactEmail.Text;
        lblAvailableDate.Text = "Selected Date:<br/>";
        foreach (DateTime dt in contactAvailability.SelectedDates)
        {
            lblAvailableDate.Text += dt.ToLongDateString() + "<br/>";
        }


    }

    protected void MultiView1_ActiveViewChanged(object sender, EventArgs e)
    {

    }

    protected void cardColor_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void contactAvailability_SelectionChanged(object sender, EventArgs e)
    {

    }

    protected void contactAvailability_DayRender(Object source, DayRenderEventArgs e)
    {
        //Restricting weekends, other months than the current month, and today
        if (e.Day.IsWeekend || e.Day.IsToday || e.Day.IsOtherMonth)
        {
            e.Day.IsSelectable = false;
        }
    }
}
