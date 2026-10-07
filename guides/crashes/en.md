## What we do when your server crashes

We watch your server all the time, and what we do depends on when it crashes:

- **It crashes after it finished starting**: we start it again on our own within 2 seconds, and **Activity** shows "Server crashed" with the cause.
- **It crashes 3 times within 10 minutes**: we stop it and don't try again, because starting it over and over won't fix the problem and only uses up your server's resources. Its panel shows "Your server crashes every time it starts".
- **It crashes while starting**, before it's ready: we stop it without retrying, because the cause usually repeats every time. You see "Your server couldn't start".

When we brought it back on our own, we don't send you anything. When it stays stopped, you get a notification in the bell inside the panel, unless you're watching your server in the panel at that moment.

> [!note] Crash emails are off to begin with. Turn them on in your [notification settings](/dashboard/settings/notifications) under **Your servers and bots**.

## The cause on the Overview page

Open the **Overview** tab of your server panel. After a crash, a card there shows:

- **The cause** we read from the server's log, such as "Not enough RAM" or "A mod is missing".
- **What happened**: it crashed while starting, it crashed and we brought it back, or it crashed and stayed stopped.
- **The details** when we have them: the mod responsible, or the last line the server printed before it stopped.
- **What to do**, with a button that takes you to the fix when there is one, such as the Mods tab, your backups, or a plan upgrade.

@[open](overview)

## The causes we recognize, and the fix for each

- **Not enough RAM**, or **Java ran out of memory**: your server used all the RAM it has. Upgrade the plan for more RAM, or remove the heavy mods and lower the **View distance** in your game's settings.
- **A mod needs a newer Java**: a mod or plugin needs a newer Java than the one your server type ships with. Switch the server type or version from the Version tab, or install the mod version that matches your server.
- **A mod is missing**: an installed mod needs another mod that isn't installed. Install the missing mod from the Mods tab, then start the server.
- **A mod crashed your server**: turn off the mod and start the server, then look for a version of it that fits your version.
- **The world file is damaged**: we couldn't read the world file. Restore the latest backup from the Backups tab, then start the server.
- **The port was busy**: a restart usually fixes it. Contact us if it keeps happening.
- **Your server stopped unexpectedly**: a cause we don't recognize yet, and we show you the last line the server printed. Open the console and read the last lines before you start it again.

## Read the console

When the card isn't enough, the **Console** tab has the server log exactly as the server printed it. Start from the last line before it stopped and work upward. Look for the first line with `ERROR`, `Exception`, or the name of a mod or a file: that's usually where the problem starts.

@[open](console)

> [!note] Did you change something right before the crash, such as a new mod, a setting or a version? Start there: undo it and start the server to see whether it comes back.

## Out of disk space

When your server's disk fills up, we stop it right away so the world doesn't get corrupted. It won't start, and nothing can be written to it, until there's free space. Open the **Files** tab and delete what you don't need: old worlds and logs take up the most space. Then start it again. If you need more space for good, move up a plan.

## The Analytics page

The **Analytics** tab has a **Diagnosis** section that reads the last 24 hours of your server: RAM pressure, a busy CPU, lag, repeated crashes, and a disk that's nearly full. Check it when your server lags or crashes now and then without a clear cause.

## Still crashing?

Open a [support ticket](/dashboard/support) with your server code, what you changed before the crash, and the cause the card showed. We read the same log on our side and reply in the ticket.
