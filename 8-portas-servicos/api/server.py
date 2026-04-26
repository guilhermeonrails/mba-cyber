import http.server
import json
import socketserver

PORT = 5000

class APICallback(http.server.SimpleHTTPRequestHandler):
    def do_GET(self):
        # Configura a resposta como JSON
        self.send_response(200)
        self.send_header('Content-type', 'application/json')
        self.end_headers()
        
        # Criação do corpo da resposta
        response = {
            "status": "success", 
            "message": "Você encontrou a API secreta!", 
            "servico": "API Python Atividade 8",
            "versao": "1.0"
        }
        
        # Envia a resposta de volta
        self.wfile.write(json.dumps(response).encode())

# Inicia o servidor TCP na porta 5000
with socketserver.TCPServer(("", PORT), APICallback) as httpd:
    print(f"API rodando perfeitamente na porta {PORT}...")
    httpd.serve_forever()
