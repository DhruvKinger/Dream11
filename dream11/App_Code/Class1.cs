using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
namespace dream11
{
    public static class GlobalVar
    {
        static int _globalValue;

        public static int GlobalValue
        {
            get
            {
                return _globalValue;
            }
            set
            {
                _globalValue = value;
            }
        }

    }

    public interface players
    {
        Int32 id { get; set; }
        String name { get; set; }
        String category { get; set; }
        float value { get; set; }
        String team { get; set; }
    }

    public class prpplayers : players
    {
        private Int32 pid;
        private float pvalue;
        private String pname, pcategory, pteam;
        public int id
        {
            get
            {
                return pid;
            }
            set
            {
                pid = value;
            }
        }
        public string name
        {
            get
            {
                return pname;
            }
            set
            {
                pname = value;
            }
        }
        public string category
        {
            get
            {
                return pcategory;
            }
            set
            {
                pcategory = value;
            }
        }

        public float value
        {
            get
            {
                return pvalue;
            }
            set
            {
                pvalue = value;
            }
        }
        public string team
        {
            get
            {
                return pteam;
            }
            set
            {
                pteam = value;
            }
        }
    }

    public abstract class clscon
    {
        protected SqlConnection con = new SqlConnection();
        public clscon()
        {
            con.ConnectionString = ConfigurationManager.ConnectionStrings["cn"].ConnectionString;
        }
    }

    public class mainplayers : clscon
    {
        public void Save_Rec(prpplayers p)
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }

