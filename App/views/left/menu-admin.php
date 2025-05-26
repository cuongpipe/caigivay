<?php
    require "../../app/controller/loadsession.php";
                if(isset($_SESSION['UID']))
                {
                    require_once $_SERVER['DOCUMENT_ROOT'].'/BinhDinhNews/app/model/userDAO.php';
                    $userDAO = new UserDAO();
                    $result = $userDAO->getAuthorInfo($_SESSION['UID']);
                    
                } 
?>
<div class="menu-container">
    <div class="user-info-container">
                <img  src="<?php echo !empty($result['user_img']) ? "/BinhDinhNews/public/images/userAvatar/". $result['user_img'] : "/BinhDinhNews/public/images/user.png"?>"  alt="">
                <h3 class="username-tx"><?php echo $_SESSION['username'] ?>
                </h3>

    </div>
            
    <ul class="function-list-container">
                <li>
                    <a href="./index.php">TRANG CHỦ QUẢN LÝ</a>
                </li>
                <li>
                    <a href="../index.php">TRANG CHỦ</a>
                </li>
                <li>
                    <a href="./userInfo.php">THÔNG TIN CÁ NHÂN</a>
                </li>
                <?php 
                    if($_SESSION['role'] == 2)
                    {
                                    echo '                <li>
                                <a href="./listUser.php">QUẢN LÝ NGƯỜI DÙNG</a>
                            </li>';
                    }                
                ?>
                <li class="li-parent article">
                    <a for="">QUẢN LÝ BÀI BÁO</a>
                    <ul class="li-child article">
                        <li><a href="./listArticleAdmin.php">Danh sách bài báo</a></li>
                        <li><a href="./newArticle.php">Thêm bài báo</a></li>
                    </ul>
                </li>
				<li class="li-parent diadiem">
                    <a for="">QUẢN LÝ ĐỊA ĐIỂM DU LỊCH</a>
                    <ul class="li-child diadiem">
                        <li><a href="./dsdiadiem.php">Tất cả địa điểm du lịch</a></li>
                        <li><a href="./themdiadiem.php">Thêm địa điểm du lịch</a></li>
                    </ul>
                </li>
                <script>
                    let articletag = document.querySelector(".li-parent.article");
                    let articletagchild = document.querySelector(".li-child.article");
                    articletag.addEventListener("click", function(e){
                        articletagchild.classList.toggle("show")
                    }); 
					
					
					let diadiemtag = document.querySelector(".li-parent.diadiem");
					let diadiemtagchild = document.querySelector(".li-child.diadiem");

					diadiemtag.addEventListener("click", function(e){
						diadiemtagchild.classList.toggle("show");
					}); 

                </script>
                <li>
                    <a href="../../app/controller/dangxuat.php">ĐĂNG XUẤT</a>
                </li>
    </ul>
</div>