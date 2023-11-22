
package gui.form;

import dao.Dao_ChiTietDichVu;
import dao.Dao_DichVu;
import dao.Dao_HoaDon;
import dao.Dao_LoaiSanpham;
import entity.ChiTietDichVu;
import entity.ChiTietHoaDon;
import entity.DichVu;
import entity.HoaDon;
import entity.LoaiSanPham;
import java.awt.Image;
import java.util.ArrayList;
import javax.swing.Icon;
import javax.swing.ImageIcon;
import javax.swing.JOptionPane;
import javax.swing.table.DefaultTableModel;

/**
 *
 * @author THANHTU
 */
public class Form_ThemDichVuKhiDatPhong extends javax.swing.JFrame {

    private Dao_DichVu dao_DichVu = new Dao_DichVu();
    private Dao_ChiTietDichVu dao_ChiTietDichVu = new Dao_ChiTietDichVu();
    private Dao_HoaDon dao_HoaDon = new Dao_HoaDon();
    private Dao_LoaiSanpham dao_LoaiSP = new Dao_LoaiSanpham();
    private ArrayList<DichVu> listDichVu;
    private DefaultTableModel modelDichVu;
    private String maHD;
    private ArrayList<ChiTietDichVu> listCTDichVu;
    
    public Form_ThemDichVuKhiDatPhong() {
        initComponents();
        listDichVu = dao_DichVu.getDanhSachDichVu();
        themDuLieuVaoBang(listDichVu);
        themDuLieuLoaiSPTrongVaoCBB();
    }

    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jPanel1 = new javax.swing.JPanel();
        jLabel1 = new javax.swing.JLabel();
        lblBack = new javax.swing.JLabel();
        jPanel2 = new javax.swing.JPanel();
        scrDichVu = new javax.swing.JScrollPane();
        tblDichVu = new javax.swing.JTable();
        jPanel3 = new javax.swing.JPanel();
        jLabel2 = new javax.swing.JLabel();
        jScrollPane1 = new javax.swing.JScrollPane();
        txtSoLuong = new javax.swing.JTextPane();
        btnLamMoi = new javax.swing.JButton();
        btnThemDV = new javax.swing.JButton();
        jPanel4 = new javax.swing.JPanel();
        lblImage = new javax.swing.JLabel();
        lblTitleMaHD = new javax.swing.JLabel();
        lblMaHD = new javax.swing.JLabel();
        jLabel3 = new javax.swing.JLabel();
        cbbLoaiSP = new javax.swing.JComboBox<>();

        setLocation(new java.awt.Point(200, 200));

        jPanel1.setBackground(new java.awt.Color(255, 169, 114));

        jLabel1.setFont(new java.awt.Font("Times New Roman", 1, 48)); // NOI18N
        jLabel1.setForeground(new java.awt.Color(121, 87, 142));
        jLabel1.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        jLabel1.setIcon(new javax.swing.ImageIcon(getClass().getResource("/image/img/dichVu.png"))); // NOI18N
        jLabel1.setText("Thêm dịch vụ");

