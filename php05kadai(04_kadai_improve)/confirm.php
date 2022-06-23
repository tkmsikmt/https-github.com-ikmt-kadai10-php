
<?php
// confirm.phpの中身は、ほとんどpost.phpに似ています。

session_start();
require_once('funcs.php');
// require_once('../common/head_parts.php');

loginCheck();


var_dump($_FILES);
// var_dump($_POST);

// post受け取る

/// $_POST['title']を$titleでも使いたいし、、なおかつ、$_SESSION['post']['title'] でも使いたい。
/// $_SESSION['post']['title'] の場合には、セッション変数なので、保存性とファイル間移動性が確保される

// $title = $_POST['title'];
// $content = $_POST['content'];

// $_SESSION['post']['title'] = $_POST['title'];
// $_SESSION['post']['content'] = $_POST['content'];

// $_SESSION['再表示_title'] = $_POST['title'];
// $_SESSION['post']['content']  = $_POST['content'];


$patient_name = $_SESSION['post']['patient_name'] = $_POST['patient_name'] ;
$seibetsu = $_SESSION['post']['seibetsu'] = $_POST['seibetsu'] ;
$store_name = $_SESSION['post']['store_name'] = $_POST['store_name'] ;
$stock = $_SESSION['post']['stock'] = $_POST['stock'] ;
$waiting_time  = $_SESSION['post']['waiting_time'] = $_POST['waiting_time'];
$pic = $_SESSION['post']['pic'] = $_POST['pic'] ;
$email = $_SESSION['post']['email'] = $_POST['email'] ;
$tele = $_SESSION['post']['tele'] = $_POST['tele'] ;
$memo = $_SESSION['post']['memo'] = $_POST['memo'] ;



// 簡単なバリデーション処理。

// 簡単なバリデーション処理追加。作業追加！！！

// if( trim($title) ===''|| trim($content) ===''){
//     redirect('post.php?error=1');

// };


// imgある場合

// var_dump($_FILES);

if($_FILES['img']['name']){

// 一時保存しているファイル名(名前）を格納
    $file_name = $_SESSION['post']['file_name']= $_FILES['img']['name'];

// 一時保存されているファイル内容を取得して、セッションに格納
$image_data = $_SESSION['post']['image_data'] = file_get_contents($_FILES['img']['tmp_name']);
// 一時保存されているファイルの種類を確認して、セッションにその種類に当てはまる特定のintを格納
$image_type = $_SESSION['post']['image_type'] = exif_imagetype($_FILES['img']['tmp_name']);

} else {

$image_data = $_SESSION['post']['image_data'] = '';
// 一時保存されているファイルの種類を確認して、セッションにその種類に当てはまる特定のintを格納
$image_type = $_SESSION['post']['image_type'] = '';


};



?>

<!DOCTYPE html>
<html lang="ja">

<head>

<!-- <?= $head_parts ?> -->

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

    <title>管理</title>
</head>

<body>
    <header>
        <nav class="navbar navbar-expand-lg navbar-light bg-danger">
            <div class="container-fluid">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                    <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="select.php">更新画面へ</a>
                    </li>
                    <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="index.php">投稿する</a>
                    </li>
                    <!-- <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="index.php">投稿一覧</a>
                    </li> -->
                    <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="logout.php">ログアウト</a>
                    </li>
                </ul>
            </div>
        </nav>
    </header>

    <!-- errorを受け取ったら、エラー文出力。 -->

    <form method="POST" action="insert2.php" enctype="multipart/form-data" class="mb-3">

        <!-- <div class="mb-3">
            <label for="title" class="form-label">タイトル</label>
            <input type="hidden"name="title" value="<?= $title ?>">
            <p><?= $title ?></p>
        </div>

        <div class="mb-3">
            <label for="content" class="form-label">記事内容</label>
            <input type="hidden"name="content" value="<?= $content ?>">
            <div><?= nl2br($content) ?></div>
        </div> -->

         <!-- 追加 -->

         <fieldset>
            <legend>処方箋送信リプライ</legend>
            患者名前：
            <input type="text" name="patient_name" size="30" value="<?= $patient_name ?>" ><br>
            性別：
            <input type="radio" name="seibetsu" value="m">男
            <input type="radio" name="seibetsu" value="w">女<br>
            薬局名：
            <input type="text" name="store_name" size="30" value="<?= $store_name ?>" ><br>
            在庫有り無し：
            <input type="radio" name="stock" value="有り">有り
            <input type="radio" name="stock" value="無し">無し<br>
            待ち時間
            <input type="radio" name="waiting_time" value="0">今すぐ
            <input type="radio" name="waiting_time" value="10">10分
            <input type="radio" name="waiting_time" value="20">20分
            <input type="radio" name="waiting_time" value="30">30分
            <input type="radio" name="waiting_time" value="40">40分
            <input type="radio" name="waiting_time" value="50">50分
            <input type="radio" name="waiting_time" value="60">1時間以上<br>
            入力者：
            <input type="text" name="pic" size="30" value="<?= $pic ?>" ><br>
            Email：
            <input type="text" name="email" size="30"value="<?= $email ?>" ><br>
            電話番号：
            <input type="text" name="tele" size="30" value="<?= $tele ?>" ><br>
            備考：<br>
             <textarea name="memo" rows="4" cols="40">
             <?= $memo ?>
            </textarea>
             </fieldset>

            <?php if($image_data) :?>
            <div class="mb-3">
            <img src="image.php">
            </div>

            <?php endif; ?>

        <!-- 追加 -->

        <button type="submit" class="btn btn-primary">投稿</button>
    </form>
<!-- 
    <a href="post.php?re-register=true">前の画面に戻る</a> -->
</body>
</html>
