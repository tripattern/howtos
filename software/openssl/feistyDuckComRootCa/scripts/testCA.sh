#!/bin/bash

# First run: cleanAndBuild.sh

TEST_DIR="test"
CERT="client"
cd ..
mkdir "${TEST_DIR}"

echo "Build a file to sign..."
echo "Hello, World!" > "${TEST_DIR}/sign.txt"

echo "Sign file using CERT private key..."
openssl dgst -sha256 -sign "${CERT}/private/${CERT}.key" -out "${TEST_DIR}/sign.txt.sha256" "${TEST_DIR}/sign.txt" 

echo "Verify File Signing"
openssl dgst -sha256 -verify  <(openssl x509 -in "${CERT}/${CERT}.crt"  -pubkey -noout) -signature "${TEST_DIR}/sign.txt.sha256" "${TEST_DIR}/sign.txt"

echo "Clean up after test..."
rm -rf "${TEST_DIR}"
