Imports System.Data.Sql
Imports System.Data.SqlClient
Public Class tambahdatapenjualan
    Inherits System.Web.UI.Page
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        buatID()
        dttgltrans.Text = DateTime.Now.ToString("yyyy-MM-dd")
    End Sub
    Sub buatID()
        Dim sr As SqlDataReader
        Dim sc As SqlCommand
        sc = New SqlCommand("select isnull(max(right(kdtrans,2)),'0') from ttrans ", conn)
        sr = sc.ExecuteReader
        sr.Read()
        Dim hslkode As Integer
        hslkode = Val(sr.GetString(0)) + 101
        txtkdtrans.Text = "TR-" & Microsoft.VisualBasic.Right(hslkode, 2)
    End Sub

    Protected Sub txtplg_TextChanged(sender As Object, e As EventArgs) Handles txtplg.TextChanged
        Dim sr As SqlDataReader
        Dim sc As SqlCommand

        sc = New SqlCommand("select nm_plg from tplg where kd_plg='" & txtplg.Text & "'", conn)
        sr = sc.ExecuteReader
        sr.Read()
        If sr.HasRows Then
            txtnm.Text = sr.GetString(0)
        End If
        sr.Close()
    End Sub

    Protected Sub txtkdbrg_TextChanged(sender As Object, e As EventArgs) Handles txtkdbrg.TextChanged
        Dim sr As SqlDataReader
        Dim sc As SqlCommand

        sc = New SqlCommand("select nm_brg,harga from tbarang where kd_brg='" & txtkdbrg.Text & "'", conn)
        sr = sc.ExecuteReader
        sr.Read()
        If sr.HasRows Then
            txtnmbrg.Text = sr.GetString(0)
            txthrgbrg.Text = sr.GetValue(1).ToString
        Else
            lblMessage.Text = "Data Barang Tidak Ditemukan"
        End If
        sr.Close()

    End Sub

    Protected Sub txtjmlh_TextChanged(sender As Object, e As EventArgs) Handles txtjmlh.TextChanged
        Dim stok As Integer
        Dim sr As SqlDataReader
        Dim sc As SqlCommand

        sc = New SqlCommand("select stok from tbarang where kd_brg='" & txtkdbrg.Text & "'", conn)
        sr = sc.ExecuteReader
        sr.Read()
        If sr.HasRows Then
            stok = Val(sr.GetValue(0).ToString)
            If stok - Val(txtjmlh.Text) >= 0 Then
                txttttl.Text = Val(txtjmlh.Text) * Val(txthrgbrg.Text)
                btnsimpan.Enabled = True
                lblMessage.Text = ""
            Else
                btnsimpan.Enabled = False
                lblMessage.Text = "Stok Tidak Tersedia, Stok Tersisa : " & stok
                txttttl.Text = 0
            End If
        Else
            lblMessage.Text = "Data Barang Tidak Ditemukan"
        End If

    End Sub

    Protected Sub txtbayar_TextChanged(sender As Object, e As EventArgs) Handles txtbayar.TextChanged
        txtkembali.Text = Val(txtbayar.Text) - Val(txttttl.Text)
    End Sub

    Protected Sub btnsimpan_Click(sender As Object, e As EventArgs) Handles btnsimpan.Click
        Dim kdtrans, tgl, kdbrg, kdplg As String
        Dim harga, bayar, jumlah, total, kembali As Double
        kdtrans = txtkdtrans.Text

        tgl = dttgltrans.Text
        kdplg = txtplg.Text
        kdbrg = txtkdbrg.Text
        jumlah = txtjmlh.Text
        total = txttttl.Text
        bayar = txtbayar.Text
        harga = txthrgbrg.Text
        kembali = txtkembali.Text




        Dim sc As SqlCommand
        Dim sc2 As SqlCommand
        sc = New SqlCommand("insert into ttrans values ('" & kdtrans & "','" & kdplg & "','" & tgl & "','" & bayar & "','" & kembali & "')", conn)
        sc2 = New SqlCommand("insert into tdtrans values ('" & kdtrans & "','" & kdbrg & "','" & harga & "','" & jumlah & "','" & total & "')", conn)
        sc.ExecuteNonQuery()
        sc2.ExecuteNonQuery()
        Dim sc3 As SqlCommand
        sc3 = New SqlCommand("update tbarang set stok=stok-" & jumlah & "where kd_brg='" & kdbrg & "'", conn)
        sc3.ExecuteNonQuery()
        lblMessage.Text = "Data Berhasil Ditambahkan"
        txtkdtrans.Text = ""
        dttgltrans.Text = ""
        txtplg.Text = ""
        txtkdbrg.Text = ""
        txtjmlh.Text = ""
        txttttl.Text = ""
        txtbayar.Text = ""
        txthrgbrg.Text = ""
        txtkembali.Text = ""
        buatID()

    End Sub
End Class