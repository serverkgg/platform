Find why your server crashed from the line you see, then apply the fix for that cause.

## Find your line

We watch your server all the time, and what we do depends on when it crashes. You see a line that says what happened:

- "Server crashed" in **Activity**, with the cause: it crashed after it finished starting, and we started it again on our own within 2 seconds.
- "Your server crashes every time it starts" in its panel: it crashed 3 times within 10 minutes, so we stopped it and didn't try again, because starting it over and over won't fix the problem and only uses up your server's resources.
- "Your server couldn't start": it crashed while starting, before it was ready, so we stopped it without retrying, because the cause usually repeats every time.

After any crash, a card on the **Overview** tab shows:

- **The cause** we read from the server's log, titled with one of the headings below, such as "Not enough RAM" or "A mod is missing".
- **What happened**: it crashed while starting, it crashed and we brought it back, or it crashed and stayed stopped.
- **The details** when we have them: the mod responsible, or the last line the server printed before it stopped.
- **What to do**, with a button that takes you to the fix when there is one, such as the Mods tab, your backups, or a plan upgrade.

@[open](overview)

When the card isn't enough, the **Console** tab has the server log exactly as the server printed it. Start from the last line before it stopped and work upward. Look for the first line with `ERROR`, `Exception`, or the name of a mod or a file: that's usually where the problem starts.

![The server log in the console, with the All, Warnings and Errors buttons marked.](guides/crashes/console-errors.webp "Press Errors to see only the error lines, or type a word in the Filter lines box next to it.")

@[open](console)

> [!note] Did you change something right before the crash, such as a new mod, a setting or a version? Start there: undo it and start the server to see whether it comes back.

## Not enough RAM {#oom-kill}

It can also show as "Java ran out of memory". Your server used all the RAM it has. Upgrade the plan for more RAM, or remove the heavy mods and lower the **View distance** in your game's settings.

## A mod needs a newer Java {#wrong-java}

A mod or plugin needs a newer Java than the one your server type ships with. Switch the server type or version from the Version tab, or install the mod version that matches your server.

## A mod is missing {#missing-dependency}

An installed mod needs another mod that isn't installed. Install the missing mod from the Mods tab, then start the server.

## A mod crashed your server {#mod-crashed}

Turn off the mod and start the server, then look for a version of it that fits your version.

## The world file is damaged {#world-corrupt}

We couldn't read the world file. Restore the latest backup from the Backups tab, then start the server.

## The port was busy {#port-busy}

A restart usually fixes it. Contact us if it keeps happening.

## Your server is out of space {#disk-full}

When your server's disk fills up, we stop it right away so the world doesn't get corrupted. It won't start, and nothing can be written to it, until there's free space. Open the **Files** tab and delete what you don't need: old worlds and logs take up the most space. Then start it again. If you need more space for good, move up a plan.

## Your server stopped unexpectedly {#unknown}

A cause we don't recognize yet, and we show you the last line the server printed. Open the console and read the last lines before you start it again.

## The Analytics page

The **Analytics** tab has a **Diagnosis** section that reads the last 24 hours of your server: RAM pressure, a busy CPU, lag, repeated crashes, and a disk that's nearly full. Check it when your server lags or crashes now and then without a clear cause.

![The Diagnosis section of the Analytics tab.](guides/crashes/diagnosis.webp)

## When you get a notification

When we brought it back on our own, we don't send you anything. When it stays stopped, you get a notification in the bell inside the panel.

> [!note] Crash emails are off to begin with. To turn them on, open your [notification settings](/dashboard/settings/notifications), press **More detail**, then turn on **Email** in the **Crash** row under **Your servers and bots**.

![The notification table in the settings, with the email switch in the Crash row marked.](guides/crashes/crash-email.webp)

## Still crashing?

Open a [support ticket](/dashboard/support) with your server code, what you changed before the crash, and the cause the card showed. We read the same log on our side and reply in the ticket.
