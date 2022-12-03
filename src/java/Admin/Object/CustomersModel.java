/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Admin.Object;
/**
 *
 * @author Administrator
 */
public class CustomersModel {
  private int id;
  private String namaPengirim;
  private String namaPenerima;
  private String alamatPengirim;
  private String alamatPenerima;
  private String noTelephonePengirim;
  private String noTelephonePenerima;
  private String kodePosPengirim;
  private String kodePosPenerima;
  private String infoBarang;
  private String kg;
  private String servis;
  private String totalBiaya;
  private String noResi;

    public String getNoResi() {
        return noResi;
    }

    public void setNoResi(String NoResi) {
        this.noResi = NoResi;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNamaPengirim() {
        return namaPengirim;
    }

    public void setNamaPengirim(String NamaPengirim) {
        this.namaPengirim = NamaPengirim;
    }

    public String getNamaPenerima() {
        return namaPenerima;
    }

    public void setNamaPenerima(String NamaPenerima) {
        this.namaPenerima = NamaPenerima;
    }

    public String getAlamatPengirim() {
        return alamatPengirim;
    }

    public void setAlamatPengirim(String AlamatPengirim) {
        this.alamatPengirim = AlamatPengirim;
    }

    public String getAlamatPenerima() {
        return alamatPenerima;
    }

    public void setAlamatPenerima(String AlamatPenerima) {
        this.alamatPenerima = AlamatPenerima;
    }

    public String getNoTelephonePengirim() {
        return noTelephonePengirim;
    }

    public void setNoTelephonePengirim(String NoTelephonePengirim) {
        this.noTelephonePengirim = NoTelephonePengirim;
    }

    public String getNoTelephonePenerima() {
        return noTelephonePenerima;
    }

    public void setNoTelephonePenerima(String NoTelephonePenerima) {
        this.noTelephonePenerima = NoTelephonePenerima;
    }

    public String getKodePosPengirim() {
        return kodePosPengirim;
    }

    public void setKodePosPengirim(String KodePosPengirim) {
        this.kodePosPengirim = KodePosPengirim;
    }

    public String getKodePosPenerima() {
        return kodePosPenerima;
    }

    public void setKodePosPenerima(String KodePosPenerima) {
        this.kodePosPenerima = KodePosPenerima;
    }

    public String getInfoBarang() {
        return infoBarang;
    }

    public void setInfoBarang(String InfoBarang) {
        this.infoBarang = InfoBarang;
    }

    public String getKg() {
        return kg;
    }

    public void setKg(String Kg) {
        this.kg = Kg;
    }

    public String getServis() {
        return servis;
    }

    public void setServis(String Servis) {
        this.servis = Servis;
    }

    public String getTotalBiaya() {
        return totalBiaya;
    }

    public void setTotalBiaya(String TotalBiaya) {
        this.totalBiaya = TotalBiaya;
    }
  
}
