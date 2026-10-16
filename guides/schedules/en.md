## What are scheduled tasks?

Your server handles the routine by itself, at the time you set: a nightly restart, a console command, or a backup. You'll find them in the **Schedules** tab of your server panel.

> [!note] The first one we recommend: a daily restart at a quiet hour. It keeps RAM use from building up and keeps the server light.

## Create a task

1. Open the **Schedules** tab and press **New schedule**.
2. Type a **Schedule name**, such as "Dawn restart".
3. Pick how it **Repeats** and set its time.
4. Add the **Steps** that run in order, then save.

## Repeats

- **Daily**: every day at the hour and minute you pick.
- **Weekly**: one day a week, at the time you pick.
- **Every few hours**: every 1, 2, 3, 4, 6, 8 or 12 hours, on the hour.
- **Advanced**: a cron expression with five fields: minute, hour, day of month, month and day of week.

Runs must be at least 10 minutes apart.

> [!note] A task runs in your device's time zone at the moment you save it. When someone in another time zone opens it, they see the time zone it runs in next to it, and if they edit and save it, it runs in their time zone from then on.

## Steps

Each task has 1 to 5 steps, which run in order. Pick each step's **Action**:

- **Start**, **Stop** or **Restart**.
- **Console command**: one command on one line, up to 200 characters, such as `say Restarting in one minute` in Minecraft.
- **Backup**.

Each step also has a **Delay before the step** of up to 300 seconds, which we wait out before running it. Reorder the steps with the move up and move down buttons.

A Minecraft example of a nightly restart that warns players first:

1. **Console command**: `say Restarting in one minute`, with no delay.
2. **Restart**, with a 60-second delay.

> [!note] When a stop or restart runs with players on the server, we warn them in game 10 seconds before, in games that support it.

## What happens when it runs

- **The server is stopped when a console command is due**: we skip that step and don't count it as a failure.
- **A step fails**: the remaining steps still run. The task shows how its last run went: **Done**, **Partly done** or **Failed**.
- **A backup** is stored in your own space under the task's name, and counts against it like the backups you take yourself. When the space is full we delete the oldest backup a scheduled task took to make room, never the newest one and never one you took yourself or kept. If that can't free enough room, the run fails, so delete a backup to get the task working again. The details are in the [backups guide](/guides/backups).
- **An expired subscription, or a server being set up or updated**: the task doesn't run at that time and runs at the next one.

Every step that runs shows up in **Activity**, marked as coming from a scheduled task.

## Manage your tasks

- Switch a task between **On** and **Off** to pause it without deleting it, and turn it back on whenever you like.
- **Run now** runs it right away so you can try it. All the tasks on a server share 6 runs an hour this way.
- **Edit** and **Delete** are on the task's card.

Each server has up to 10 scheduled tasks, and the page shows how many you've used.

> [!note] Members you added to your server see the tasks when you give them **View schedules**, and can change them only with **Manage schedules**. The details are in [Invite your friends](/guides/access).
