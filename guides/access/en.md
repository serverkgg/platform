Bring your friends into your server, or give someone who helps you permissions in its panel, from the **Access** tab.

## Before you start

Your friends join your server with its address, so send it to them to add in the game:

@[field](server.address)

If your game asks for a server password, send that along with it. In games with a whitelist, such as Minecraft Java, anyone who knows the address can join while the whitelist is off. If you want the server for your friends only, turn the whitelist on in your game's settings, then bring them in with player invites.

The **Access** tab has three ways in. Pick the one that fits each person:

- **Player invites**: for games with a whitelist, a link your friend uses to add themselves to it and play with you. No Serverk account needed.
- **Members**: someone with a Serverk account who gets permissions in your panel to help you run the server.
- **Share links**: a link that opens your panel with the permissions you choose. No account needed.

Which one fits?

- **A friend who only wants to play**: the address, plus a player invite when your game's whitelist is on.
- **A partner who runs the server with you and has an account**: add them as a member at the right level.
- **Someone helping you once, without an account**: a share link with one use and a short expiry.

@[open](access)

## Invite players

Instead of asking every friend for their name and typing it yourself, send one link and they add themselves:

1. Open the **Access** tab and press **New invite** in the **Player invites** section.
2. Give the invite a name you'll recognize, such as "Discord friends".
3. Pick the **Uses**: unlimited, 1, 10 or 50.
4. Pick the expiry: 7 days, 30 days, or never.
5. Copy the link and send it to your friends.

![The Create an invite link window with the Link name, Uses and Expiry fields.](guides/access/new-invite.webp)

![The ready invite with its Copy link button.](guides/access/invite-link.webp)

> [!warning] The link is shown only once. Copy it as soon as you create it. If you lose it, create a new invite.

Your friend opens the link, types their in-game name and presses **Whitelist me**. We add them to the whitelist right away and show them the server address to add in the game.

> [!note] The server has to be running when the invite is used, because we send the change to the game itself.

In Minecraft Java, your friend also picks Java or Bedrock:

- **A Java name** is 3 to 16 characters: Latin letters, digits and `_`.
- **Bedrock players** use the same invite when crossplay is on for your server, and we show them the name we'll add them as before we add it.

Press any invite to see the **Players who joined** with it, and remove anyone you want from the whitelist. When you revoke an invite, the players who joined with it stay on the whitelist, but nobody can use the link again.

> [!note] An invite adds players to the whitelist. It doesn't turn the whitelist on. While the whitelist is off, anyone with the address can join, so turn it on in Settings when you want the server closed to your friends.

Some games have no whitelist at all. For those, the invites section tells you invites aren't available.

## Add a member

A member is a friend with a Serverk account who opens your panel with their own account, without you sharing your password:

1. Press **Add member** in the **Members** section.
2. Search for them by username.
3. Pick their permissions and save.

![The Add a new member window with the Username field and the permission levels.](guides/access/add-member.webp)

Permissions come in three ready levels:

- **Viewer**: sees the console, the panel, the backups and the activity, and changes nothing.
- **Operator**: everything a viewer can do, plus start, stop and restart, sending console commands, changing game settings and reading files.
- **Manager**: every permission, including editing files, every backup action and managing schedules.

For any other mix, press **Customize permissions** and pick each permission on its own. Change a member's permissions whenever you like. When you remove a member, they lose access to the server right away.

> [!warning] File and backup permissions include deleting what's on your server and restoring older backups over it. Give them only to people you trust.

## Create a share link

A share link opens your panel for someone without a Serverk account, with the same permissions you'd give a member:

1. Press **New link** in the **Share links** section.
2. Name the link and pick its permissions.
3. Pick the **Uses**: 1, 5, 10 or unlimited.
4. Pick the expiry: never, 1 day, 7 days or 30 days.
5. Copy the link and send it.

![The Create a share link window with the name, Uses, Expiry and permission fields.](guides/access/new-link.webp)

The person opens the link, types a name so others in the panel know who they are, and enters. Someone who came in through a link can't open a support ticket with us: only the server owner opens tickets.

> [!warning] The link is shown only once, and anyone who holds it gets in with its permissions until it reaches its use limit or expires. Don't post it in a public channel, and revoke it once you no longer need it: everyone using it loses access right away.

Adding and removing members, and creating and revoking share links, all show up in the **Activity** tab, so you know who changed what and when.

## Your friend sees "The server is stopped" {#invite-server-stopped}

We can only whitelist a player while the server is running. Start the server, then ask your friend to press **Whitelist me** again.

## Your friend sees that the invite is used up or no longer valid {#invite-not-valid}

The invite reached its use limit, expired, or you revoked it. Create a new invite and send them its link.

## Next

- Let your friends join through your own domain with [Use your own domain](/guides/own-domain).