            SqlCommand cmd = new SqlCommand("insplayers", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@name", SqlDbType.VarChar, 50).Value = p.name;
            cmd.Parameters.Add("@category", SqlDbType.VarChar, 50).Value = p.category;
            cmd.Parameters.Add("@value", SqlDbType.Float).Value = p.value;
            cmd.Parameters.Add("@team", SqlDbType.VarChar, 50).Value = p.team;
            cmd.ExecuteNonQuery();
            con.Close();
            cmd.Dispose();

        }
        public void Update_Rec(prpplayers p)
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }

            SqlCommand cmd = new SqlCommand("updplayers", con);
            cmd.CommandType = CommandType.StoredProcedure;

            cmd.Parameters.Add("@name", SqlDbType.VarChar, 50).Value = p.name;
            cmd.Parameters.Add("@category", SqlDbType.VarChar, 50).Value = p.category;
            cmd.Parameters.Add("@value", SqlDbType.Float).Value = p.value;
            cmd.Parameters.Add("@team", SqlDbType.VarChar, 50).Value = p.team;
            cmd.Parameters.Add("@id", SqlDbType.Int).Value = p.id;
            cmd.ExecuteNonQuery();
            con.Close();
            cmd.Dispose();

        }
        public void Del_rec(prpplayers p)
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("delplayers", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@id", SqlDbType.Int).Value = p.id;
            cmd.ExecuteNonQuery();
            cmd.Dispose();
            con.Close();

        }
        public List<prpplayers> Disp_Rec()
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("displayers", con);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataReader dr = cmd.ExecuteReader();
            List<prpplayers> obj1 = new List<prpplayers>();
            while (dr.Read())
            {
                prpplayers k = new prpplayers();
                k.id = Convert.ToInt32(dr[0]);
                k.name = dr[1].ToString();
                k.category = dr[2].ToString();
                k.value = Convert.ToSingle(dr[3]);
                k.team = dr[4].ToString();
                obj1.Add(k);
            }

            dr.Close();
            cmd.Dispose();
            con.Close();
            return obj1;

        }
        public List<prpplayers> Find_rec(Int32 id)
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("findplayers", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@id", SqlDbType.Int).Value = id;
            SqlDataReader dr = cmd.ExecuteReader();
            List<prpplayers> obj = new List<prpplayers>();
            if (dr.HasRows)
            {
                dr.Read();
                prpplayers k = new prpplayers();
                k.id = Convert.ToInt32(dr[0]);
                k.name = dr[1].ToString();
                k.category = dr[2].ToString();
                k.value = Convert.ToSingle(dr[3]);
                // k.points = Convert.ToInt32(dr[4]);
                k.team = dr[4].ToString();
                obj.Add(k);
            }
            dr.Close();
            cmd.Dispose();
            con.Close();
            return obj;
        }

    }

    public interface personal
    {
        Int32 id { get; set; }
        String email { get; set; }
        String username { get; set; }
        String pass { get; set; }
        String conpass { get; set; }
        Int64 mobile { get; set; }
        String address { get; set; }
    }

    public class prppersonal : personal
    {
        private Int64 pmobile;
        private Int32 pid;
        // private float pvalue;
        private String pname, ppass, pconpass, pusername, pemail, paddress;
        public int id
        {
            get
            {
                return pid;
            }
            set
            {
                pid = value;
            }
        }
        public string address
        {
            get { return paddress; }
            set { paddress = value; }
        }
        public string username
        {
            get
            {
                return pusername;
            }
            set
            {
                pusername = value;
            }
        }

        public string email { get { return pemail; } set { pemail = value; } }
        //public string username { get => throw new NotImplementedException(); set => throw new NotImplementedException(); }
        public string pass
        {
            get { return ppass; }
            set { ppass = value; }
        }
        public string conpass { get { return pconpass; } set { pconpass = value; } }
        public long mobile { get { return pmobile; } set { pmobile = value; } }
    }

    public class mainpersonal : clscon
    {
        public List<prppersonal> Disp_Rec()
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("dispersonal", con);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataReader dr = cmd.ExecuteReader();
            List<prppersonal> obj1 = new List<prppersonal>();
            while (dr.Read())
            {
                prppersonal k = new prppersonal();
                k.id = Convert.ToInt32(dr[0]);
                k.email = dr[1].ToString();
                k.username = dr[2].ToString();
                k.pass = (dr[3].ToString());
                k.conpass = (dr[4].ToString());
                k.address = (dr[5].ToString());
                k.mobile = Convert.ToInt64(dr[6]);
                obj1.Add(k);
            }
            dr.Close();
            cmd.Dispose();
            con.Close();
            return obj1;
        }
    }

    public interface team
    {
        Int32 id { get; set; }
        String tname { get; set; }
    }

    public class prpteam : team
    {
        private Int32 pid;
        private String ptname;
        public int id
        {
            get
            {
                return pid;
            }
            set
            {
                pid = value;
            }
        }
        public string tname
        {
            get
            {
                return ptname;
            }
            set
            {
                ptname = value;
            }
        }
    }

    public class mainteam : clscon
    {
        public void Save_Rec(prpteam p)
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }

            SqlCommand cmd = new SqlCommand("insteam", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@tname", SqlDbType.VarChar, 50).Value = p.tname;
            cmd.ExecuteNonQuery();
            con.Close();
            cmd.Dispose();

        }
        public void Update_Rec(prpteam p)
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }

            SqlCommand cmd = new SqlCommand("updteam", con);
            cmd.CommandType = CommandType.StoredProcedure;

            cmd.Parameters.Add("@tname", SqlDbType.VarChar, 50).Value = p.tname;
            cmd.Parameters.Add("@id", SqlDbType.Int).Value = p.id;
            cmd.ExecuteNonQuery();
            con.Close();
            cmd.Dispose();

        }
        public void Del_rec(prpteam p)
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("delteam", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@id", SqlDbType.Int).Value = p.id;
            cmd.ExecuteNonQuery();
            cmd.Dispose();
            con.Close();

        }
        public List<prpteam> Disp_Rec()
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("disteam", con);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataReader dr = cmd.ExecuteReader();
            List<prpteam> obj1 = new List<prpteam>();
            while (dr.Read())
            {
                prpteam k = new prpteam();
                k.id = Convert.ToInt32(dr[0]);
                k.tname = dr[1].ToString();
                obj1.Add(k);
            }
            dr.Close();
            cmd.Dispose();
            con.Close();
            return obj1;

        }
        public List<prpteam> Find_rec(Int32 id)
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("findteam", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@id", SqlDbType.Int).Value = id;
            SqlDataReader dr = cmd.ExecuteReader();
            List<prpteam> obj = new List<prpteam>();
            if (dr.HasRows)
            {
                dr.Read();
                prpteam k = new prpteam();
                k.id = Convert.ToInt32(dr[0]);
                k.tname = dr[1].ToString();
                obj.Add(k);
            }
            dr.Close();
            cmd.Dispose();
            con.Close();
            return obj;
        }
    }

    public interface vdate
    {
        Int32 id { get; set; }
        String venue { get; set; }
    }

    public class prvdate : vdate
    {
        private Int32 pid;
        private String pvenue;

        public int id
        {
            get
            {
                return pid;
            }
            set
            {
                pid = value;
            }
        }
        public string venue
        {
            get
            {
                return pvenue;
            }
            set
            {
                pvenue = value;
            }
        }

    }

    public class mainvdate : clscon
    {
        public void Save_Rec(prvdate p)
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }

            SqlCommand cmd = new SqlCommand("insvdate", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@venue", SqlDbType.VarChar, 50).Value = p.venue;
            cmd.ExecuteNonQuery();
            con.Close();
            cmd.Dispose();

        }
        public void Update_Rec(prvdate p)
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }

            SqlCommand cmd = new SqlCommand("updvdate", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@venue", SqlDbType.VarChar, 50).Value = p.venue;

            cmd.Parameters.Add("@id", SqlDbType.Int).Value = p.id;
            cmd.ExecuteNonQuery();
            con.Close();
            cmd.Dispose();

        }
        public void Del_rec(prvdate p)
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("delvdate", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@id", SqlDbType.Int).Value = p.id;
            cmd.ExecuteNonQuery();
            cmd.Dispose();
            con.Close();

        }
        public List<prvdate> Disp_Rec()
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("disvdate", con);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataReader dr = cmd.ExecuteReader();
            List<prvdate> obj1 = new List<prvdate>();
            while (dr.Read())
            {
                prvdate k = new prvdate();
                k.id = Convert.ToInt32(dr[0]);
                k.venue = dr[1].ToString();

                obj1.Add(k);
            }
            dr.Close();
            cmd.Dispose();
            con.Close();
            return obj1;

        }
        public List<prvdate> Find_rec(Int32 id)
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("findvdate", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@id", SqlDbType.Int).Value = id;
            SqlDataReader dr = cmd.ExecuteReader();
            List<prvdate> obj = new List<prvdate>();
            if (dr.HasRows)
            {
                dr.Read();
                prvdate k = new prvdate();
                k.id = Convert.ToInt32(dr[0]);
                k.venue = dr[1].ToString();

                obj.Add(k);
            }
            dr.Close();
            cmd.Dispose();
            con.Close();
            return obj;
        }

    }

    public interface fixtures
    {
        Int32 id { get; set; }
        String team1 { get; set; }
        String team2 { get; set; }
        String venue { get; set; }
        DateTime date { get; set; }
    }

    public class prpfixtures : fixtures
    {
        private Int32 pid;
        private DateTime pdate;
        private String pteam1, pvenue, pteam2;
        public int id
        {
            get
            {
                return pid;
            }
            set
            {
                pid = value;
            }
        }
        public string team1
        {
            get
            {
                return pteam1;
            }
            set
            {
                pteam1 = value;
            }
        }
        public string team2
        {
            get
            {
                return pteam2;
            }
            set
            {
                pteam2 = value;
            }
        }

        public DateTime date
        {
            get
            {
                return pdate;
            }
            set
            {
                pdate = value;
            }
        }
        public string venue
        {
            get
            {
                return pvenue;
            }
            set
            {
                pvenue = value;
            }
        }
    }

    public class mainfixtures : clscon
    {
        public void Save_Rec(prpfixtures p)
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }

            SqlCommand cmd = new SqlCommand("insfixtures", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@team1", SqlDbType.VarChar, 50).Value = p.team1;
            cmd.Parameters.Add("@team2", SqlDbType.VarChar, 50).Value = p.team2;
            cmd.Parameters.Add("@venue", SqlDbType.VarChar, 50).Value = p.venue;
            cmd.Parameters.Add("@date", SqlDbType.DateTime).Value = p.date;
            cmd.ExecuteNonQuery();
            con.Close();
            cmd.Dispose();

        }
        public void Update_Rec(prpfixtures p)
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }

            SqlCommand cmd = new SqlCommand("updfixtures", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@team1", SqlDbType.VarChar, 50).Value = p.team1;
            cmd.Parameters.Add("@team2", SqlDbType.VarChar, 50).Value = p.team2;
            cmd.Parameters.Add("@venue", SqlDbType.VarChar, 50).Value = p.venue;
            cmd.Parameters.Add("@date", SqlDbType.DateTime).Value = p.date;
            cmd.Parameters.Add("@id", SqlDbType.Int).Value = p.id;
            cmd.ExecuteNonQuery();
            con.Close();
            cmd.Dispose();

        }
        public void Del_rec(prpfixtures p)
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("delfixtures", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@id", SqlDbType.Int).Value = p.id;
            cmd.ExecuteNonQuery();
            cmd.Dispose();
            con.Close();

        }
        public List<prpfixtures> Disp_Rec()
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("disfixtures", con);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataReader dr = cmd.ExecuteReader();
            List<prpfixtures> obj1 = new List<prpfixtures>();
            while (dr.Read())
            {
                prpfixtures k = new prpfixtures();
                k.id = Convert.ToInt32(dr[0]);
                k.team1 = dr[1].ToString();
                k.team2 = dr[2].ToString();
                k.venue = dr[3].ToString();
                k.date = Convert.ToDateTime(dr[4]);
                obj1.Add(k);
            }
            dr.Close();
            cmd.Dispose();
            con.Close();
            return obj1;

        }
        public List<prpfixtures> Find_rec(Int32 id)
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("findfixtures", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@id", SqlDbType.Int).Value = id;
            SqlDataReader dr = cmd.ExecuteReader();
            List<prpfixtures> obj = new List<prpfixtures>();
            if (dr.HasRows)
            {
                dr.Read();
                prpfixtures k = new prpfixtures();
                k.id = Convert.ToInt32(dr[0]);
                k.team1 = dr[1].ToString();
                k.team2 = dr[2].ToString();
                k.venue = dr[3].ToString();
                k.date = Convert.ToDateTime(dr[4]);
                obj.Add(k);
            }
            dr.Close();
            cmd.Dispose();
            con.Close();
            return obj;
        }


    }

    public interface create_team
    {
        Int32 id { get; set; }
        String tname { get; set; }
        String p1 { get; set; }
        String p2 { get; set; }
        String p3 { get; set; }
        String p4 { get; set; }
        String p5 { get; set; }
        String p6 { get; set; }
        String p7 { get; set; }
        String p8 { get; set; }
        String p9 { get; set; }
        String p10 { get; set; }
        String p11 { get; set; }
        DateTime time { get; set; }
        float score { get; set; }
        string captain { get; set; }
        string vice_captain { get; set; }
       string team1 { get; set; }
        string team2 { get; set; }
    }

    public class prpcreate_team : create_team
    {
        private string pp1, pp2, pp3, pp4, pp5, pp6, pp7, pp8, pp9, pp10, pp11, ptname, pcaptain, pvice_captain,pteam1,pteam2;
        private Int32 pid;
        private float pscore;
        private DateTime ptime;
        public Int32 id
        {
            get
            {
                return pid;
            }
            set
            {
                pid = value;
            }
        }
        public string team1
        {
            get
            {
                return pteam1;
            }
            set
            {
                pteam1 = value;
            }
        }
        public string team2
        {
            get
            {
                return pteam2;
            }
            set
            {
                pteam2 = value;
            }
        }

        public string p1
        {
            get
            {
                return pp1;
            }
            set
            {
                pp1 = value;
            }

        }
        public string p3
        {
            get
            {
                return pp3;
            }
            set
            {
                pp3 = value;
            }

        }
        public string p2
        {
            get
            {
                return pp2;
            }
            set
            {
                pp2 = value;
            }

        }
        public string p4
        {
            get
            {
                return pp4;
            }
            set
            {
                pp4 = value;
            }

        }
        public string p5
        {
            get
            {
                return pp5;
            }
            set
            {
                pp5 = value;
            }

        }
        public string p6
        {
            get
            {
                return pp6;
            }
            set
            {
                pp6 = value;
            }

        }
        public string p7
        {
            get
            {
                return pp7;
            }
            set
            {
                pp7 = value;
            }

        }
        public string p8
        {
            get
            {
                return pp8;
            }
            set
            {
                pp8 = value;
            }

        }
        public string p9
        {
            get
            {
                return pp9;
            }
            set
            {
                pp9 = value;
            }

        }
        public string p10
        {
            get
            {
                return pp10;
            }
            set
            {
                pp10 = value;
            }

        }
        public string p11
        {
            get
            {
                return pp11;
            }
            set
            {
                pp11 = value;
            }

        }
        public string tname
        {
            get
            {
                return ptname;
            }
            set
            {
                ptname = value;
            }
        }

        public DateTime time
        {
            get
            {
                return ptime;
            }

            set
            {
                ptime = value;
            }
        }
        public float score
        {
            get
            {
                return pscore;
            }
            set
            {
                pscore = value;
            }
        }
        public string captain
        {
            get
            {
                return pcaptain;
            }
            set
            {
                pcaptain = value;
            }

        }
        public string vice_captain
        {
            get
            {
                return pvice_captain;
            }
            set
            {
                pvice_captain = value;
            }

        }

    }

    public class maincreate_team : clscon
    {

        public void Save_Rec(prpcreate_team p)
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }

            SqlCommand cmd = new SqlCommand("inscreate_team", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@tname", SqlDbType.VarChar, 50).Value = p.tname;
            cmd.Parameters.Add("@p1", SqlDbType.VarChar, 50).Value = p.p1;
            cmd.Parameters.Add("@p2", SqlDbType.VarChar, 50).Value = p.p2;
            cmd.Parameters.Add("@p3", SqlDbType.VarChar, 50).Value = p.p3;
            cmd.Parameters.Add("@p4", SqlDbType.VarChar, 50).Value = p.p4;
            cmd.Parameters.Add("@p5", SqlDbType.VarChar, 50).Value = p.p5;
            cmd.Parameters.Add("@p6", SqlDbType.VarChar, 50).Value = p.p6;
            cmd.Parameters.Add("@p7", SqlDbType.VarChar, 50).Value = p.p7;
            cmd.Parameters.Add("@p8", SqlDbType.VarChar, 50).Value = p.p8;
            cmd.Parameters.Add("@p9", SqlDbType.VarChar, 50).Value = p.p9;
            cmd.Parameters.Add("@p10", SqlDbType.VarChar, 50).Value = p.p10;
            cmd.Parameters.Add("@p11", SqlDbType.VarChar, 50).Value = p.p11;
            cmd.Parameters.Add("@time", SqlDbType.DateTime).Value = p.time;
            cmd.Parameters.Add("@score", SqlDbType.Float).Value = p.score;
            cmd.Parameters.Add("@captain", SqlDbType.VarChar, 50).Value = p.captain;
            cmd.Parameters.Add("@vice_captain", SqlDbType.VarChar, 50).Value = p.vice_captain;
            cmd.Parameters.Add("@team1", SqlDbType.VarChar, 50).Value = p.team1;
            cmd.Parameters.Add("@team2", SqlDbType.VarChar, 50).Value = p.team2;
            cmd.ExecuteNonQuery();
            con.Close();
            cmd.Dispose();

        }
        public void Update_Rec(prpcreate_team p)
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }

            SqlCommand cmd = new SqlCommand("updcreate_team", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@tname", SqlDbType.VarChar, 50).Value = p.tname;
            cmd.Parameters.Add("@p1", SqlDbType.VarChar, 50).Value = p.p1;
            cmd.Parameters.Add("@p2", SqlDbType.VarChar, 50).Value = p.p2;
            cmd.Parameters.Add("@p3", SqlDbType.VarChar, 50).Value = p.p3;
            cmd.Parameters.Add("@p4", SqlDbType.VarChar, 50).Value = p.p4;
            cmd.Parameters.Add("@p5", SqlDbType.VarChar, 50).Value = p.p5;
            cmd.Parameters.Add("@p6", SqlDbType.VarChar, 50).Value = p.p6;
            cmd.Parameters.Add("@p7", SqlDbType.VarChar, 50).Value = p.p7;
            cmd.Parameters.Add("@p8", SqlDbType.VarChar, 50).Value = p.p8;
            cmd.Parameters.Add("@p9", SqlDbType.VarChar, 50).Value = p.p9;
            cmd.Parameters.Add("@p10", SqlDbType.VarChar, 50).Value = p.p10;
            cmd.Parameters.Add("@p11", SqlDbType.VarChar, 50).Value = p.p11;
            cmd.Parameters.Add("@time", SqlDbType.DateTime).Value = p.time;
            cmd.Parameters.Add("@score", SqlDbType.Float).Value = p.score;
            cmd.Parameters.Add("@captain", SqlDbType.VarChar, 50).Value = p.captain;
            cmd.Parameters.Add("@vice_captain", SqlDbType.VarChar, 50).Value = p.vice_captain;
            cmd.Parameters.Add("@team1", SqlDbType.VarChar, 50).Value = p.team1;
            cmd.Parameters.Add("@team2", SqlDbType.VarChar, 50).Value = p.team2;
            cmd.Parameters.Add("@id", SqlDbType.Int).Value = p.id;
            cmd.ExecuteNonQuery();
            con.Close();
            cmd.Dispose();

        }
        public void Del_rec(prpcreate_team p)
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("delcreate_team", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@id", SqlDbType.Int).Value = p.id;
            cmd.ExecuteNonQuery();
            cmd.Dispose();
            con.Close();

        }
        public List<prpcreate_team> Disp_Rec()
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("discreate_team", con);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataReader dr = cmd.ExecuteReader();
            List<prpcreate_team> obj1 = new List<prpcreate_team>();
            while (dr.Read())
            {
                prpcreate_team k = new prpcreate_team();
                k.id = Convert.ToInt32(dr[0]);
                k.tname = dr[1].ToString();
                k.p1 = dr[2].ToString();
                k.p2 = dr[3].ToString();
                k.p3 = dr[4].ToString();
                k.p4 = dr[5].ToString();
                k.p5 = dr[6].ToString();
                k.p6 = dr[7].ToString();
                k.p7 = dr[8].ToString();
                k.p8 = dr[9].ToString();
                k.p9 = dr[10].ToString();
                k.p10 = dr[11].ToString();
                k.p11 = dr[12].ToString();
                k.time = Convert.ToDateTime(dr[13]);
                k.score = Convert.ToSingle(dr[14]);
                k.captain = dr[15].ToString();
                k.vice_captain = dr[16].ToString();
                k.team1 = dr[17].ToString();
                k.team2 = dr[18].ToString();
                obj1.Add(k);
            }
            dr.Close();
            cmd.Dispose();
            con.Close();
            return obj1;

        }
        public List<prpcreate_team> Find_rec(Int32 id,Int32 fixid)
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("findcreate_team", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@id", SqlDbType.Int).Value = id;
            SqlDataReader dr = cmd.ExecuteReader();
            List<prpcreate_team> obj = new List<prpcreate_team>();
            if (dr.HasRows)
            {
                dr.Read();
                prpcreate_team k = new prpcreate_team();
                k.id = Convert.ToInt32(dr[0]);
                k.tname = dr[1].ToString();
                k.p1 = dr[2].ToString();
                k.p2 = dr[3].ToString();
                k.p3 = dr[4].ToString();
                k.p4 = dr[5].ToString();
                k.p5 = dr[6].ToString();
                k.p6 = dr[7].ToString();
                k.p7 = dr[8].ToString();
                k.p8 = dr[9].ToString();
                k.p9 = dr[10].ToString();
                k.p10 = dr[11].ToString();
                k.p11 = dr[12].ToString();
                k.time = Convert.ToDateTime(dr[13]);
                k.score = Convert.ToSingle(dr[14]);
                k.captain = dr[15].ToString();
                k.vice_captain = dr[16].ToString();
                k.team1 = dr[17].ToString();
                k.team2 = dr[18].ToString();
                obj.Add(k);
            }
            dr.Close();
            cmd.Dispose();
            con.Close();
            return obj;
        }
    }
    public interface register
    {
        Int32 id { get; set; }
        String email { get; set; }
        String username { get; set; }
        String pass { get; set; }
        String conpass { get; set; }
        String address { get; set; }
        Int64 phone { get; set; }
        string usertype { get; set; }
    }
    public class prpregister : register
    {
        private string pemail, pusername, paddress, ppass, pconpass, pusertype;
        private Int32 pid;
        private Int64 pphone;
        public Int32 id
        {
            get
            {
                return pid;
            }
            set
            {
                pid = value;
            }
        }
        public string username
        {
            get
            {
                return pusername;
            }
            set
            {
                pusername = value;
            }

        }
        public string email
        {
            get
            {
                return pemail;
            }
            set
            {
                pemail = value;
            }

        }
        public string pass
        {
            get
            {
                return ppass;
            }
            set
            {
                ppass = value;
            }

        }
        public string address
        {
            get
            {
                return paddress;
            }
            set
            {
                paddress = value;
            }

        }
        public string conpass
        {
            get
            {
                return pconpass;
            }
            set
            {
                pconpass = value;
            }

        }
        public string usertype
        {
            get
            {
                return pusertype;
            }
            set
            {
                pusertype = value;
            }

        }
        public Int64 phone
        {
            get
            {
                return pphone;
            }
            set
            {
                pphone = value;
            }
        }

    }
    public class mainregister : clscon
    {
        public void Save_Rec(prpregister p)
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }

            SqlCommand cmd = new SqlCommand("register1", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@email", SqlDbType.VarChar, 100).Value = p.email;
            cmd.Parameters.Add("@username", SqlDbType.VarChar, 100).Value = p.username;
            cmd.Parameters.Add("@pass", SqlDbType.VarChar, 100).Value = (p.pass);
            cmd.Parameters.Add("@conpass", SqlDbType.VarChar, 100).Value = (p.conpass);
            cmd.Parameters.Add("@address", SqlDbType.VarChar, 100).Value = (p.address);
            cmd.Parameters.Add("@phone", SqlDbType.BigInt).Value = (p.phone);
            cmd.Parameters.Add("@usertype", SqlDbType.Char, 1).Value = p.usertype;
            cmd.ExecuteNonQuery();
            con.Close();
            cmd.Dispose();
        }

        public Int32 logincheck(string u, string p, out Char usertype)
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("logincheck", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@un", SqlDbType.VarChar, 50).Value = u;
            cmd.Parameters.Add("@up", SqlDbType.VarChar, 50).Value = p;
            cmd.Parameters.Add("@cod", SqlDbType.Int).Direction = ParameterDirection.Output;
            cmd.Parameters.Add("@usertype", SqlDbType.Char,1).Direction = ParameterDirection.Output;
            cmd.ExecuteNonQuery();
            Int32 a = Convert.ToInt32(cmd.Parameters["@cod"].Value);
            usertype = Convert.ToChar(cmd.Parameters["@usertype"].Value);
            cmd.Dispose();
            con.Close();
            return a;
        }

    }
}
















