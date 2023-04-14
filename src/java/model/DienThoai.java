/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author ADMIN
 */
public class DienThoai {
    private String idDienThoai,ten,gia,chip,pin,manHinh,boNhoTrong;
    public DienThoai() {
    }

    public DienThoai(String idDienThoai, String ten, String gia, String chip, String pin, String manHinh, String boNhoTrong) {
        this.idDienThoai = idDienThoai;
        this.ten = ten;
        this.gia = gia;
        this.chip = chip;
        this.pin = pin;
        this.manHinh = manHinh;
        this.boNhoTrong = boNhoTrong;
    }

    public String getIdDienThoai() {
        return idDienThoai;
    }

    public void setIdDienThoai(String idDienThoai) {
        this.idDienThoai = idDienThoai;
    }

    public String getTen() {
        return ten;
    }

    public void setTen(String ten) {
        this.ten = ten;
    }

    public String getGia() {
        return gia;
    }

    public void setGia(String gia) {
        this.gia = gia;
    }

    public String getChip() {
        return chip;
    }

    public void setChip(String chip) {
        this.chip = chip;
    }

    public String getPin() {
        return pin;
    }

    public void setPin(String pin) {
        this.pin = pin;
    }

    public String getManHinh() {
        return manHinh;
    }

    public void setManHinh(String manHinh) {
        this.manHinh = manHinh;
    }

    public String getBoNhoTrong() {
        return boNhoTrong;
    }

    public void setBoNhoTrong(String boNhoTrong) {
        this.boNhoTrong = boNhoTrong;
    }
 
    
}
