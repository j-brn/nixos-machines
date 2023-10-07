{
  services.openssh = {
    enable = true;

    openFirewall = true;
    ports = [ 22 ];

    settings = {
      PasswordAuthentication = false;
      PermitRootLogin = "no";

      Ciphers = [
        "chacha20-poly1305@openssh.com"
        "aes256-gcm@openssh.com"
        "aes256-ctr"
        "aes128-gcm@openssh.com"
      ];

      Macs = [
        "umac-128-etm@openssh.com"
        "hmac-sha2-256-etm@openssh.com"
        "hmac-sha2-512-etm@openssh.com"
        "hmac-sha2-512"
      ];

      KexAlgorithms = [
        "curve25519-sha256@libssh.org"
        "diffie-hellman-group16-sha512"
        "diffie-hellman-group18-sha512"
        "curve25519-sha256"
      ];
    };
  };
}