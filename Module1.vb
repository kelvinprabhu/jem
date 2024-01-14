Imports System.Data
Imports System.Data.SqlClient
Module utils
    Public Function connectdb() As Array
        Dim con As New SqlConnection
        Dim cmd As New SqlCommand

        con.ConnectionString = "Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\kelvi\source\repos\JEM MK\App_Data\Database1.mdf;Integrated Security=True"
        con.Open()
        cmd.Connection = con
        Return {con, cmd}
    End Function
End Module
