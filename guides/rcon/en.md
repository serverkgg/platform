## What remote access is

A control channel that lets an external tool send commands to your server from outside the panel, over a protocol called RCON. You give the tool your server address, the remote access port and a password, and from there it runs the same server commands you would type in the console.

You need it if you use a tool like BattleMetrics, RustAdmin, RCON Console, mcrcon, ARRCON or Tempest, or a Discord bot that manages the server on its own. If everything you do happens in the panel console, you don't need it, so leave it closed.

## Turning it on

Open the game panel inside your server and find the **Remote access** section:

1. Switch **Remote access** on and save.
2. We rebuild your server so the change takes effect, and it's back up in about a minute. Your files and your world stay exactly as they are.
3. After that the address appears alongside your other server addresses in **Overview**, and the port number is on the **Remote access** card itself.

> [!note] While it's off, the port isn't published at all. Nothing outside is listening, even if someone knew the password.

## The password

We generate a password for your server the first time it starts, and it's hidden on the **Remote access** card. Press it to reveal it, copy it with one button, and paste it into your tool.

Want to change it? Press **Rotate the password** on the same card. The new one takes effect after the next restart, and the card shows an **Applies after restart** badge until then.

> [!warning] The moment you rotate, every tool still using the old password is disconnected. Update your tools and bots right away.

## Security

RCON is an old protocol and it encrypts nothing: the password and the commands travel across the network as plain text. Anyone who has the address, the port and the password controls your whole server: they can kick, ban and change settings.

- Turn remote access off when no tool is using it.
- Never put the password in Discord, in a video, or on stream.
- If you think it leaked, rotate it right away from the card.
- Don't give it to anyone you wouldn't trust with the whole server. To share your server with a friend, add them in the **Access** tab with the exact permissions you want instead.

## Where each game stands

Every game with remote access gets its own port, opened only when you turn remote access on.

- **Minecraft**: its own port (TCP). Tools: mcrcon, RCON Console, ARRCON, and most Minecraft Discord bots.
- **Palworld**: its own port (TCP), and the password is the same admin password the REST API uses. Pocketpair has deprecated RCON in favor of REST, and RCON doesn't handle non-Latin player names correctly, so use the panel console for those names.
- **Rust**: its own port, running WebRCON over a WebSocket rather than plain RCON. Tools: RustAdmin, Tempest, BattleMetrics. Ordinary RCON tools won't connect.
- **ARK: Survival Ascended**: its own port (TCP), and the password is the game's admin password. Tools: RCON Console, ARRCON.

Minecraft Bedrock, Hytale and Valheim have no remote access. The games offer no external control channel at all, so everything is managed from the console and settings in the panel.

## When your tool can't connect

- **Switched on and still nothing**: wait for the rebuild to finish and your server to come back up. The port doesn't open before that.
- **The tool says connection refused**: make sure you used the remote access port from the card, not the game port. They're different numbers.
- **The password is rejected**: copy it from the card instead of typing it. If you rotated it recently without restarting, the old password still works until the restart.
- **The tool doesn't recognize your server**: Rust needs a WebRCON tool. Ordinary RCON tools won't reach it.
- **Nothing works**: open a [support ticket](/dashboard/support) with your server code.
