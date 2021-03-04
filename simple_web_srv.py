import http.server
import socketserver
from http import HTTPStatus


class Handler(http.server.SimpleHTTPRequestHandler):
    def do_GET(self):
        self.send_response(HTTPStatus.OK)
        self.end_headers()
        self.wfile.write(b'The simpliest Python WEB App For Task by Dima 03/04/2021')


httpd = socketserver.TCPServer(('', 80), Handler)
httpd.serve_forever()


# python3 server.py
# 127.0.0.1 - - [11/Apr/2017 11:36:49] "GET / HTTP/1.1" 200 -
# http :8000
'''
HTTP/1.0 200 OK
Date: Tue, 4 Mar 2021 20:36:49 GMT
Server: SimpleHTTP/0.6 Python/3
Hello world
'''
