import time
from fastapi import FastAPI

# Simulasi proses "loading server"
def loading_server():
    print("Loading server...")
    for i in range(1, 6):  # Proses loading selama 5 detik
        print(f"Loading... {i}/5")
        time.sleep(1)
    print("Server loaded successfully!")

# Jalankan loading sebelum aplikasi aktif
loading_server()

# Inisialisasi FastAPI
app = FastAPI()

@app.get("/")
def read_root():
    return {"message": "Hello, World!"}
