## What a backup holds

A compressed copy of every file on your server at the moment it was taken: your world, your plugins, your mods and your config files. You will find them in the **Backups** tab of your server panel, and you can roll back to any of them with one click.

> [!note] A backup captures what reached the disk, not what is still in memory. That is why we ask the game to save first — and never call a backup clean when the save did not confirm.

## Daily, and before every change

We take one automatically every day, plus an extra one before anything that touches your files: an upgrade, a version change, a game change, a reset, or a move to another machine. Automatic backups do not use your slots and follow their own rotation: the last 7 daily and the last 4 weekly are kept, and each operation keeps the newest backup taken before it.

## Slots and space

Every server has 5 slots for manual backups, 20 GB of backup space in total, and each backup is kept for 30 days. When slots or space run out we tell you exactly which one stopped you.

You can **keep** a backup so it is never deleted automatically — but a kept backup still holds its slot, so do not keep everything.

## Clean or mid-play

When the server is running, we ask the game to save its world before the backup and wait for it to confirm the save finished. When it confirms, the backup is badged **Clean**. If we asked for a save and it never confirmed, we do not take a partial copy and call it clean — the backup fails and you get the reason. A backup taken while the server is stopped is always **Clean**.

How each game saves before a backup:

- **Minecraft** — we turn autosave off, flush the whole world to disk, and turn autosave back on once the backup is done.
- **Minecraft Bedrock** — we hold the world's writes, ask the server for the list of world files and their sizes at the moment of the save, copy exactly those bytes, and then let the server save normally again.
- **Palworld** — we ask the server to save the world before the backup.
- **Rust** — we ask the server to save the map before the backup.
- **ARK: Survival Ascended** — we send `SaveWorld` and wait for the server to report the save complete.
- **Hytale** — we send `/world save --all --confirm` and wait for the server to confirm every world is saved.
- **Valheim** — there is no manual save command. Valheim saves on its interval (set in the settings) and when it shuts down, so a backup taken while it runs holds the last autosave and is badged **Mid-play** — the most recent stretch of play may be missing.

> [!note] The safest backup is one taken with the server stopped. Stop it for a minute, take the backup, start it again.

## Changes that touch your world

Some buttons in your game panel change your world or your mods directly: adding, deleting or activating a world, installing or removing a mod or pack, and wipes. These never run on a live server — they start a **Saving before your change** operation:

1. **Saving a recovery copy** — we stop the game and wait until its recovery copy is stored before changing anything.
2. **Applying the change** — while the game is stopped.
3. **Restoring the power state** — a running server starts again; a stopped server stays stopped.

Because the server is stopped at that moment, the recovery copy is **Clean**. If the change does not complete we show you the reason, and you can press **Restore recovery copy**: we save your current files first, then restore the files and settings from before the change.

## The off-site copy and downloads

Every stored backup gets a second copy in off-site storage on a different provider from your server's machine, so your backup survives even if the whole machine is lost. Each backup shows where it is: **Copying off-site** while it travels, **Off-site copy** once it lands.

As soon as the off-site copy is done the **Download** button opens — it hands you a direct link to a `tar.zst` file. The link lives for a few minutes, and you get 10 downloads an hour.

## Restoring

Press **Restore** on the backup you want. We take a copy of the current state first so you can come back if you change your mind, then stop the server, roll the files back, and start it again.

> [!warning] A restore erases everything that happened after the backup was taken. If you want to keep a file from the current state, download it from the Files tab before you start.

If the local archive is corrupt or missing we pull the backup from off-site storage automatically. We also re-check backups byte for byte on a schedule, so a corrupt one is flagged and healed from the off-site copy.

## After your subscription ends

When your subscription expires your files and backups stay downloadable from the panel for the whole grace period. Once the server is deleted, backups that have an off-site copy move into the **vault** on your account — at [/dashboard/backups](/dashboard/backups) — where you can download them for another 30 days.

## When a backup fails

A failed backup sends you a message, and the reason sits on the backup card itself:

- **Out of disk space** — delete an old backup, or files you no longer need, from the Files tab
- **The server did not answer, or did not confirm its save** — try stopping it and taking the backup while it is off
- **It keeps failing** — open a [support ticket](/dashboard/support) with your server code

Your last good backup stays exactly where it is however many new ones fail, and the automatic schedule carries on by itself.
