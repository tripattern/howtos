# OpenSSL
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
```



## References
* https://www.feistyduck.com/library/openssl-cookbook/
* https://en.wikipedia.org/wiki/RSA_(cryptosystem)
* https://en.wikipedia.org/wiki/Elliptic_Curve_Digital_Signature_Algorithm
