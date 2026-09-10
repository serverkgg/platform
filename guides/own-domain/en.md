## Your free address, and your own domain

Every server with us carries an address of its own, `yourname.srvk.gg`, free, unchanged when we move your server to another machine, and renameable from the **Address** card on your server page.

And if you own a domain, you can let your players join through it: `play.example.com` instead of `yourname.srvk.gg`. Nothing has to be enabled on our side — the whole job is one record at your domain registrar.

> [!note] There is no SSL certificate for game servers and none is needed; the game does not connect over HTTPS. Our panel is on HTTPS already.

## Find your server's address and port

On your server page, the **Address** card:

- **Name** gives you `yourname.srvk.gg`.
- Switch the address form to **IP** to reveal the **port**, because Minecraft Java hides it from you (we carry it in an SRV record for you).

Write both down: your server name and its port number. You need them in the next step.

## Minecraft Java: an SRV record

An SRV record lets a player type `play.example.com` with no port at all. In your registrar's DNS panel, add:

- **Type** — `SRV`.
- **Service** — `_minecraft`.
- **Protocol** — `_tcp`.
- **Name** — `play`.
- **Priority** — `0`.
- **Weight** — `0`.
- **Port** — your server's port.
- **Target** — `yourname.srvk.gg`.

Some panels do not split the fields and ask for one line instead. There the name is `_minecraft._tcp.play` and the value is `0 0 PORT yourname.srvk.gg`, with `PORT` replaced by your server's port.

## Every other game: a CNAME record

Minecraft Bedrock, Palworld, Rust and the rest do not read SRV, so the record is a CNAME and the player types the port with it:

- **Type** — `CNAME`.
- **Name** — `play`.
- **Target** — `yourname.srvk.gg`.

Your players then join at `play.example.com:port`.

> [!warning] Never put a CNAME on the domain root (`example.com` with no subdomain). The DNS standard does not allow it and it breaks your email and your website. Use a subdomain such as `play` or `mc`.

## Why a CNAME and not an A record

An A record pins your domain to a fixed IP. When we move your server to another machine — which happens during maintenance and upgrades — that IP changes and your record is stuck pointing at a dead address. A CNAME follows `yourname.srvk.gg`, which we keep updated for you, so your domain follows your server with nothing for you to touch.

## When it starts working

DNS records take time to propagate, depending on the TTL your registrar sets — usually minutes, and hours in the worst case. To check:

```bash
dig SRV _minecraft._tcp.play.example.com +short
dig CNAME play.example.com +short
```

And on Windows:

```bash
nslookup -type=srv _minecraft._tcp.play.example.com
```

If the target `yourname.srvk.gg` comes back, the record has landed. If nothing comes back, wait a little and check again before you go editing the record.

## If you rename your server

You can rename your server with us once every 7 days. The moment you do, update the target in your registrar's record, or joining through your domain stops working.

## When it does not work

- **The address will not resolve** — check the name is `play` without the full domain if your panel appends it for you, and that the target is written plainly with no `http://`.
- **It connects but Minecraft Java still asks for a port** — the SRV record is missing or its numbers are wrong. Confirm priority and weight are `0` and the port is the one in the panel.
- **It works for you but not for a friend** — propagation has not reached them yet. Wait, or have them switch their device's DNS temporarily.
- **Nothing worked** — write to [support](/dashboard/support) with your server code and the domain name.
