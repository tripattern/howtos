## OpenSSL
```
# Create 2048 bit RSA private key
$ openssl genrsa -aes128 -out fd.key 2048

# Create Public RSA key from private key
$ openssl rsa -in fd.key -pubout -out fd-public.key
```

## References
* https://www.feistyduck.com/library/openssl-cookbook/
