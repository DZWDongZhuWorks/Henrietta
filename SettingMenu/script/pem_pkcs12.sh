#!/bin/bash

# 原本憑證路徑
CERT_PATH="/etc/letsencrypt/live/ningtahouse.asuscomm.com/fullchain.pem"
KEY_PATH="/etc/letsencrypt/live/ningtahouse.asuscomm.com/privkey.pem"

# 轉換憑證路徑
OUTPUT_PATH="/raidLink/henriettaRAID/HenriettaData/code/sslKeyHere/ningtahouse.pfx"

# 導出密碼
EXPORT_PASSWORD="pacck4n8"

# OpenSSL 轉換憑證格式
openssl pkcs12 -export -out "${OUTPUT_PATH}" -inkey "${KEY_PATH}" -in "${CERT_PATH}" -password pass:${EXPORT_PASSWORD}

# 檢查操作是否成功
if [ $? -eq 0 ]; then
    echo "Certificate has been successfully converted and saved to ${OUTPUT_PATH}"
else
    echo "An error occurred during the conversion process"
    exit 1
fi
