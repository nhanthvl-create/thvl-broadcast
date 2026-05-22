# THVL — Hệ thống quản lý lịch phát sóng v2.0

## Tính năng
- **Dashboard realtime**: tổng quan lịch hôm nay, phiếu NT chờ duyệt, cảnh báo thiếu file
- **Lịch HDPS**: nhập tay từng mục HOẶC upload file Excel HDPS — tự động parse
- **Phiếu nghiệm thu**: các phòng CM nộp phiếu, phòng CT TH duyệt/trả về, tự động ghép với lịch
- **Xuất file .ply**: 1 click → tải về file .ply đúng format AirBox/PlayBox
- **Copy file**: giao diện copy file từ server về máy phát sóng, theo dõi tiến độ realtime
- **Phân quyền 4 role**: Admin / Phòng CT TH / Phòng CM / Phát sóng

## Cài đặt
1. Giải nén vào `C:\THVL\thvl_v2\`
2. Cài Python 3.9+ (tích "Add to PATH")
3. Nhấn đúp `CHAY_UNG_DUNG.bat`
4. Mở trình duyệt: `http://localhost:5000`
5. Từ máy khác LAN: `http://[IP-may-chu]:5000`

## Tài khoản
| Login | Mật khẩu | Vai trò |
|---|---|---|
| admin | admin123 | Toàn quyền |
| bichloan | loan123 | Phòng CT TH |
| maihuynh | huynh123 | P.SXCT |
| thanhsang | sang123 | P.Biên dịch |
| vantuan | tuan123 | P.Thời sự |
| phatsong | ps123 | Phát sóng |

## Quy trình sử dụng
1. **Phòng CT TH** upload Excel HDPS → lịch tự động import
2. **Các phòng CM** đăng nhập → Nộp phiếu nghiệm thu (tên file + đường dẫn)
3. **Phòng CT TH** duyệt phiếu → hệ thống tự ghép với lịch
4. **Phòng CT TH** xác nhận từng mục → đánh dấu "Hoàn chỉnh lịch"
5. **Phát sóng** xuất file .ply → import vào AirBox
6. **Phát sóng** nhấn "Copy file" → file nội dung tự copy về máy phát sóng

## Backup
Database lưu tại `instance/thvl.db` — backup file này định kỳ.
