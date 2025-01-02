#!/bin/bash

# Fungsi untuk menjalankan init.sh dengan retry
run_init() {
    while true; do
        echo "Menjalankan init.sh..."
        /usr/local/bin/init.sh
        if [ $? -eq 0 ]; then
            echo "init.sh selesai dengan sukses."
            break
        else
            echo "init.sh gagal. Mengulangi dalam 5 detik..."
            sleep 5
        fi
    done
}

# Jalankan init.sh dalam mode loop retry
run_init &

# Jalankan FastAPI
echo "Menjalankan FastAPI..."
uvicorn app.app:app --host=0.0.0.0 --port=80
