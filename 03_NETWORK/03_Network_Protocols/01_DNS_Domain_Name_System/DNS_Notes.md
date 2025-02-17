https://www.privacyguides.org/en/dns/
https://www.privacyguides.org/en/advanced/dns-overview/

https://quad9.net
https://mullvad.net/en/help/dns-over-https-and-dns-over-tls

https://github.com/DNSCrypt/dnscrypt-proxy

https://discuss.privacyguides.net/t/help-with-choosing-a-dns-resolver/19906/5


<table>
  <tr>
    <th>DNS Provider</th>
    <th>Protocols</th>
    <th>Logging / Privacy Policy</th>
    <th>
      <a href="https://www.privacyguides.org/en/advanced/dns-overview/#what-is-edns-client-subnet-ecs">ECS</a>
    </th>
    <th>Filtering</th>
    <th>Signed Apple Profile</th>
  </tr>
  <tbody>
    <tr>
      <td>
        <a href="https://controld.com/free-dns"><strong>Control D Free DNS</strong></a>
      </td>
      <td>Cleartext DoH/3 DoT DoQ</td>
      <td>
        No
      </td>
      <td>No</td>
      <td>Based on server choice.</td>
      <td>Yes </td>
    </tr>
    <tr>
      <td>
        <a href="https://quad9.net"><strong>Quad9</strong></a>
      </td>
      <td>Cleartext DoH DoT DNSCrypt</td>
      <td>
        Anonymized
      </td>
      <td>Optional</td>
      <td>Based on server choice, malware blocking by default.</td>
      <td>Yes </td>
    </tr>
    <tr>
      <td>
        <a href="https://mullvad.net/en/help/dns-over-https-and-dns-over-tls"><strong>Mullvad</strong></a>
      </td>
      <td>DoH DoT</td>
      <td>
        No
      </td>
      <td>No</td>
      <td>Based on server choice. Filter list being used can be found here. </td>
      <td>Yes </td>
    </tr>
    <tr>
      <td>
        <a href="https://dns0.eu"><strong>dns0.eu</strong></a>
      </td>
      <td>Cleartext DoH/3 DoH DoT DoQ</td>
      <td>
        Anonymized
      </td>
      <td>Anonymized</td>
      <td>Based on server choice.</td>
      <td>Yes </td>
    </tr>
    <tr>
      <td>
        <a href="https://developers.cloudflare.com/1.1.1.1/setup"><strong>Cloudflare</strong></a>
      </td>
      <td>Cleartext DoH/3 DoT</td>
      <td>
        Anonymized
      </td>
      <td>No</td>
      <td>Based on server choice.</td>
      <td>No </td>
    </tr>
    <tr>
      <td>
        <a href="https://adguard-dns.io/en/public-dns.html"><strong>AdGuard Public DNS</strong></a>
      </td>
      <td>Cleartext DoH/3 DoT DoQ DNSCrypt</td>
      <td>
        Anonymized
      </td>
      <td>Anonymized</td>
      <td>Based on server choice. Filter list being used can be found here. </td>
      <td>Yes </td>
    </tr>
  </tbody>
</table>

    Router DNS: The DNS settings in your router affect all devices connected to your network. When you set a DNS in your router, it will override the default DNS provided by your ISP (Internet Service Provider) for all devices on your network. This can be useful for blocking certain websites or improving DNS resolution speed.
    ISP-imposed DNS: Your ISP may be forcing their DNS servers on your router as part of the PPPoE authentication process. This can override any DNS settings you try to configure on the router.
    NAT limitations: NAT can limit the router's ability to forward DNS queries to a custom DNS server. This can cause DNS resolution issues or prevent you from using a custom DNS server altogether.
    Router limitations: Some routers may not support changing DNS settings when using PPPoE or NAT. This can be due to limitations in the router's firmware or configuration options.
    VPN DNS: When you connect to a VPN (Virtual Private Network), the VPN provider's DNS settings are used instead of your router's or ISP's DNS. This helps to protect your online activities from being monitored by your ISP or other third parties. The VPN DNS settings can also be used to bypass geo-restrictions or access blocked websites.
    Browser DNS: Some browsers, such as Google Chrome and Mozilla Firefox, have their own DNS settings that can override the DNS settings of your router or VPN. This is known as "DNS over HTTPS" (DoH) or "DNS over TLS" (DoT). Browser DNS settings can provide an additional layer of security and privacy, as they encrypt your DNS queries and prevent them from being intercepted by third parties.



