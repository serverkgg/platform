## Your free address, and your own domain

Every server with us has a free address of its own, `yourname.srvk.gg`. It doesn't change when we move your server to another machine, and you can rename it from the **Address** card on your server page.

If you own a domain, you can let your players join through it: `play.example.com` instead of `yourname.srvk.gg`. Nothing has to be turned on with us. The whole job is one record at your domain registrar.

> [!note] There is no SSL certificate for game servers and none is needed; the game doesn't connect over HTTPS. Our panel is on HTTPS already.

## Find your server's address and port

On your server page, the **Address** card:

- **Address** gives you `yourname.srvk.gg`.
- Switch the address form to **IP** to show the **port**, because Minecraft Java hides it from you (we carry it in an SRV record for you).

Write both down: your server name and its port number. You need them in the next step.

## Minecraft Java: an SRV record

An SRV record lets a player type `play.example.com` with no port at all. In your registrar's DNS panel, add:

- **Type**: `SRV`.
- **Service**: `_minecraft`.
- **Protocol**: `_tcp`.
- **Name**: `play`.
- **Priority**: `0`.
- **Weight**: `0`.
- **Port**: your server's port.
- **Target**: `yourname.srvk.gg`.

Some panels don't split the fields and ask for one line instead. There the name is `_minecraft._tcp.play` and the value is `0 0 PORT yourname.srvk.gg`, with `PORT` replaced by your server's port.

## Every other game: a CNAME record

Minecraft Bedrock, Palworld, Rust and the rest don't read SRV, so the record is a CNAME and the player types the port with it:

- **Type**: `CNAME`.
- **Name**: `play`.
- **Target**: `yourname.srvk.gg`.

Your players then join at `play.example.com:port`.

> [!warning] Never put a CNAME on the domain root (`example.com` with no subdomain). The DNS standard doesn't allow it, and it breaks your email and your website. Use a subdomain such as `play` or `mc`.

## Why a CNAME and not an A record

An A record points your domain at a fixed IP. When we move your server to another machine, which happens during maintenance and upgrades, that IP changes and your record still points at an address that's no longer in use. A CNAME follows `yourname.srvk.gg`, which we keep updated for you, so your domain follows your server with nothing for you to change.

## When it starts working

DNS records take time to propagate, depending on the TTL your registrar sets: usually minutes, and hours in the worst case. To check:

```bash
dig SRV _minecraft._tcp.play.example.com +short
dig CNAME play.example.com +short
```

And on Windows:

```bash
nslookup -type=srv _minecraft._tcp.play.example.com
```

If the target `yourname.srvk.gg` comes back, the record is live. If nothing comes back, wait a little and check again before you edit the record.

## If you rename your server

You can rename your server with us once every 7 days. As soon as you do, update the target in your registrar's record, or joining through your domain stops working.

## When it doesn't work

- **The address won't resolve**: check that the name is `play` without the full domain if your panel adds it for you, and that the target has no `http://` in front of it.
- **It connects but Minecraft Java still asks for a port**: the SRV record is missing or its numbers are wrong. Confirm priority and weight are `0` and the port is the one in the panel.
- **It works for you but not for a friend**: propagation hasn't reached them yet. Wait, or have them switch their device's DNS temporarily.
- **Nothing worked**: contact [support](/dashboard/support) with your server code and the domain name.
