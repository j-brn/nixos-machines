{
  networking = {
    nameservers = [
      "127.0.0.1"
      "::1"
    ];
  };

  services.dnscrypt-proxy2 = {
    enable = true;

    settings = {
      ipv6_servers = true;
      require_dnssec = true;

      sources.public-resolvers = {
        urls = [
          "https://download.dnscrypt.info/resolvers-list/v3/public-resolvers.md"
          "https://raw.githubusercontent.com/DNSCrypt/dnscrypt-resolvers/master/v3/public-resolvers.md"
        ];

        cache_file = "/var/lib/dnscrypt-proxy2/public-resolvers.md";
        minisign_key = "RWQf6LRCGA9i53mlYecO4IzT51TGPpvWucNSCh1CBM0QTaLn73Y7GFO3";
      };

      server_names = [
        "google"
        "google-ipv6"
        "cloudflare"
        "cloudflare-ipv6"
      ];
    };
  };
}
