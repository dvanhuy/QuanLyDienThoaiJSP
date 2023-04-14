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
public class TaiKhoan {
    private String tenTaiKhoan;
    private String matKhau;
    private String vaiTro;
    public TaiKhoan() {
    }

    public TaiKhoan(String tenTaiKhoan, String matKhau, String vaiTro) {
        this.tenTaiKhoan = tenTaiKhoan;
        this.matKhau = matKhau;
        this.vaiTro = vaiTro;
    }

    public String getTenTaiKhoan() {
        return tenTaiKhoan;
    }

    public void setTenTaiKhoan(String tenTaiKhoan) {
        this.tenTaiKhoan = tenTaiKhoan;
    }

    public String getMatKhau() {
        return matKhau;
    }

    public void setMatKhau(String matKhau) {
        this.matKhau = matKhau;
    }

    public String getVaiTro() {
        return vaiTro;
    }

    public void setVaiTro(String vaiTro) {
        this.vaiTro = vaiTro;
    }
    
    
}
