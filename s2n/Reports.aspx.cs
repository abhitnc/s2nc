using System;
using System.Data.SqlClient;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;

public partial class Reports : System.Web.UI.Page
{
    protected DataSet dsHolidays;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Calendar1.VisibleDate = DateTime.Today;
            FillHolidayDataset();
        }
    }

    protected void FillHolidayDataset()
    {
        DateTime firstDate = new DateTime(Calendar1.VisibleDate.Year,
            Calendar1.VisibleDate.Month, 1);
        DateTime lastDate = GetFirstDayOfNextMonth();
        dsHolidays = GetCurrentMonthData(firstDate, lastDate);
    }

    protected DateTime GetFirstDayOfNextMonth()
    {
        int monthNumber, yearNumber;
        if (Calendar1.VisibleDate.Month == 12)
        {
            monthNumber = 1;
            yearNumber = Calendar1.VisibleDate.Year + 1;
        }
        else
        {
            monthNumber = Calendar1.VisibleDate.Month + 1;
            yearNumber = Calendar1.VisibleDate.Year;
        }
        DateTime lastDate = new DateTime(yearNumber, monthNumber, 1);
        return lastDate;
    }

    protected DataSet GetCurrentMonthData(DateTime firstDate,
         DateTime lastDate)
    {
        DataSet dsMonth = new DataSet();
        ConnectionStringSettings cs;
        cs = ConfigurationManager.ConnectionStrings["dbconnection"];
        String connString = cs.ConnectionString;
        SqlConnection dbConnection = new SqlConnection(connString);
        String query;
        query = "SELECT HolidayDate FROM Transaction " + " WHERE HolidayDate >= @firstDate AND HolidayDate < @lastDate";
        SqlCommand dbCommand = new SqlCommand(query, dbConnection);
        dbCommand.Parameters.Add(new SqlParameter("@firstDate",
            firstDate));
        dbCommand.Parameters.Add(new SqlParameter("@lastDate", lastDate));

        SqlDataAdapter sqlDataAdapter = new SqlDataAdapter(dbCommand);
        try
        {
            sqlDataAdapter.Fill(dsMonth);
        }
        catch { }
        return dsMonth;
    }

    protected void Calendar1_DayRender(object sender, DayRenderEventArgs e)
    {
        DateTime nextDate;
        if (dsHolidays != null)
        {
            foreach (DataRow dr in dsHolidays.Tables[0].Rows)
            {
                nextDate = (DateTime)dr["HolidayDate"];
                if (nextDate == e.Day.Date)
                {
                    e.Cell.BackColor = System.Drawing.Color.Pink;
                }
            }
        }
    }
    protected void Calendar1_VisibleMonthChanged(object sender,
        MonthChangedEventArgs e)
    {
        FillHolidayDataset();
    }
}