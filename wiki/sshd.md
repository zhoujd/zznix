SSHD on Windows
===============

1. Could not load host key

```
How to manually create the keys for the Could not load host key: /etc/ssh/ssh_host_rsa_key issue:
ssh-keygen -A

OR

ssh-keygen -b 1024 -t rsa -f /etc/ssh/ssh_host_key
ssh-keygen -b 1024 -t rsa -f /etc/ssh/ssh_host_rsa_key
ssh-keygen -b 1024 -t dsa -f /etc/ssh/ssh_host_dsa_key
ssh-keygen -b 1024 -t ecdsa -f /etc/ssh/ssh_host_ecdsa_key
```

2. Start SSHD Server

/usr/bin/sshd

