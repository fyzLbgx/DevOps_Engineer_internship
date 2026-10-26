import os
import json
import time
import pymysql
from http.server import HTTPServer, BaseHTTPRequestHandler

DB = dict(
    host=os.environ["DB_HOST"],
    user=os.environ["DB_USER"],
    password=os.environ["DB_PASSWORD"],
    database=os.environ["DB_NAME"],
)

def connect():
    for attempt in range(30):
        try:
            return pymysql.connect(**DB)
        except pymysql.err.OperationalError:
            print("waiting for mysql...", flush=True)
            time.sleep(2)
    raise RuntimeError("could not connect to mysql")

def get_messages():
    conn = connect()
    try:
        with conn.cursor() as cur:
            cur.execute("SELECT id, name, message FROM guestbook ORDER BY id")
            rows = cur.fetchall()
    finally:
        conn.close()
    return [{"id": r[0], "name": r[1], "message": r[2]} for r in rows]

class Handler(BaseHTTPRequestHandler):
    def do_GET(self):
        body = json.dumps(get_messages()).encode()
        self.send_response(200)
        self.send_header("Content-Type", "application/json")
        self.send_header("Content-Length", str(len(body)))
        self.end_headers()
        self.wfile.write(body)

HTTPServer(("0.0.0.0", 5000), Handler).serve_forever()
