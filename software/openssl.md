# OpenSSL
## Configuration
* man config
* man ca
* Ubuntu
  * /etc/ssl/openssl.cnf
* Other
  * /etc/openssl.cnf
## Create Keys
* https://www.feistyduck.com/library/openssl-cookbook/online/ch-openssl.html#openssl-key-generation
```
# Create 2048-bit RSA private key
$ openssl genrsa -aes128 -out fd.key 2048

# Create Public RSA key from private key
$ openssl rsa -in fd.key -pubout -out fd-public.key

# Create DSA private key
$ openssl dsaparam -genkey 2048 | openssl dsa -out dsa.key -aes128 # nice as don't leave temp files on disk

# Create 256-bit ECDSA private key using the secp256r1 named curve
$ openssl ecparam -genkey -name secp256r1 | openssl ec -out ec.key -aes128
# Note: most browsers only support: secp384r1, secp256r1
```
## Create CSR (Certificate Signing Request)
* https://www.feistyduck.com/library/openssl-cookbook/online/ch-openssl.html#openssl-creating-csrs
  * This is a formal request asking a CA to sign a certificate,
    * and it contains the public key of the entity requesting the certificate
    * and some information about the entity.
    * This data will all be part of the certificate.
    * A CSR is always signed with the private key corresponding to the public key it carries
```
# Create CSR
$ openssl req -new -key fd.key -out fd.csr
# Notes:
## Do not leave a field blank. If you want it blank, put in a single dot
## Can use this to sign your own certificate or send to a CA

# Check that it was created correctly
$ openssl req -text -in fd.csr -noout
```
## Renew certificate without changing any of its info
* https://www.feistyduck.com/library/openssl-cookbook/online/ch-openssl.html#creating-csrs-from-existing-certificates
```
$ openssl x509 -x509toreq -in fd.crt -out fd.csr -signkey fd.key
# Note: Unless you’re using some form of public key pinning and wish to continue using the existing key, it’s best practice to generate a new key every time you apply for a new certificate
```

## CSR Generation with a file
```
## file contents: fd.cnf###################################
[req]
prompt = no
distinguished_name = dn
req_extensions = ext
input_password = PASSPHRASE

[dn]
CN = www.feistyduck.com
emailAddress = webmaster@feistyduck.com
O = Feisty Duck Ltd
L = London
C = GB

[ext]
subjectAltName = DNS:www.feistyduck.com,DNS:feistyduck.com
# NOTE: Other extensions can be found at: /etc/ssl/openssl.cnf
#       A standard one is the v3_ca

############################################################

$ openssl req -new -config fd.cnf -key fd.key -out fd.csr
```

## Certificate generation (signing)
* https://www.feistyduck.com/library/openssl-cookbook/online/ch-openssl.html#signing-your-own-certificates
```
$ openssl x509 -req -days 365 -in fd.csr -signkey fd.key -out fd.crt
```

## One liner to create private key and certificate
```
$ openssl req -new -x509 -days 365 -keyout fd.key -out fd.crt -config fd.cnf
$ openssl req -new -x509 -days 3650 -extensions v3_ca \ 
-keyout private/cakey.pem -out cacert.pem \
-config /etc/ssl/openssl.cnf
# http://www.freebsdmadeeasy.com/tutorials/freebsd/create-a-ca-with-openssl.php
```

## Verify
```
# Cetificate
$ openssl x509 -text -noout -in fd.crt
# Public Key
$ openssl rsa -inform PEM -pubin -in fd-public.key -noout # RSA specific
$ openssl pkey -inform PEM -pubin -in fd-public.key -noout # General public key

```


## References
* https://www.feistyduck.com/library/openssl-cookbook/
* https://en.wikipedia.org/wiki/RSA_(cryptosystem)
* https://en.wikipedia.org/wiki/Elliptic_Curve_Digital_Signature_Algorithm
* https://en.wikipedia.org/wiki/Transport_Layer_Security
* http://shop.oreilly.com/product/9780596002701.do
  * Network Security with OpenSSL Cryptography for Secure Communications
