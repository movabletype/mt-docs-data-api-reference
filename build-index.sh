#!/bin/sh

cat << EOS > docs/index.html
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Movable Type Data API</title>
<script src="assets/main.js"></script>
<style>
h1 {
  margin-bottom: 2rem;
}
</style>
</head>
<body>
<header class="p-3">
<a href="https://movabletype.jp/">
  <img src="https://movabletype.jp/assets/images/mtlogo.svg" alt="Movable Type">
</a>
</header>
<div class="container mt-3">
  <div class="row">
    <div class="col-md-8">
      <main>
$(npx marked -i src/markdown/index_main.md)
      </main>
    </div>
    <div class="col-md-4">
      <aside>
        <nav>
$(npx marked -i src/markdown/index_sidebar.md)
        </nav>
      </aside>
    </div>
  </div>
</div>
</main>
<footer class="footer p-3">
  <span>© Six Apart Ltd.</span>
</footer>
</body>
</html>
EOS
