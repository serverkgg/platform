## Before you start

Got a world, or a whole server, sitting at another host? All of it moves: the world, the mods, the plugins and your config files. You can do it yourself in two ways, or open a migration ticket and we do it for free.

Get two things ready first, whichever way you pick:

- **A server with us on the same game.** Create it from the create page, and keep the same game version and server type as the old one so your mods load on the first boot.
- **A copy of your old files on your computer.** Download them from your old host's panel or over its SFTP, and zip them into one archive.

> [!note] Your server with us stays up for the whole migration. It only stops for the final restart.

## Path one: upload an archive from the panel

The fastest route for a world on its own or a small folder, and it needs no software at all:

1. Open your server with us and go to the **Files** tab.
2. Enter the folder you want to upload into — usually the root.
3. Press **Upload**, pick the archive, and wait for the progress bar to finish.
4. Click the file, choose **Extract**, and pick the folder the files should land in.
5. Delete the archive once you have checked the result, so it stops eating your disk.
6. Restart the server so it reads the new files.

You can upload `zip`, `tar`, `gz`, `7z` or `rar` — we extract all of them.

## Path two: move over SFTP

This is the one for a full modpack or a folder with thousands of files, because an interrupted upload picks up where it stopped:

1. In the **Files** tab press the **SFTP** button in the toolbar and create a password.
2. Open FileZilla or WinSCP and connect on port `2022` with your server code and that password.
3. Drag your folders from your computer to the server.
4. Restart the server once the transfer is done.

Every detail is in the [file transfer (SFTP) guide](/guides/sftp).

## Path three: let us move it for you, free

No time, or the old server is full of things and you are not sure what has to come across? Open a ticket of the **Migration** kind from the [migration page](/move) or from [support](/dashboard/support), and tell us:

- Your old host and the name of the service there.
- How we reach its files — a control panel with credentials, SFTP, or a link to a ready backup.
- The game, the version and the server type.
- Exactly what you want moved: the world alone, or the mods and settings with it.
- Your server code with us.

We move everything and come back in the same ticket with a server ready to start.

> [!warning] Change your old host's password once we are done. That is simply good practice with anyone you hand temporary access to.

## What to upload and what to leave alone

- **Upload**: the world folder, `mods`, `plugins`, `config`, and the config files you edited yourself.
- **Do not upload**: the game's own files, the server jar or binary, or the Java folder. Your server with us already ships them at the right version, and writing over them breaks the boot.
- Some files are locked on purpose: you can see and download them, but not edit or delete them. If an upload over a protected file is refused, that is expected, not a fault.

## After the move

1. Start the server, open the **Console** tab and read the first 30 lines — a missing mod or a wrong version shows up right there.
2. Join the server and confirm the world you see is yours.
3. Take a manual backup from the **Backups** tab so you have a restore point from right after the migration.

## Common problems

- **The world did not show up and a fresh one was generated** — the world folder name has to match what the config expects. On Minecraft that is `level-name` in `server.properties`; set it to the folder you uploaded and restart.
- **The server crashes on start** — usually the game version or server type differs from the old one. Put them back to the old values in the **Settings** tab, or remove the mod the console is complaining about.
- **A mod works for the player but not on the server** — some mods are client-side only. Take them out of the server's `mods` folder and leave them with your players.
- **The upload stopped and the disk is full** — your disk in Files and over SFTP is the disk your plan gives you. Delete the archive after extracting, clear old backups, or move up a plan.
- **Nothing worked** — open a migration ticket with your server code and we will finish it with you.
