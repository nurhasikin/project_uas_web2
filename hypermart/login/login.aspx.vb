
Imports System.Data.SqlClient
Imports System.Drawing
Public Class login
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        koneksi()
    End Sub
    Protected Sub btnLogin_Click(sender As Object, e As EventArgs) Handles btnLogin.Click

        Dim cmd As SqlCommand = New SqlCommand("select * from admin where username='" & username.Text & "' and password='" & password.Text & "'", conn)
        Dim sda As SqlDataAdapter = New SqlDataAdapter(cmd)

        Dim dt As DataTable = New DataTable()
        sda.Fill(dt)
        If (dt.Rows.Count > 0) Then
            Session("Name") = username.Text
            Response.Redirect("../index.aspx")

        Else
            lblMessage.Text = "Masukkan Email dan Password dengan Benar!"
            lblMessage.ForeColor = Color.Red
        End If
    End Sub
End Class