        lblBack.setIcon(new javax.swing.ImageIcon(getClass().getResource("/image/img/back.png"))); // NOI18N
        lblBack.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                lblBackMouseClicked(evt);
            }
        });

        javax.swing.GroupLayout jPanel1Layout = new javax.swing.GroupLayout(jPanel1);
        jPanel1.setLayout(jPanel1Layout);
        jPanel1Layout.setHorizontalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel1Layout.createSequentialGroup()
                .addGap(15, 15, 15)
                .addComponent(lblBack, javax.swing.GroupLayout.PREFERRED_SIZE, 78, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(jLabel1, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addContainerGap())
        );
        jPanel1Layout.setVerticalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addGap(7, 7, 7)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                    .addComponent(lblBack)
                    .addComponent(jLabel1))
                .addContainerGap())
        );

        jPanel2.setBorder(javax.swing.BorderFactory.createTitledBorder(null, "Chọn dịch vụ", javax.swing.border.TitledBorder.DEFAULT_JUSTIFICATION, javax.swing.border.TitledBorder.TOP, new java.awt.Font("Times New Roman", 1, 18), new java.awt.Color(121, 87, 142))); // NOI18N

        tblDichVu.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {

            },
            new String [] {
                "Mã dịch vụ", "Tên dịch vụ", "Đơn vị tính", "Trạng thái dịch vụ", "Giá bán"
            }
        ) {
            Class[] types = new Class [] {
                java.lang.Object.class, java.lang.Object.class, java.lang.Object.class, java.lang.Object.class, java.lang.Double.class
            };

            public Class getColumnClass(int columnIndex) {
                return types [columnIndex];
            }
        });
        tblDichVu.setToolTipText("Hiện tất cả dịch vụ");
        tblDichVu.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                tblDichVuMouseClicked(evt);
            }
        });
        scrDichVu.setViewportView(tblDichVu);

        javax.swing.GroupLayout jPanel2Layout = new javax.swing.GroupLayout(jPanel2);
        jPanel2.setLayout(jPanel2Layout);
        jPanel2Layout.setHorizontalGroup(
            jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(scrDichVu, javax.swing.GroupLayout.DEFAULT_SIZE, 794, Short.MAX_VALUE)
        );
        jPanel2Layout.setVerticalGroup(
            jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(scrDichVu, javax.swing.GroupLayout.DEFAULT_SIZE, 304, Short.MAX_VALUE)
        );

        jPanel3.setBorder(javax.swing.BorderFactory.createTitledBorder(null, "Đặt món", javax.swing.border.TitledBorder.DEFAULT_JUSTIFICATION, javax.swing.border.TitledBorder.TOP, new java.awt.Font("Times New Roman", 1, 18), new java.awt.Color(121, 87, 142))); // NOI18N

        jLabel2.setText("Nhập số lượng:");

        jScrollPane1.setViewportView(txtSoLuong);

        btnLamMoi.setBackground(new java.awt.Color(9, 146, 213));
        btnLamMoi.setFont(new java.awt.Font("Times New Roman", 1, 24)); // NOI18N
        btnLamMoi.setForeground(new java.awt.Color(255, 255, 255));
        btnLamMoi.setIcon(new javax.swing.ImageIcon(getClass().getResource("/image/icon/reset.png"))); // NOI18N
        btnLamMoi.setText("Làm mới");
        btnLamMoi.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnLamMoiActionPerformed(evt);
            }
        });

        btnThemDV.setBackground(new java.awt.Color(9, 146, 213));
        btnThemDV.setFont(new java.awt.Font("Times New Roman", 1, 24)); // NOI18N
        btnThemDV.setForeground(new java.awt.Color(255, 255, 255));
        btnThemDV.setIcon(new javax.swing.ImageIcon(getClass().getResource("/image/icon/order.png"))); // NOI18N
        btnThemDV.setText("Thêm");
        btnThemDV.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnThemDVActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout jPanel3Layout = new javax.swing.GroupLayout(jPanel3);
        jPanel3.setLayout(jPanel3Layout);
        jPanel3Layout.setHorizontalGroup(
            jPanel3Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel3Layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jLabel2)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addComponent(jScrollPane1, javax.swing.GroupLayout.PREFERRED_SIZE, 305, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addComponent(btnThemDV, javax.swing.GroupLayout.PREFERRED_SIZE, 338, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(18, 18, 18)
                .addComponent(btnLamMoi, javax.swing.GroupLayout.PREFERRED_SIZE, 338, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(20, 20, 20))
        );
        jPanel3Layout.setVerticalGroup(
            jPanel3Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel3Layout.createSequentialGroup()
                .addGroup(jPanel3Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(jPanel3Layout.createSequentialGroup()
                        .addGap(8, 8, 8)
                        .addGroup(jPanel3Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                            .addComponent(jScrollPane1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(jLabel2)))
                    .addGroup(jPanel3Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                        .addComponent(btnThemDV, javax.swing.GroupLayout.PREFERRED_SIZE, 52, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addComponent(btnLamMoi, javax.swing.GroupLayout.PREFERRED_SIZE, 52, javax.swing.GroupLayout.PREFERRED_SIZE)))
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );

        jPanel4.setBorder(javax.swing.BorderFactory.createTitledBorder(null, "Hình ảnh", javax.swing.border.TitledBorder.DEFAULT_JUSTIFICATION, javax.swing.border.TitledBorder.TOP, new java.awt.Font("Times New Roman", 1, 18), new java.awt.Color(121, 87, 142))); // NOI18N

        lblImage.setIcon(new javax.swing.ImageIcon(getClass().getResource("/image/img/chonAnh.png"))); // NOI18N

        javax.swing.GroupLayout jPanel4Layout = new javax.swing.GroupLayout(jPanel4);
        jPanel4.setLayout(jPanel4Layout);
        jPanel4Layout.setHorizontalGroup(
            jPanel4Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel4Layout.createSequentialGroup()
                .addGap(0, 0, Short.MAX_VALUE)
                .addComponent(lblImage))
        );
        jPanel4Layout.setVerticalGroup(
            jPanel4Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(lblImage, javax.swing.GroupLayout.DEFAULT_SIZE, 308, Short.MAX_VALUE)
        );

        lblTitleMaHD.setFont(new java.awt.Font("Times New Roman", 1, 18)); // NOI18N
        lblTitleMaHD.setText("Mã hóa đơn:");

        lblMaHD.setFont(new java.awt.Font("Times New Roman", 0, 18)); // NOI18N
        lblMaHD.setText("123");

        jLabel3.setFont(new java.awt.Font("Times New Roman", 1, 18)); // NOI18N
        jLabel3.setText("Loại dịch vụ:");

        cbbLoaiSP.setModel(new javax.swing.DefaultComboBoxModel<>(new String[] { "Hiện tất cả dịch vụ" }));
        cbbLoaiSP.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                cbbLoaiSPActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(jPanel1, javax.swing.GroupLayout.Alignment.TRAILING, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addComponent(jPanel3, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addGroup(layout.createSequentialGroup()
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                            .addGroup(layout.createSequentialGroup()
                                .addComponent(lblTitleMaHD)
                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                .addComponent(lblMaHD, javax.swing.GroupLayout.PREFERRED_SIZE, 229, javax.swing.GroupLayout.PREFERRED_SIZE)
                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                .addComponent(jLabel3)
                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                .addComponent(cbbLoaiSP, javax.swing.GroupLayout.PREFERRED_SIZE, 348, javax.swing.GroupLayout.PREFERRED_SIZE))
                            .addComponent(jPanel2, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addComponent(jPanel4, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)))
                .addContainerGap())
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addComponent(jPanel1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, layout.createSequentialGroup()
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                            .addComponent(lblTitleMaHD)
                            .addComponent(lblMaHD)
                            .addComponent(jLabel3)
                            .addComponent(cbbLoaiSP, javax.swing.GroupLayout.PREFERRED_SIZE, 39, javax.swing.GroupLayout.PREFERRED_SIZE))
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addComponent(jPanel2, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                    .addComponent(jPanel4, javax.swing.GroupLayout.Alignment.TRAILING, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(jPanel3, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap())
        );

        pack();
        setLocationRelativeTo(null);
    }// </editor-fold>//GEN-END:initComponents

    private void lblBackMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_lblBackMouseClicked
        // TODO add your handling code here:
        this.dispose();
    }//GEN-LAST:event_lblBackMouseClicked

    private void tblDichVuMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_tblDichVuMouseClicked
        int row = tblDichVu.getSelectedRow();   
        String ma = modelDichVu.getValueAt(row, 0).toString();
        DichVu dv = dao_DichVu.timDichVuTheoMa(ma);

        lblImage.setIcon(ResizeImage(String.valueOf(System.getProperty("user.dir") + dv.getHinhAnh())));

    }//GEN-LAST:event_tblDichVuMouseClicked

    private void btnLamMoiActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnLamMoiActionPerformed
        txtSoLuong.setText("");
    }//GEN-LAST:event_btnLamMoiActionPerformed

    private void btnThemDVActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnThemDVActionPerformed
        int row = tblDichVu.getSelectedRow();  
        if (row == -1) {
            JOptionPane.showMessageDialog(this,"Vui lòng chọn dịch vụ !");
	}else {
            if(kiemTraDuLieu()) {
          
                String maHD = lblMaHD.getText();
                HoaDon hd = dao_HoaDon.timHoaDonTheoMaHoaDon(maHD);
                String maDichVu =  modelDichVu.getValueAt(row, 0).toString();  
            
                DichVu dv = dao_DichVu.timDichVuTheoMa(maDichVu);
                int soLuong = Integer.parseInt(txtSoLuong.getText());
                ChiTietDichVu ctdv = new ChiTietDichVu(dv, hd, soLuong); 
              
                dao_ChiTietDichVu.addChiTietDichVu(ctdv);  
                listCTDichVu = dao_ChiTietDichVu.getDanhSachCTDichVu(maHD);
                      
                JOptionPane.showMessageDialog(this,"Thêm dịch vụ thành công!"); 
                Form_ChiTietPhong.loadDSDichVu();
            }           
        }        
    }//GEN-LAST:event_btnThemDVActionPerformed

    private void cbbLoaiSPActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_cbbLoaiSPActionPerformed
        if(cbbLoaiSP.getSelectedIndex() != 0){
            xoaDuLieuBang();
            String tenLSP=cbbLoaiSP.getSelectedItem().toString();
            ArrayList<DichVu> listDichVuTheoTen = dao_DichVu.getDanhSachDichVuTheoTen(tenLSP);
            for (DichVu dv : listDichVuTheoTen) {
                modelDichVu.addRow(new Object[] {
                    dv.getMaDichVu(),
                    dv.getTenDichVu(),
                    dv.getDonViTinh(),
                    dv.isTrangThaiDichVu(),  
                    dv.tinhGiaBan(dv.getSanPham().getMaSanPham())
                });
            }       
        }else{
            xoaDuLieuBang();
            listDichVu = dao_DichVu.getDanhSachDichVu();
            themDuLieuVaoBang(listDichVu);
        }
       
    }//GEN-LAST:event_cbbLoaiSPActionPerformed

    public static void main(String args[]) {
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new Form_ThemDichVuKhiDatPhong().setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton btnLamMoi;
    private javax.swing.JButton btnThemDV;
    private javax.swing.JComboBox<String> cbbLoaiSP;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JPanel jPanel2;
    private javax.swing.JPanel jPanel3;
    private javax.swing.JPanel jPanel4;
    private javax.swing.JScrollPane jScrollPane1;
    private javax.swing.JLabel lblBack;
    private javax.swing.JLabel lblImage;
    private javax.swing.JLabel lblMaHD;
    private javax.swing.JLabel lblTitleMaHD;
    private javax.swing.JScrollPane scrDichVu;
    private javax.swing.JTable tblDichVu;
    private javax.swing.JTextPane txtSoLuong;
    // End of variables declaration//GEN-END:variables

    private void themDuLieuVaoBang(ArrayList<DichVu> listDV) {
        modelDichVu = (DefaultTableModel)tblDichVu.getModel();
        for (DichVu dv : listDV) {
            modelDichVu.addRow(new Object[] {
                dv.getMaDichVu(),
                dv.getTenDichVu(),
                dv.getDonViTinh(),
                dv.isTrangThaiDichVu()==true?"Sẵn sàng":"Chưa sẵn sàng",  
                dv.tinhGiaBan(dv.getSanPham().getMaSanPham())
            });
        } 
    }

    private Icon ResizeImage(String ImagePath) {  
        ImageIcon MyImage = new ImageIcon(ImagePath);
        Image img = MyImage.getImage();
        Image newImg = img.getScaledInstance(lblImage.getWidth(), lblImage.getHeight(), Image.SCALE_SMOOTH);
        ImageIcon image = new ImageIcon(newImg);
        return image;
     }
    
    public void setEditDataDV(HoaDon hd) {
        maHD = hd.getMaHoaDon();
        lblMaHD.setText(maHD);   
    }
    
    private boolean kiemTraDuLieu() {
        String sl = txtSoLuong.getText().trim();       
        if (sl.length() > 0 || sl.length() == 0) {
            try {
                Integer soLuong = Integer.parseInt(sl);
                if (soLuong < 0) {
                    JOptionPane.showMessageDialog(this,  "Error: Số lượng phải > hơn 0!" );
                    txtSoLuong.requestFocus();
                    return false;
                }
            } catch (NumberFormatException ex) {
                JOptionPane.showMessageDialog(this,  "Error: Số lượng phải > hơn 0!" );
                txtSoLuong.requestFocus();
                return false;
            }             
        }
        return true;
    }
    
    private void themDuLieuLoaiSPTrongVaoCBB() {
        ArrayList<LoaiSanPham> listLSP = dao_LoaiSP.getListSanPham();
        for (LoaiSanPham loaiSanPham : listLSP) {
            cbbLoaiSP.addItem(loaiSanPham.getTenLoaiSanPham());
        }
    }
    
    public void xoaDuLieuBang() {
        DefaultTableModel dm = (DefaultTableModel) tblDichVu.getModel();
        dm.getDataVector().removeAllElements();
    }
    
}
