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
public class HistoryModel {
  private int id;
  private String tanggal;
  private String history;
  private String id_registration;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTanggal() {
        return tanggal;
    }

    public void setTanggal(String tanggal) {
        this.tanggal = tanggal;
    }

    public String getHistory() {
        return history;
    }

    public void setHistory(String history) {
        this.history = history;
    }

    public String getId_registration() {
        return id_registration;
    }

    public void setId_registration(String id_registration) {
        this.id_registration = id_registration;
    }
  
}
