## Join the community

The Serverk Discord is where you find players like you, ask questions, and help others — the [invite link](https://discord.gg/gwGT2Mqd6A) is always in the footer of any page.

## Link your account

Linking is the only step that takes you out of Discord. Everything after it happens there:

1. Run `/link` anywhere the bot can see you
2. Press the **Link account** button in its reply
3. Sign in to Serverk if you are not already
4. Confirm the link — the bot's message in Discord changes right away to say your account is linked

The link lasts 10 minutes and works once. If it expires, run `/link` again.

## Change the bot's language

The bot replies in English by default, because Discord gives us no Arabic locale to read off your account. Run `/language`, pick **العربية**, and every reply after that comes in Arabic. The command works before you link anything, and the choice follows your Discord account.

## See your servers and control them

- `/servers` lists every server you can reach from here, and lets you pick one to open its card
- The server card shows its state, its numbers and its address, with start, stop and restart buttons under it plus **Refresh** and **Panel**
- `/server status`, `start`, `stop`, `restart`, `panel` and `backup` all take a `server` option, and it suggests your servers as you type — pick one instead of memorizing codes
- `/server panel` opens the game's own panel inside Discord: players, settings, and every section the game supports

## Share a server with your friends

- `/server share` lets you pick the server, then the members you want controlling it from this Discord
- The members you pick need no Serverk account and no link of their own — being in the same Discord is enough
- `/server unshare` stops the sharing, and the server's updates in this Discord stop with it

> [!note] Only you and the members you pick with `/server share` can control the server from Discord.

## Post server updates in a channel

- `/server feed`, pick the server and the channel, and the server's updates land there as they happen
- Without a channel, the same command shows the channel bound right now and lets you pick what you receive — started, stopped, crashed, and players joining and leaving — with a **Stop updates** button that clears the binding
- You need the Manage Server permission in the Discord to bind a channel

## Unlink your account

`/unlink` disconnects your account from Discord and removes the servers you shared in every Discord you shared them in.
