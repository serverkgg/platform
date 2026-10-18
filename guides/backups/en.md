## What a backup holds

A compressed copy of the files your game needs to come back as it was when the backup was taken. We set which files those are for each game. On Minecraft Bedrock they include your worlds, `allowlist.json`, `permissions.json`, `server.properties`, the `behavior_packs` and `resource_packs` folders, the `config` folder and the record of the add-ons you installed. Every other game has its own list.

Files outside that list aren't in the backup, and the **Files** tab shows every file on your server. Your backups are in the **Backups** tab of your server panel, and you can roll back to any of them with one click.

> [!note] A backup captures what reached the disk, not what is still in memory. That's why we ask the game to save first, and we never call a backup clean when the save didn't confirm.

## Daily, and before every big change

We take one automatically every day, plus an extra one before anything that touches your files: an upgrade, a version change, a game change, a reset, and the game panel changes that can't be undone, listed under **Changes that touch your world** below. These are all on us: they're free, they take nothing from your own space, and we rotate them for you. We keep a history of 7 days on which your server actually changed, and a recovery copy taken before a change lives for 3 days, the window in which you can go back to how things were.

Before an automatic backup, and before a recovery copy, we compare your server's files with your newest backup. When nothing changed, we take no new copy and instead mark that older backup on its card as still matching your files as of that moment. Backups you take yourself are always taken, changed or not.

This safety net never stops you. If a recovery copy can't be taken for any reason, we say so in your server's activity and carry on with the change you asked for.

## Your own space

You get backup space of your own the size of your server's disk: a 20 GB disk gives you 20 GB of backups. It holds:

- The backups you take yourself with **Back up now**.
- The backups you import from another host.
- The backups your own scheduled tasks take.
- Any automatic backup you keep with **Keep it in your storage**.

Your backups never expire, and we never delete one you took yourself or kept; it stays until you delete it. The one exception is the backups your scheduled tasks take: when the space is full, the task deletes the oldest of them to take a new one, and always leaves the newest. Otherwise, when the space runs out we tell you right away: delete a backup, or stop keeping one, to take a new one.

> [!note] Keeping an automatic backup moves it out of the safety net and into your space: it stops rotating, and it counts against your space. Stop keeping it and it goes back into rotation.

## Clean or mid-play

When the server is running, we ask the game to save its world before the backup and wait for it to confirm the save finished. When it confirms, the backup is badged **Clean**. If we asked for a save and it never confirmed, we don't take a partial copy and call it clean: the backup fails and you get the reason. A backup taken while the server is stopped is always **Clean**.

How each game saves before a backup:

- **Minecraft**: we turn autosave off, flush the whole world to disk, and turn autosave back on once the backup is done.
- **Minecraft Bedrock**: we hold the world's writes, ask the server for the list of world files and their sizes at the moment of the save, copy exactly those bytes, and then let the server save normally again.
- **Palworld**: we ask the server to save the world before the backup.
- **Rust**: we ask the server to save the map before the backup.
- **ARK: Survival Ascended**: we send `SaveWorld` and wait for the server to report the save complete.
- **Hytale**: we send `/world save --all --confirm` and wait for the server to confirm every world is saved.
- **Valheim**: there is no manual save command. Valheim saves on its interval (set in the settings) and when it shuts down, so a backup taken while it runs holds the last autosave and is badged **Mid-play**, which means the most recent stretch of play may be missing.

> [!note] The safest backup is one taken with the server stopped. Stop it for a minute, take the backup, start it again.

## Changes that touch your world

Some buttons in your game panel make changes to your world or your mods that can't be undone. These never run on a live server, and start an **Applying your change** operation instead:

- **Minecraft Java**: deleting a world, and resetting the Nether or the End.
- **Minecraft Bedrock**: deleting a world, removing an add-on, and repairing add-ons.
- **Valheim**: deleting a world, and removing BepInEx with every mod.
- **Rust** and **ARK: Survival Ascended**: wipes.

The operation runs in three stages:

1. **Saving a recovery copy**: we stop the game and wait until its recovery copy is stored before changing anything.
2. **Applying the change**: while the game is stopped.
3. **Restoring the power state**: a running server starts again; a stopped server stays stopped.

Because the server is stopped at that moment, the recovery copy is **Clean**. If the change doesn't complete, we show you the reason, and you can press **Restore recovery copy**: we save your current files first, then restore the files and settings from before the change.

> [!note] Installing, updating, disabling or removing a plugin or mod from a game's catalog, such as the Minecraft Java or Hytale one, is different: it runs on your running server, takes no recovery copy, and applies at the next restart. If you want a way back, take a backup first with **Back up now**.

## The off-site copy and downloads

Every stored backup gets a second copy in off-site storage on a different provider from your server's machine, so your backup survives even if the whole machine is lost. Each backup shows where it is: **Copying off-site…** while it's on its way, **Off-site copy** once it's there.

As soon as the off-site copy is done, the **Download** button becomes available. It gives you a direct link to a `tar.zst` file. The link works for a few minutes, and you get 10 downloads an hour.

## Restoring

Press **Restore** on the backup you want. We take a copy of the current state first so you can come back if you change your mind, then stop the server, roll the files back, and start it again.

> [!warning] A restore erases everything that happened after the backup was taken. If you want to keep a file from the current state, download it from the Files tab before you start.

If the local archive is corrupt or missing, we pull the backup from off-site storage automatically. We also re-check backups byte for byte on a schedule, so a corrupt one is flagged and repaired from the off-site copy.

## After your subscription ends

When your subscription expires, your files and backups stay downloadable from the panel for the whole grace period. Once the server is deleted, backups that have an off-site copy move into the **Backup vault** on your account, at [/dashboard/backups](/dashboard/backups), where you can download them for another 30 days.

## When a backup fails

A failed backup sends you a message, and the reason is on the backup card itself:

- **Out of disk space**: delete an old backup, or files you no longer need, from the Files tab
- **The server didn't answer, or didn't confirm its save**: stop it and take the backup while it's stopped
- **It keeps failing**: open a [support ticket](/dashboard/support) with your server code

Your last good backup stays exactly where it is however many new ones fail, and the automatic schedule carries on by itself.
