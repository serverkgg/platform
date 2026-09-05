---
title: "How to make a Minecraft server for you and your friends"
summary: "The three ways to run a server — from your PC, free, or rented — what each one costs you and which one fits."
---

## Three ways, and only one fits you

You want to play Minecraft with your friends instead of joining public servers full of strangers. There are exactly three ways to do it: run it on your own PC, take a free server, or rent one. Each has a price — and the price is not always money.

## Option one — from your own PC

Download the server file, run it on your computer, hand your friends the address. Completely free, and the fastest way to try it. The problems show up later:

- Your PC has to stay on the whole time they are playing. Turn it off and the server goes with it.
- Your PC splits its resources between the game and the server, so both you and they feel the lag.
- And the biggest one: your friends outside the house usually cannot connect at all.

### Why can't your friends connect?

Home internet lines here sit behind a router doing NAT, and many of them sit behind CGNAT on top of that. The IP address you see on your PC is not the address the world sees, and nothing reaches your server from outside unless you open the port on the router.

- Behind a normal router only: open the port in your router settings (port forwarding) and you are fine.
- Behind CGNAT: no router setting fixes it, because the public address is not yours in the first place — it is shared between you and other subscribers.

> [!note] Not sure which case you are in? Open the [port checker](/tools/port-check) — it compares your public address with your router's and tells you exactly where you stand.

## Option two — a free server

Free hosts like Aternos really do give you a server without paying anything. But the service is financed by ads, and the server stops the moment the last player leaves — nothing keeps running while you sleep: no farms, no redstone, nothing. And because the hardware is shared between millions of users, starting the server means waiting in a queue that grows longest at the weekend, which is exactly when you want to play.

There is a third model in between, like exaroton, which bills by usage — one credit per 1 GB per hour — so you only pay for the hours the server is actually up.

We went through all of it in [why an Aternos server sleeps and queues](/blog/free-vs-paid-hosting).

## Option three — a rented server

You pay monthly and get a machine running 24 hours a day, yours alone, with a fixed address you hand to your friends. On Serverk the server is ready in about a minute, prices are final with no VAT on top, and every 1 GB of RAM comes with 5 GB of disk.

Most importantly, the server does not depend on your PC or your home line, so the whole NAT and CGNAT problem simply does not exist.

## Which one should you pick?

- **Just testing, and everyone is in the same house?** Run it from your PC.
- **Playing once a month and happy to wait?** Free is enough.
- **Want a world you actually live in, farms that run while you sleep, and friends in different cities joining whenever?** Rent a server.

## Start here

- Not sure how much RAM you need? The [server planner](/tools/planner) sizes the plan from your player count and how you play.
- Running a server at home and want to know whether friends can reach it? The [port checker](/tools/port-check).
- Want to know whether a given server is up? The [server status checker](/tools/status).
- Ready? [Create your server](/create) and we handle the rest.
