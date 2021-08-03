Imports System.Data.Sql
Imports System.Data.SqlClient
Public Class tambahdatabarang
    Inherits System.Web.UI.Page

    Private UpdatingTextBox As Boolean
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        buatID()
    End Sub

    Protected Sub btnsimpan_Click(sender As Object, e As EventArgs) Handles btnsimpan.Click
        Dim kdbrg, nmbrg, type As String
        Dim stok, harga, modal As Double

        kdbrg = txtkd.Text
        nmbrg = txtnm.Text
        type = cbotp.Text
        stok = txtstok.Text
        harga = txtharga.Text
        modal = txtmodal.Text

        Dim sc As SqlCommand
        sc = New SqlCommand("insert into tbarang values ('" & kdbrg & "','" & nmbrg & "','" & type & "','" & stok & "','" & harga & "','" & modal & "')", conn)
        sc.ExecuteNonQuery()
        lblMessage.Text = "Data Berhasil Ditambahkan"

        txtkd.Text = ""
        txtnm.Text = ""
        txtstok.Text = ""
        txtharga.Text = ""
        txtmodal.Text = ""
        buatID()
    End Sub
    Sub buatID()
        Dim sr As SqlDataReader
        Dim sc As SqlCommand
        sc = New SqlCommand("select isnull(max(right(kd_brg,2)),'0') from tbarang ", conn)
        sr = sc.ExecuteReader
        sr.Read()
        Dim hslkode As Integer
        hslkode = Val(sr.GetString(0)) + 101
        txtkd.Text = "KD-" & Microsoft.VisualBasic.Right(hslkode, 2)
    End Sub

    Protected Sub txtstok_TextChanged(sender As Object, e As EventArgs) Handles txtstok.TextChanged, txtharga.TextChanged
        If Not UpdatingTextBox Then
            UpdatingTextBox = True
            txtmodal.Text = Val(txtstok.Text) * Val(txtharga.Text)
            UpdatingTextBox = False
        End If


    End Sub

End Class