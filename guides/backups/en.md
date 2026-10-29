Take a backup yourself, pin the ones you want to keep, download them, and restore any of them from your server panel.

## Before you start

A backup is a compressed copy of the files your game needs to come back as it was when the backup was taken. We set which files those are for each game. On Minecraft Bedrock they include your worlds, `allowlist.json`, `permissions.json`, `server.properties`, the `behavior_packs` and `resource_packs` folders, the `config` folder and the record of the add-ons you installed. Every other game has its own list.

Files outside that list aren't in the backup, and the **Files** tab shows every file on your server.

> [!note] A backup captures what reached the disk, not what is still in memory. That's why we ask the game to save first, and we never call a backup clean when the save didn't confirm.

## Steps

### 1. Open the Backups tab

Your backups are in the **Backups** tab of your server panel. The top of the tab shows your last backup and the next automatic one.

@[open](backups)

![The Backups tab, with the last backup and the next automatic backup at the top.](guides/backups/backups-tab.webp)

### 2. Back up now

Press **Back up now**, give the backup a name if you like, then press **Take the backup**. The backup's card shows up in your list, badged **Clean** or **Mid-play** depending on the server's state when it was taken. A failed backup sends you a message, and the reason is on the backup card itself.

![The New backup window with the name field and the Take the backup button.](guides/backups/back-up-now.webp)

> [!note] The safest backup is one taken with the server stopped. Stop it for a minute, take the backup, start it again.

### 3. Pin an automatic backup to your storage

To hold on to an automatic backup, press **Pin it to your storage** on its card, and it's badged **Pinned**.

![An automatic backup's card with its Pin it to your storage button.](guides/backups/keep-backup.webp)

> [!note] Pinning an automatic backup moves it out of the safety net and into your space: it stops rotating, and it counts against your space. Unpin it and it goes back into rotation.

### 4. Download a backup

Every stored backup gets a second copy in off-site storage with another provider, so your backup survives even if every file on your server is lost. Each backup shows where it is: **Copying off-site…** while it's on its way, **Off-site copy** once it's there.

As soon as the off-site copy is done, the **Download** button becomes available. It gives you a direct link to a `tar.zst` file. The link works for 5 minutes, and you get 10 downloads an hour.

![A backup card with an off-site copy and its Download button.](guides/backups/download-backup.webp)

### 5. Restore a backup

Press **Restore** on the backup you want. In the window, tick **I understand this can't be undone**, then press **Restore it**. We take a copy of the current state first so you can come back if you change your mind, then stop the server, roll the files back, and start it again.

![The Restore a backup window with the confirmation box ticked and the Restore it button.](guides/backups/restore-backup.webp)

> [!warning] A restore erases everything that happened after the backup was taken. If you want to keep a file from the current state, download it from the Files tab before you start.

If the local archive is corrupt or missing, we pull the backup from off-site storage automatically. We also re-check backups byte for byte on a schedule, so a corrupt one is flagged and repaired from the off-site copy.

## How backups work

### Daily, and before every big change

We take one automatically every day, plus an extra one before anything that touches your files: an upgrade, a version change, a game change, a reset, and a restore. These are all on us: they're free, they take nothing from your own space, and we rotate them for you. We keep a history of 7 days on which your server actually changed, and a recovery copy taken before a change lives for 3 days, the window in which you can go back to how things were.

Before an automatic backup, and before a recovery copy, we compare your server's files with your newest backup. When nothing changed, we take no new copy and instead mark that older backup on its card as still matching your files as of that moment. Backups you take yourself are always taken, changed or not.

If a recovery copy can't be taken before a version change or an upgrade, we say so in your server's activity and carry on with the change you asked for. A reset, a game change and a restore never start without one: if it can't be taken, the change stops and your files stay as they were. Your last good backup stays exactly where it is however many new ones fail, and the automatic schedule carries on by itself.

### Your own space

You get backup space of your own the size of your server's disk: a 20 GB disk gives you 20 GB of backups. It holds:

- The backups you take yourself with **Back up now**.
- The backups you import with **Import a backup**.
- The backups your own scheduled tasks take.
- Any automatic backup you pin with **Pin it to your storage**.

Your backups never expire, and we never delete one you took yourself or pinned; it stays until you delete it. The one exception is the backups your scheduled tasks take: when the space is full, the task deletes the oldest of them to take a new one, and always leaves the newest. Otherwise, when the space runs out we tell you right away: delete a backup, or unpin one, to take a new one.

### Clean or mid-play

When the server is running, we ask the game to save its world before the backup and wait for it to confirm the save finished. When it confirms, the backup is badged **Clean**. If we asked for a save and it never confirmed, we don't take a partial copy and call it clean: the backup fails and you get the reason. A backup taken while the server is stopped is always **Clean**.

How each game saves before a backup:

- **Minecraft Java**: we turn autosave off, flush the whole world to disk, and turn autosave back on once the backup is done.
- **Minecraft Bedrock**: we hold the world's writes, ask the server for the list of world files and their sizes at the moment of the save, copy exactly those bytes, and then let the server save normally again.
- **Palworld**: we ask the server to save the world before the backup.
- **Rust**: we ask the server to save the map before the backup.
- **ARK: Survival Ascended**: we send `SaveWorld` and wait for the server to report the save complete.
- **Hytale**: we send `/world save --all --confirm` and wait for the server to confirm every world is saved.
- **Valheim**: there is no manual save command. Valheim saves on its interval (set in the settings) and when it shuts down, so a backup taken while it runs holds the last autosave and is badged **Mid-play**, which means the most recent stretch of play may be missing.

### Changes that touch your world

Some buttons in your game panel make changes to your world or your mods that can't be undone. These never run on a live server, and start an **Applying your change** operation instead:

- **Minecraft Java**: deleting a world, and resetting the Nether or the End.
- **Minecraft Bedrock**: deleting a world, removing an add-on, and repairing add-ons.
- **Valheim**: deleting a world, and removing BepInEx with every mod.
- **Rust** and **ARK: Survival Ascended**: wipes.

The operation runs in two stages:

1. **Applying the change**: while the game is stopped.
2. **Restoring the power state**: a running server starts again; a stopped server stays stopped.

We take no backup before these changes. If you want a way back, take one first with **Back up now**. If the change stops halfway, we keep the server stopped so you can check it, then start it or restore a backup.

> [!note] Installing, updating, disabling or removing a plugin or mod from a game's catalog, such as the Minecraft Java or Hytale one, is different: it runs on your running server and applies at the next restart. We take no backup before it either, so take one yourself first if you want a way back.

### After your subscription ends

When your subscription expires, your files and backups stay downloadable from the panel for the whole grace period. Once the server is deleted, backups that have an off-site copy move into the [Backup vault](/dashboard/backups) on your account, where you can download them for another 30 days.

## Out of space {#space-full}

The reason shows on the failed backup's card. If your backup space is full, delete a backup or unpin one. If your server's disk is full, delete the files you no longer need from the **Files** tab. Then take the backup again.

## The server didn't answer, or didn't confirm its save {#save-not-confirmed}

We asked the game to save and never got the confirmation, so we didn't take a partial copy. Stop the server and take the backup while it's stopped.

## It keeps failing {#keeps-failing}

If backups fail again and again, open a [support ticket](/dashboard/support) with your server code.

## Next

- Have your server take a backup at the time you set with [scheduled tasks](/guides/schedules).
