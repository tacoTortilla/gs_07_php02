<?php

// DB接続
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
$sql = 'SELECT * FROM gs_07_php02_table';
$stmt = $pdo->prepare($sql);

try {
  $status = $stmt->execute();
} catch (PDOException $e) {
  echo json_encode(["sql error" => "{$e->getMessage()}"]);
  exit();
}

// SQL実行の処理

$result = $stmt->fetchAll(PDO::FETCH_ASSOC);
$output = "";
foreach ($result as $record) {

  $output .= "
    <tr>
      <td>{$record["updated_at"]}</td>
      <td>{$record["title"]}</td>
      <td>{$record["todo"]}</td>
      <td><img src='{$record["image"]}' alt='Image' width='100'></td>
    </tr>
  ";
}


?>

<!DOCTYPE html>
<html lang="ja">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>SQL連携型todoリスト（一覧画面）</title>
</head>

<body>
  <fieldset>
    <legend>SQL連携型todoリスト（一覧画面）</legend>
    <a href="txt_image_input.php">入力画面</a>
    <table>
      <thead>
        <tr>
          <th>update</th>
          <th>title</th>
          <th>todo</th>
          <th>Image</th>
        </tr>
      </thead>
      <tbody>
        <!-- ここに<tr><td>deadline</td><td>todo</td><tr>の形でデータが入る -->
        <?= $output ?>
      </tbody>
    </table>
  </fieldset>
</body>

</html>