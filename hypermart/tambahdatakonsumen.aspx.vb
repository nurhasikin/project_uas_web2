Imports System.Data.Sql
Imports System.Data.SqlClient
Public Class tambahdatakonsumen
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        buatID()
    End Sub
    Sub buatID()
        Dim sr As SqlDataReader
        Dim sc As SqlCommand
        sc = New SqlCommand("select isnull(max(right(kd_plg,2)),'0') from tplg ", conn)
        sr = sc.ExecuteReader
        sr.Read()
        Dim hslkode As Integer
        hslkode = Val(sr.GetString(0)) + 101
        txtkd.Text = "KP-" & Microsoft.VisualBasic.Right(hslkode, 2)
    End Sub

    Protected Sub btnsimpan_Click(sender As Object, e As EventArgs) Handles btnsimpan.Click
        Dim kdplg, nmplg, tlhr, dlhr, alamat As String


        kdplg = txtkd.Text
        nmplg = txtnm.Text
        tlhr = txttmplhr.Text
        dlhr = dttgllhr.Text
        alamat = txtalamat.Text


        Dim sc As SqlCommand
        sc = New SqlCommand("insert into tplg values ('" & kdplg & "','" & nmplg & "','" & tlhr & "','" & dlhr & "','" & alamat & "')", conn)
        sc.ExecuteNonQuery()
        lblMessage.Text = "Data Berhasil Ditambahkan"

        txtkd.Text = ""
        txtnm.Text = ""
        txttmplhr.Text = ""
        dttgllhr.Text = ""
        txtalamat.Text = ""
        buatID()
    End Sub
End Class