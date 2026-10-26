<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>{{ config('app.name') }}</title>
    <style>
        body {
            margin: 0;
            min-height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
            font-family: system-ui, -apple-system, Segoe UI, Roboto, sans-serif;
            background: linear-gradient(135deg, #667eea, #764ba2);
            color: #fff;
        }
        .card {
            background: rgba(255, 255, 255, 0.12);
            border-radius: 16px;
            padding: 48px;
            max-width: 520px;
            text-align: center;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.2);
        }
        h1 { margin: 0 0 12px; font-size: 2.2rem; }
        p { margin: 0 0 24px; opacity: 0.9; line-height: 1.5; }
        .badge {
            display: inline-block;
            padding: 6px 14px;
            border-radius: 999px;
            background: rgba(255, 255, 255, 0.2);
            font-size: 0.85rem;
        }
    </style>
</head>
<body>
    <div class="card">
        <h1>Hello from Laravel on EC2</h1>
        <p>This page is served by Apache, passed to PHP-FPM, rendered by Laravel, and stores data in MySQL.</p>
        <span class="badge">Environment: {{ config('app.env') }}</span>
    </div>
</body>
</html>
