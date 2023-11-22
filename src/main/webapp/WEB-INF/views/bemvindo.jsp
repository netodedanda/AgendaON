<!DOCTYPE html>
<html lang="en">
<head>
    <title>Bootstrap Example</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
    <style>
        body {
            background-image: url('https://images.unsplash.com/1/work-station-straight-on-view.jpg?q=100&w=1470&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D');
            background-size: cover;
            background-repeat: no-repeat;
            background-attachment: fixed;
            height: 100vh;
            margin: 0;
            overflow: hidden;
        }

        .container {
            background-color: rgba(255, 255, 255, 0.8);
            padding: 20px;
            border-radius: 10px;
            height: 100vh;
            overflow-y: auto;
            border: 1px solid #ccc;
        }

        .form-container {
            max-width: 400px;
            margin: 0 auto;
            border: none !important;
            padding: 0;
        }
    </style>
</head>
<body>
    <div class="container mt-3">
        <div class="form-container">
            <h2 class="text-center mb-3">Agenda Rapida</h2>
            <form action="/action_page.php">
                <div class="mb-3">
                    <label for="usuario">Usuario:</label>
                    <input type="text" class="form-control" style="width: 100%;" placeholder="Usuario" name="usuario">
                </div>
                <div class="mb-3">
                    <label for="senha">Senha:</label>
                    <input type="password" class="form-control" style="width: 100%;" placeholder="Senha" name="senha">
                </div>
                <div class="form-check mb-3 text-center">
                    <label class="form-check-label">
                        <input class="form-check-input" type="checkbox" name="remember"> Lembre-se de mim
                    </label>
                </div>
                <div class="text-center"> 
                    <a href="http://localhost:9090/agendarapida/inicio" class="btn btn-secondary">Começar agora</a>
                </div>
            </form>
        </div>
    </div>
</body>
</html>
