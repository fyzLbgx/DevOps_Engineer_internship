import os
from http.server import HTTPServer, BaseHTTPRequestHandler

COUNT_FILE = "/data/count.txt"

def read_count():
    try:
        with open(COUNT_FILE) as f:
            return int(f.read().strip())
    except (FileNotFoundError, ValueError):
        return 0

class Handler(BaseHTTPRequestHandler):
    def do_GET(self):
        count = read_count() + 1
        os.makedirs("/data", exist_ok=True)
        with open(COUNT_FILE, "w") as f:
            f.write(str(count))

        body = ('{"visits": %d}\n' % count).encode()
        self.send_response(200)
        self.send_header("Content-Type", "application/json")
        self.send_header("Content-Length", str(len(body)))
        self.end_headers()
        self.wfile.write(body)

HTTPServer(("0.0.0.0", 5000), Handler).serve_forever()
