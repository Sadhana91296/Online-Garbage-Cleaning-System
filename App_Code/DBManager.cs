using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.OleDb;
using System.Data;
/// <summary>
/// Summary description for DBManager
/// </summary>``````
public class DBManager
{
    public DBManager()
    {
        //
        // TODO: Add constructor logic here
        //
    }
    OleDbConnection cn = new OleDbConnection(@"Provider=Microsoft.ACE.OLEDB.12.0;Data Source=D:\WebSit\GarbageCleaningSystem\App_Data\GarbageServiceDatabase.accdb;Persist Security Info=True");
    public bool ExecuteInsertUpdateOrDelete(string YourCommand)
    {
        OleDbCommand cm = new OleDbCommand(YourCommand, cn);
        if (cn.State == ConnectionState.Closed)
            cn.Open();
        int NumberOfAffectedRows = cm.ExecuteNonQuery();
        cn.Close();
        if (NumberOfAffectedRows > 0)
            return true;
        else
            return false;
    }
    public DataTable ExecuteSelect(string command)
    {
        OleDbDataAdapter da = new OleDbDataAdapter(command, cn);
        DataTable dt = new DataTable();
        da.Fill(dt);
        return dt;
    }
}