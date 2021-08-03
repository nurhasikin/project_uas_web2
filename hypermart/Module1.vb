Imports System.Data.Sql
Imports System.Data.SqlClient
Module Module1
    Public conn As SqlConnection
    Public str As String
    Sub koneksi()
        str = "Data Source=LAPTOP-RT1GRDLP;Initial Catalog=hypermart;Integrated Security=True;MultipleActiveResultSets=true;"
        conn = New SqlConnection(str)
        If conn.State = ConnectionState.Closed Then
            Try
                conn.Open()

            Catch ex As Exception



            End Try
        End If
    End Sub
End Module
