<!DOCTYPE html>
<html lang="ja">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>DB連携型todoリスト（入力画面）</title>
</head>

<body>
<form action="todo_create.php" method="POST">
  <fieldset>
    <div>
      todo: <input type="text" name="todo">
    </div>
    <div>
      deadline: <input type="date" name="deadline">
    </div>
    <div>
      <button>submit</button>
    </div>
  </fieldset>
</form>
</body>

</html>