

Imports System.Data
Imports System.Data.SqlClient
Public Class register
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        koneksi()
    End Sub
    Protected Sub btnsimpan_Click(sender As Object, e As EventArgs) Handles btnsimpan.Click


        Dim sc As SqlCommand
        sc = New SqlCommand("INSERT INTO admin (username, password) VALUES('" & username.Text & "','" & password.Text & "')", conn)
        sc.ExecuteNonQuery()
        lblMessage.Text = "Data Berhasil Ditambahkan"


        username.Text = ""
        password.Text = ""



    End Sub
End Class