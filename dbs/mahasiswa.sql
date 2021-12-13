/*
 Navicat Premium Data Transfer

 Source Server         : adminsql
 Source Server Type    : MySQL
 Source Server Version : 50733
 Source Host           : localhost:3306
 Source Schema         : test

 Target Server Type    : MySQL
 Target Server Version : 50733
 File Encoding         : 65001

 Date: 13/12/2021 10:09:57
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for mahasiswa
-- ----------------------------
DROP TABLE IF EXISTS `mahasiswa`;
CREATE TABLE `mahasiswa`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nim` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `nama` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `alamat` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `nim`(`nim`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 74 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of mahasiswa
-- ----------------------------
INSERT INTO `mahasiswa` VALUES (13, 'A11.2000.416', 'Bella Yuniar S.IP', 'Psr. Ekonomi No. 727, Probolinggo 55817, Banten');
INSERT INTO `mahasiswa` VALUES (14, 'A11.2000.115', 'Among Kasusra Zulkarnain', 'Jln. Sutan Syahrir No. 936, Tidore Kepulauan 81074, KalUt');
INSERT INTO `mahasiswa` VALUES (15, 'A11.2001.205', 'Puti Maryati', 'Psr. Kyai Gede No. 187, Semarang 57759, Banten');
INSERT INTO `mahasiswa` VALUES (16, 'A11.2000.51', 'Yuni Rahayu Lailasari S.E.I', 'Ki. Perintis Kemerdekaan No. 66, Lubuklinggau 39204, NTB');
INSERT INTO `mahasiswa` VALUES (17, 'A11.2000.352', 'Bagya Yahya Prasetya S.IP', 'Ds. Cihampelas No. 485, Bukittinggi 41786, SulTeng');
INSERT INTO `mahasiswa` VALUES (18, 'A11.2001.841', 'Jinawi Mahendra S.Ked', 'Ki. Baha No. 151, Pontianak 18697, Banten');
INSERT INTO `mahasiswa` VALUES (19, 'A11.2001.778', 'Harsanto Permadi S.Kom', 'Ki. Gatot Subroto No. 980, Tangerang Selatan 61409, KepR');
INSERT INTO `mahasiswa` VALUES (20, 'A11.2000.282', 'Maida Lailasari', 'Ds. Radio No. 221, Lubuklinggau 98752, Jambi');
INSERT INTO `mahasiswa` VALUES (21, 'A11.2000.421', 'Raina Permata', 'Ki. Barat No. 476, Bandar Lampung 94731, KalTeng');
INSERT INTO `mahasiswa` VALUES (22, 'A11.2001.164', 'Melinda Aryani', 'Gg. Wahid No. 90, Mataram 96522, KalSel');
INSERT INTO `mahasiswa` VALUES (23, 'A11.2000.961', 'Tantri Yulia Andriani', 'Ki. Ronggowarsito No. 65, Ternate 93831, KalUt');
INSERT INTO `mahasiswa` VALUES (24, 'A11.2000.704', 'Rina Suartini', 'Gg. Cokroaminoto No. 787, Tomohon 46037, MalUt');
INSERT INTO `mahasiswa` VALUES (25, 'A11.2001.400', 'Wardi Prakasa S.E.I', 'Dk. Suprapto No. 960, Tebing Tinggi 42490, KalUt');
INSERT INTO `mahasiswa` VALUES (26, 'A11.2001.835', 'Karna Jati Manullang M.Pd', 'Dk. Dewi Sartika No. 160, Singkawang 26714, Bengkulu');
INSERT INTO `mahasiswa` VALUES (27, 'A11.2001.301', 'Endra Maryadi', 'Ki. Dr. Junjunan No. 611, Ambon 59713, JaBar');
INSERT INTO `mahasiswa` VALUES (28, 'A11.2001.761', 'Dirja Hasim Sihombing S.E.', 'Kpg. Bakau Griya Utama No. 574, Serang 11496, Aceh');
INSERT INTO `mahasiswa` VALUES (29, 'A11.2001.494', 'Ajeng Hastuti M.Kom.', 'Gg. Cikutra Timur No. 580, Kediri 90742, SulUt');
INSERT INTO `mahasiswa` VALUES (30, 'A11.2000.550', 'Ina Ifa Prastuti M.Kom.', 'Jln. Veteran No. 495, Payakumbuh 38455, KalBar');
INSERT INTO `mahasiswa` VALUES (31, 'A11.2001.839', 'Diah Halimah M.TI.', 'Ds. Raden No. 523, Administrasi Jakarta Utara 32531, SumSel');
INSERT INTO `mahasiswa` VALUES (32, 'A11.2000.894', 'Jessica Wulandari', 'Dk. Kusmanto No. 513, Depok 33073, Maluku');
INSERT INTO `mahasiswa` VALUES (33, 'A11.2000.974', 'Nilam Farida', 'Kpg. Achmad Yani No. 830, Palopo 49540, BaBel');
INSERT INTO `mahasiswa` VALUES (34, 'A11.2000.43', 'Hadi Waluyo S.Sos', 'Jln. Baabur Royan No. 145, Balikpapan 22353, SumBar');
INSERT INTO `mahasiswa` VALUES (35, 'A11.2001.792', 'Jaiman Jindra Sinaga S.Pt', 'Ki. Kyai Gede No. 749, Magelang 46138, KalTeng');
INSERT INTO `mahasiswa` VALUES (36, 'A11.2000.853', 'Paris Hasanah', 'Ki. Gedebage Selatan No. 859, Palangka Raya 58134, DKI');
INSERT INTO `mahasiswa` VALUES (37, 'A11.2001.378', 'Edi Januar', 'Kpg. Baranang Siang No. 325, Bengkulu 93298, NTT');
INSERT INTO `mahasiswa` VALUES (38, 'A11.2000.945', 'Tari Dian Rahmawati', 'Gg. Teuku Umar No. 577, Bandung 17770, Bengkulu');
INSERT INTO `mahasiswa` VALUES (39, 'A11.2000.798', 'Uchita Kasiyah Astuti', 'Ds. Baya Kali Bungur No. 947, Bontang 57885, KalTim');
INSERT INTO `mahasiswa` VALUES (40, 'A11.2000.373', 'Gilda Lailasari', 'Dk. Bakti No. 145, Padang 95415, Riau');
INSERT INTO `mahasiswa` VALUES (41, 'A11.2000.660', 'Gatot Ibrahim Pangestu S.Kom', 'Dk. Ki Hajar Dewantara No. 640, Payakumbuh 66148, NTT');
INSERT INTO `mahasiswa` VALUES (42, 'A11.2000.379', 'Salsabila Cinta Wulandari', 'Psr. Sentot Alibasa No. 158, Pontianak 43726, Gorontalo');
INSERT INTO `mahasiswa` VALUES (43, 'A11.2000.692', 'Cornelia Mandasari', 'Dk. Nanas No. 983, Tanjung Pinang 28901, Banten');
INSERT INTO `mahasiswa` VALUES (44, 'A11.2000.898', 'Tiara Uyainah S.H.', 'Ds. Yap Tjwan Bing No. 249, Solok 13937, SulUt');
INSERT INTO `mahasiswa` VALUES (45, 'A11.2000.907', 'Gaman Tedi Prasetya', 'Ki. Yoga No. 324, Payakumbuh 35736, Lampung');
INSERT INTO `mahasiswa` VALUES (46, 'A11.2001.735', 'Zaenab Lidya Utami', 'Gg. Ujung No. 944, Tanjungbalai 34918, JaTeng');
INSERT INTO `mahasiswa` VALUES (47, 'A11.2000.230', 'Candrakanta Maulana S.IP', 'Jr. Ketandan No. 735, Pekanbaru 49630, JaTim');
INSERT INTO `mahasiswa` VALUES (48, 'A11.2001.262', 'Jagaraga Kuswoyo', 'Dk. Halim No. 961, Palembang 48921, SumBar');
INSERT INTO `mahasiswa` VALUES (49, 'A11.2000.556', 'Widya Kuswandari', 'Ki. Ekonomi No. 263, Denpasar 66755, Jambi');
INSERT INTO `mahasiswa` VALUES (50, 'A11.2001.904', 'Intan Wulandari', 'Kpg. Qrisdoren No. 151, Prabumulih 16692, PapBar');
INSERT INTO `mahasiswa` VALUES (51, 'A11.2001.937', 'Sakti Utama M.TI.', 'Gg. Cikapayang No. 50, Metro 70897, SumUt');
INSERT INTO `mahasiswa` VALUES (52, 'A11.2000.278', 'Hardana Kurniawan', 'Dk. Wahid Hasyim No. 13, Cilegon 90012, Bali');
INSERT INTO `mahasiswa` VALUES (53, 'A11.2000.510', 'Martaka Dabukke S.Pd', 'Gg. Basuki No. 646, Tanjung Pinang 55638, SumSel');
INSERT INTO `mahasiswa` VALUES (54, 'A11.2000.34', 'Dina Mulyani M.Kom.', 'Jr. Kali No. 280, Pariaman 16817, NTB');
INSERT INTO `mahasiswa` VALUES (55, 'A11.2000.793', 'Tania Puspasari', 'Ki. Soekarno Hatta No. 866, Solok 72809, Maluku');
INSERT INTO `mahasiswa` VALUES (56, 'A11.2000.283', 'Gasti Kuswandari', 'Ds. Jambu No. 539, Jambi 95265, Bali');
INSERT INTO `mahasiswa` VALUES (57, 'A11.2001.458', 'Warta Wibowo', 'Gg. Jakarta No. 486, Bandar Lampung 40923, SulTeng');
INSERT INTO `mahasiswa` VALUES (58, 'A11.2000.239', 'Anita Eva Prastuti', 'Kpg. Bahagia  No. 621, Langsa 94719, SumUt');
INSERT INTO `mahasiswa` VALUES (59, 'A11.2001.31', 'Ulva Yuniar', 'Jln. Salatiga No. 160, Manado 92796, Aceh');
INSERT INTO `mahasiswa` VALUES (60, 'A11.2001.862', 'Harsaya Halim', 'Jr. Imam No. 892, Balikpapan 90931, KalBar');
INSERT INTO `mahasiswa` VALUES (61, 'A11.2000.540', 'Nabila Dina Zulaika S.Sos', 'Jln. Dago No. 64, Padangpanjang 95664, JaBar');
INSERT INTO `mahasiswa` VALUES (62, 'A11.2000.338', 'Mulyanto Putra', 'Psr. B.Agam 1 No. 534, Lubuklinggau 38894, MalUt');
INSERT INTO `mahasiswa` VALUES (63, 'A11.2001.86', 'Kiandra Wijayanti S.Farm', 'Kpg. Jagakarsa No. 798, Pagar Alam 91598, NTT');
INSERT INTO `mahasiswa` VALUES (64, 'A11.2001.312', 'Makuta Prasasta', 'Jr. B.Agam 1 No. 182, Pagar Alam 99919, KalTeng');
INSERT INTO `mahasiswa` VALUES (65, 'A11.2000.281', 'Salsabila Rahayu M.Kom.', 'Jr. Adisucipto No. 265, Bekasi 33501, SulSel');
INSERT INTO `mahasiswa` VALUES (66, 'A11.2000.957', 'Sakura Wijayanti', 'Kpg. K.H. Wahid Hasyim (Kopo) No. 203, Palembang 85680, MalUt');
INSERT INTO `mahasiswa` VALUES (67, 'A11.2000.235', 'Darman Iswahyudi', 'Jln. Orang No. 362, Serang 59344, SulTra');
INSERT INTO `mahasiswa` VALUES (68, 'A11.2001.203', 'Kanda Irawan', 'Kpg. Ketandan No. 182, Mataram 70291, SulTeng');
INSERT INTO `mahasiswa` VALUES (69, 'A11.2001.310', 'Yessi Safitri M.Ak', 'Ki. Pattimura No. 345, Palopo 46871, Bengkulu');
INSERT INTO `mahasiswa` VALUES (70, 'A11.2000.419', 'Daruna Winarno M.Pd', 'Gg. Jagakarsa No. 491, Administrasi Jakarta Selatan 98104, BaBel');
INSERT INTO `mahasiswa` VALUES (73, 'gg', 'rgr', 'grgr');

SET FOREIGN_KEY_CHECKS = 1;
