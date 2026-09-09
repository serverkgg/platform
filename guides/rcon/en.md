## What remote access is

A control channel that lets an external tool send commands to your server from outside the panel, over a protocol called RCON. You give the tool your server address, the remote access port and a password, and from there it runs the same server commands you would type in the console.

You need it if you use a tool like BattleMetrics, RustAdmin, RCON Console, mcrcon, ARRCON, IceCon or Tempest, or a Discord bot that manages the server on its own. If everything you do happens in the panel console, you do not need it — leave it closed.

## Turning it on

Open the game panel inside your server and find the **Remote access** section:

1. Switch **Remote access** on and save.
2. We rebuild your server so the change takes effect — about a minute, and it is back up. Your files and your world stay exactly as they are.
3. After that the address appears alongside your other server addresses in **Overview**, and the port number sits on the **Remote access** card itself.

> [!note] While it is off the port is not published at all — nothing outside is listening, even if someone knew the password.

## The password

We generate a password for your server the first time it starts, and it sits hidden on the **Remote access** card. Press it to reveal it, copy it with one button, and paste it into your tool.

Want to change it? Press **Rotate the password** on the same card. On Counter-Strike 2 and Garry's Mod the new one takes effect immediately; on every other game it takes effect after the next restart, and the card shows an **Applies after restart** badge until then.

> [!warning] The moment you rotate, every tool still holding the old password is cut off. Update your tools and bots straight away.

## Security

RCON is an old protocol and it encrypts nothing: the password and the commands travel across the network in the clear. And whoever has the address, the port and the password controls your whole server — kicks, bans, settings, everything.

- Turn remote access off when no tool is using it.
- Never put the password in Discord, in a video, or on stream.
- If you suspect it leaked, rotate it immediately from the card.
- Do not hand it to anyone you would not trust with the whole server; to share your server with a friend, add them in the **Access** tab with the exact permissions you want instead.

## Where each game stands

Three games have no switch: RCON is always live on the game port itself, and the password and its rotate button live on the connection card. Everything else gets its own port, opened when you turn remote access on.

- **Counter-Strike 2** — Source RCON on the game port itself (TCP), always live, nothing to open. Tools: RCON Console, ARRCON, BattleMetrics.
- **Garry's Mod** — same as Counter-Strike 2: Source RCON on the game port (TCP), always live. Tools: RCON Console, ARRCON.
- **Counter-Strike 1.6** — GoldSrc RCON on the game port but over UDP, always live. It needs a tool that speaks GoldSrc; Source tools will not connect.
- **Project Zomboid** — its own port (TCP). The RCON password is not the in-game admin password, so do not mix them up. Tools: RCON Console, ARRCON.
- **Factorio** — its own port (TCP). Tools: RCON Console, ARRCON, and the Discord bots that bridge chat into the game.
- **Conan Exiles** — its own port (TCP). Here too the RCON password is separate from the admin password. Tools: RCON Console, ARRCON.
- **Minecraft** — its own port (TCP). Tools: mcrcon, RCON Console, ARRCON, and most Minecraft Discord bots.
- **Palworld** — its own port (TCP), and the password is the same admin password the REST API uses. Pocketpair has deprecated RCON in favour of REST, and RCON does not handle non-Latin player names correctly — for those names use the panel console.
- **Rust** — its own port, running WebRCON over a WebSocket rather than plain RCON. Tools: RustAdmin, Tempest, BattleMetrics. Ordinary RCON tools will not connect.
- **FiveM** — no extra port: RCON rides the game port itself over UDP once remote access is on. IceCon is the usual client, and txAdmin remains the main admin surface for FiveM.
- **7 Days to Die** — its own port, running Telnet rather than RCON, so any Telnet client reaches it. The password travels in the clear exactly like RCON.

Hytale, Satisfactory, Assetto Corsa, Core Keeper, Valheim, Don't Starve Together, Terraria and Unturned have no remote access — the games offer no external control channel at all, so everything is managed from the console and settings in the panel.

## When your tool cannot connect

- **Switched on and still nothing** — wait for the rebuild to finish and your server to come back up. The port does not open before that.
- **The tool says connection refused** — make sure you used the remote access port from the card, not the game port. On most games they are different numbers.
- **The password is rejected** — copy it from the card instead of typing it out. And if you rotated recently without restarting, the old password is still the live one until the restart.
- **The tool does not recognise your server** — Rust needs a WebRCON tool, 7 Days to Die needs a Telnet client, and Counter-Strike 1.6 needs a GoldSrc tool. Ordinary RCON tools will not reach them.
- **Nothing works** — open a [support ticket](/dashboard/support) with your server code.
