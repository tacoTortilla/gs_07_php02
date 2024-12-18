<?php

// var_dump($_POST);
// exit();

// POSTデータ確認
if (
    !isset($_POST['todo']) || $_POST['todo'] === '' ||
    !isset($_POST['deadline']) || $_POST['deadline'] === ''
  ) {
    exit('ParamError');
  }

$todo = $_POST['todo'];
$deadline = $_POST['deadline'];
$title = $_POST['title'];

// 画像が送信されているか確認
if (isset($_FILES['image']) && $_FILES['image']['error'] === UPLOAD_ERR_OK) {
    $uploadDir = 'uploads/'; // アップロード先ディレクトリ
    if (!is_dir($uploadDir)) {
        mkdir($uploadDir, 0777, true); // ディレクトリを作成
    }

    $image = $_FILES['image']['tmp_name'];
    $fileName = basename($_FILES['image']['name']);
    $targetFilePath = $uploadDir . $fileName;

    // ファイルを移動
    if (move_uploaded_file($image, $targetFilePath)) {
        echo "画像をアップロードしました: " . $targetFilePath;
    } else {
        echo "画像のアップロードに失敗しました。";
    }
} else {
    echo "画像が正しく送信されていません。";
}

// DB接続
$dbn ='mysql:dbname=gs_07_php02;charset=utf8mb4;port=3306;host=localhost';
$user = 'root';
$pwd = '';

// DB接続
try {
  $pdo = new PDO($dbn, $user, $pwd);
} catch (PDOException $e) {
  echo json_encode(["db error" => "{$e->getMessage()}"]);
  exit();
}

// SQL作成&実行
$sql = 'INSERT INTO gs_07_php02_table (id, todo, deadline, created_at, updated_at,image,title) VALUES (NULL, :todo, :deadline, now(), now(),:image,:title)';

$stmt = $pdo->prepare($sql);

// バインド変数を設定
// バインド処理をすることにより データベースの攻撃対策
$stmt->bindValue(':title', $title, PDO::PARAM_STR);
$stmt->bindValue(':todo', $todo, PDO::PARAM_STR);
$stmt->bindValue(':deadline', $deadline, PDO::PARAM_STR);
$stmt->bindValue(':image', $image, PDO::PARAM_LOB); // BLOB型にバインド


// SQL実行（実行に失敗すると `sql error ...` が出力される）
try {
  $status = $stmt->execute();
} catch (PDOException $e) {
  echo json_encode(["sql error" => "{$e->getMessage()}"]);
  exit();
}
