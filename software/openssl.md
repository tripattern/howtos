## OpenSSL
```
# Create 2048 bit RSA private key
$ openssl genrsa -aes128 -out fd.key 2048

# Create Public RSA key from private key
$ openssl rsa -in fd.key -pubout -out fd-public.key
```

## References
* https://www.feistyduck.com/library/openssl-cookbook/
* https://en.wikipedia.org/wiki/RSA_(cryptosystem)
* https://en.wikipedia.org/wiki/Elliptic_Curve_Digital_Signature_Algorithm
