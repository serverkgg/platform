Let your server handle the routine by itself, at the time you set: a nightly restart, a console command, or a backup.

## Before you start

- You'll find the tasks in the **Schedules** tab of your server panel.
- Each server has up to 10 scheduled tasks, and the page shows how many you've used.

> [!note] The first one we recommend: a daily restart at a quiet hour. It keeps RAM use from building up and keeps the server light.

## Steps

### 1. Create a new task

Open the **Schedules** tab and press **New schedule**. The **New scheduled task** window opens.

![The Schedules tab with the task list, the New schedule button and the count of tasks used.](guides/schedules/new-schedule.webp)

### 2. Name the task and pick how it repeats

Type a **Schedule name**, such as "Dawn restart", then pick how it **Repeats** and set its time:

- **Daily**: every day at the hour and minute you pick.
- **Weekly**: one day a week, at the time you pick.
- **Every few hours**: every 1, 2, 3, 4, 6, 8 or 12 hours, on the hour.
- **Advanced**: a cron expression with five fields: minute, hour, day of month, month and day of week.

Runs must be at least 10 minutes apart.

![The new task window with the Schedule name field, the Repeats field and its time.](guides/schedules/name-and-repeat.webp)

> [!note] A task runs in your device's time zone at the moment you save it. When someone in another time zone opens it, they see the time zone it runs in next to it, and if they edit and save it, it runs in their time zone from then on.

### 3. Add the steps and save

Each task has 1 to 5 steps, which run in order. Pick each step's **Action**:

- **Start**, **Stop** or **Restart**.
- **Console command**: one command on one line, up to 200 characters, such as `say Restarting in one minute` in Minecraft.
- **Backup**.

Each step also has a **Delay before the step (seconds)** of up to 300 seconds, which we wait out before running it. Add a step with **Add step**, reorder the steps with the move up and move down buttons, then press **Save**.

A Minecraft example of a nightly restart that warns players first:

1. **Console command**: `say Restarting in one minute`, with no delay.
2. **Restart**, with a 60-second delay.

![The Steps part of the task window, with the Add step button and the Action field.](guides/schedules/add-steps.webp)

> [!note] When a stop or restart runs with players on the server, we warn them in game 10 seconds before, in games that support it.

### 4. Try the task

Press **Run now** on the task's card to run it right away and try it. All the tasks on a server share 6 runs an hour this way. The task shows how its last run went: **Done**, **Partly done** or **Failed**.

![The task cards with the Run now button and the on and off switch.](guides/schedules/run-now.webp)

## Manage your tasks

- Switch a task between **On** and **Off** to pause it without deleting it, and turn it back on whenever you like.
- **Edit** and **Delete** are on the task's card.

> [!note] Members you added to your server see the tasks when you give them **View schedules**, and can change them only with **Manage schedules**. The details are in [Invite your friends](/guides/access).

## What happens when it runs

- **The server is stopped when a console command is due**: we skip that step and don't count it as a failure.
- **A step fails**: the remaining steps still run, and the task shows how its last run went.
- **A backup** is stored in your own space under the task's name, and counts against it like the backups you take yourself. When the space is full we delete the oldest backup a scheduled task took to make room, never the newest one and never one you took yourself or kept. The details are in the [backups guide](/guides/backups).

Every step that runs shows up in **Activity**, marked as coming from a scheduled task.

## The backup failed because the space is full {#backup-space-full}

If deleting the oldest scheduled backup can't free enough room, the run fails. Delete a backup to get the task working again.

## The task didn't run on time {#run-skipped}

When the subscription has expired, or the server is being set up or updated, the task doesn't run at that time and runs at the next one.

## Next

- Learn where your tasks' backups are kept and how to restore them in the [backups guide](/guides/backups).
