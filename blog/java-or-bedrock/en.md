---
title: "Java or Bedrock? Let your friends join from their phones"
summary: "The difference between the two Minecraft editions, and how to open one server to phones and consoles without running two."
---

## Two editions, and two groups of friends who never meet

Minecraft has two editions, and this is the single thing that confuses people most when they set out to make a server with their friends:

- **Java Edition** — the computer edition: Windows, macOS and Linux. This is the one with mods, plugins and custom server software.
- **Bedrock Edition** — the phone, console and Windows 10/11 edition. It is the most widespread one around here, because most people play from a phone.

The problem: by default a Bedrock player cannot join a Java server, and the reverse does not work either. So half of you are on a PC, half on a phone, and no server holds you both.

## Which one should your server be?

The short answer: **start with Java**.

A Java server is the one that unlocks everything — plugins, mods, modpacks, server types like Paper, Fabric and Forge. And crucially, you can let Bedrock players into it, while the other direction does not work.

> [!note] If your entire group is on phones with nobody on a PC, and you want no mods or plugins, a Bedrock server is simpler for you. Otherwise, Java is the choice.

## How do you let phone players into a Java server?

On Serverk, crossplay is a single switch in your Minecraft server settings. Turn it on and your server gains a second port where Bedrock players join at the same time as Java players — same world, same chat, same everything.

Under the hood this runs on Geyser and Floodgate, which translate the Bedrock protocol into Java. You install nothing and configure nothing — we set it up.

The full steps are in the [crossplay guide](/games/minecraft/guides/crossplay).

## Watch one thing: RAM

Translating between the two protocols is not free. Every Bedrock player who joins through crossplay costs your server a little more memory and CPU than a plain Java player would.

So if you sized the plan exactly to your player count, leave some headroom before you turn crossplay on. The [server planner](/tools/planner?game=minecraft&crossplay=1) adds that overhead for you — just tick the "My friends play from phone or console" option.

## And if your friends are on different Java versions?

A close cousin of the same problem, and a common one: one friend updated to the newest version, another stayed on an older one for mods, and now they cannot share a server.

That is one switch here too — see the [version compatibility guide](/games/minecraft/guides/version-compat).

## Start here

- [The server planner with crossplay](/tools/planner?game=minecraft&crossplay=1) — sizes your plan with the phone players counted in.
- [The crossplay guide](/games/minecraft/guides/crossplay) — the full steps inside the panel.
- [Create your server](/create) — ready in about a minute, and crossplay is one click after that.
