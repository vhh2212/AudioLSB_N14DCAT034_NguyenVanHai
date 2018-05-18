AudioLSB
Nguyễn Văn Hải - N14DCAT034

Tăng kích thước upload file để phù hợp với tập tin audio
Chỉnh sửa trong file "php.ini"
	upload_max_filesize = 64M
	post_max_size = 64M
  
Tài khoản admin: id: administrator
		 pw: 1122334455
Đăng ký tài khoản người dùng với id gồm 5 ký tự không bao gồm ký tự đặc biệt, password gồm 8 ký tự. VD:
		 id: congiola
		 pw: 0987976761
     
Tài khoản admin có quyền up file audio dưới định dạng (*.WAV). 
Quá trình upload nhạc trong khoảng 1-2p do phải upload lên API Google Drive, lấy id và chia sẻ file và ghi dữ liệu vào database.

Tài khoản người dùng có quyền mua nhạc để có thể nghe nhạc và tải nhạc. Khi người dùng mua nhạc sẽ chèn chữ ký của họ vào file .WAV.
Quá trình mua nhạc trong khoảng 3-4p do phải đọc file .WAV, chèn chữ ký vào file .WAV, tạo lại file audio mới có chữ ký và upload lên API Google Drive, lấy id mới và chia sẻ file, ghi lại dữ liệu vào database.

Người dùng có quyền nghe nhạc ngay trên web hoặc download bài nhạc đã mua về máy. 
Khi người dùng nhấn vào download nhạc sẽ chuyển sang site doc-0s-58-docs.googleusercontent.com, người dùng nhấn vào download thì sẽ decode chữ ký và cho phép người dùng tải file có chữ ký về máy.
