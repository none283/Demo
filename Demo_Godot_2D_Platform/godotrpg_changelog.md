# Hướng dẫn thử phiên bản game hiện tại (Window only):
  - Tải file phiên bản bạn muốn trong thư mục [Build](https://github.com/none283/Godot-Project-Alpha/blob/main/Build)

## Versions
  * [Version 0](#version-0)
    + [0.1: Thêm chuyển động nhân vật](#01-thêm-chuyển-động-nhân-vật)
    + [0.2: Thêm bảng tùy chỉnh chỉ số](#02-thêm-bảng-tùy-chỉnh-chỉ-số)
    + [0.3: Thêm map test](#03-thêm-map-test)
    + [0.4: Last version for now](#04-last-version-for-now)
    + [0.5: Update hình ảnh, lướt](#05-update-hình-ảnh-lướt)
    + [0.6: Update kỹ năng, âm thanh](#06-update-hạt-giống-kỹ-năng-âm-thanh)
    + [0.6.1: Fix Sprites Player, Enemy](#061-fix-sprites-player-enemy)
  * [Version 1](#version-1)
    + [1.1: Big Update](#11-big-update)
    + [1.2: Translate, Dialog, Quest](#12-translate-dialog-quest)

# Version 0
## 0.1: Thêm chuyển động nhân vật
  - Thêm Entity Class gồm thuộc tính:
    - `gravity`:  trọng lực mà Entity phải nhận (ảnh hưởng nhảy)
    - `velocity`: Vector2 xác định hướng và độ dài vector vận tốc
    - Thêm Player Class kế thừa Entity gồm thuộc tính:
      - `sprite-player`:      Hình ảnh hiện tại Player
      - `animations-player`:  Trình phát hoạt ảnh Player
      - `states-manager`:     Trình quản lý Player States
      - `collisionShape`:     Hitbox Player (hình chữ nhật)
  - Thêm Level Test (mặt đất Player đứng)
  - Thêm các phím chuyển động Player:
    - `A`:                  Trái
    - `D`:                  Phải
    - `Space`:              Nhảy
    - `F` or `Left Mouse`:  Tấn công
  - Thêm hệ thống states machine
  - Các states hiện có:
    - `idle`:     đứng yên
    - `speedup`:  tăng tốc (không thể hủy hoạt ảnh) 
    - `run`:      chạy
    - `slowdown`: giảm tốc (không thể hủy hoạt ảnh)  
    - `jump`:     nhảy
    - `fall`:     rơi(từ trên không trung)
    - `attack`:   tấn công (không thể hủy hoạt ảnh)
  ### Version-note:
    - Yêu cầu hoạt ảnh nhân vật phải được để vào chung 1 file hình ảnh như sau:
  **Lưu ý tất cả các khung ảnh phải có cùng 1 kích thước _ALL FRAME NEED SAME SIZE_**
  ![](Godot/Assets/test/player.png)
  ### Next-version-idea:
    - Thêm giao diện tùy chỉnh các thông số của nhân vật
    - Thêm giao diện hiện State hiện tại của nhân vật
## 0.2: Thêm bảng tùy chỉnh chỉ số
  - Thêm bảng tùy chỉnh chỉ số nhân vật (Nhấn Enter sau khi gõ giá trị vào ô màu đen để thay đổi chỉ số nhân vật)    
  - Sửa lại lỗi chạy càng ngày càng chậm do hủy animation giữa chừng
  - Giờ đây có thể nhảy khi đang trong giai đoạn `speedup` hoặc `slowdown`

## 0.3: Thêm map test
  - Thêm map test
  - Thêm Camera follow Player
  - Thêm minimap (vẫn chưa hoạt động, sẽ thêm hoàn chỉnh nếu cần minimap cho game)

## 0.4: Last version for now
  - Thêm thanh máu cho Player
  - Thêm kẻ thù:
    - Thanh máu
    - Thanh shield
    - Scan người chơi trong tầm nhìn và đi đến người chơi
    - Tấn công người chơi khi đi đến khoảng cách có thể đánh trúng
    - `Random Action`:
      - 20% tỷ lệ đứng yên
      - 80% tỷ lệ di chuyển random xung quanh 300-600 khoảng cách
    - Dừng lại khi đi đến vực (Enemy tạm thời không nhảy)
  - Thêm đánh nhanh:
    - Thay đổi phím `F` thành đánh nhanh:
      - Sát thương = Sát thương đánh mạnh / 2
      - Thời gian có thể hủy animation đánh: `0.1` giây
      - Thời gian hoàn thành animation đánh: `0.5` giây
      - Không thể phá khiên
    - Phím `G` đánh mạnh
      - Sát thương lên khiên = sát thương * 2
      - Thời gian có thể hủy animation đánh: `0.4` giây
      - Thời gian hoàn thành animation đánh: `1.0` giây

## 0.5: Update hình ảnh, lướt
  - Thêm hình ảnh cho nhân vật chính
  - Thêm phím `CTRL` kích hoạt lướt (tốc độ lướt = tốc độ chạy * 2)
  - Sửa lướt, Lướt giờ đây sẽ giảm dần tốc độ về 0 (phụ thuộc vào gia tốc, không còn phụ thuộc vào thời gian hoạt ảnh), Không thể hủy hoạt ảnh khi đang trên đường lướt

## 0.6: Update hạt giống kỹ năng, âm thanh
  - Thêm giao diện Menu bấm phím `ESC`
  - Thêm giao diện Menu kỹ năng
  - Thêm 3 hạt giống kỹ năng
  - Thêm trình phát âm thanh

## 0.6.1: Fix Sprites Player, Enemy
  - Thêm script auto add animation vào animationplayer
  - Sửa hình ảnh, hoạt ảnh nhân vật, thêm hình ảnh, hoạt ảnh kẻ địch loại 1

# Version 1
## 1.1: Big Update
  - Thêm Màn hình chính
  - Thêm Màn hình Loading
  - Thêm Màn hình Pause:
    - Màn hình Pause sẽ tạm dừng trò chơi, mở bằng cách nhấn phím `ESC`
  - Thêm Settings
  - Thêm Save Loading System
  - Thêm behavior-tree cho Enemy
  - Thêm 2 Skill bị động cơ bản còn lại:
    - Hồi phục: Hồi lại máu cơ bản ngoài giao tranh, sử dụng bằng cách đứng yên và nhấn phím `B`
    - Nhện: Leo tường với thanh thể lực, sử dụng bằng cách giữ phím `Shift` trước khi chạm vào tường
  - Thêm Inventory:
    - Mở menu bằng phím `E`
    - Nhặt vật phẩm dưới đất ở gần bằng cách nhấn phím `Z`
  - Thêm thanh EXP
  - Thêm một vài chỉnh sửa khác

## 1.2: Translate, Dialog, Quest
  - Thêm dịch thuật:
    - Tiếng Anh
    - Tiếng Việt
  - Thêm Tính năng hội thoại:
    - Hội thoại loại 1: Đến gần kẻ địch và ấn phím `T`
    - Hội thoại loại 2: Đến gần kẻ địch và ấn phím `Y`
  - Thêm Tính năng nhiệm vụ
  - Fix một vài lỗi