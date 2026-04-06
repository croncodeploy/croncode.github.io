---
layout: page
title: Cron Expressions
permalink: /documentation/cron-expressions/
order: 2
toc: true
---

# Cron Expressions

Cron expressions are used to define the schedule for your recurring tasks. In Croncode, every generated script is accompanied by a standard 5-segment cron expression.

## Anatomy of a Cron Expression

A standard cron expression consists of five fields separated by spaces:

```text
┌───────────── minute (0 - 59)
│ ┌───────────── hour (0 - 23)
│ │ ┌───────────── day of the month (1 - 31)
│ │ │ ┌───────────── month (1 - 12)
│ │ │ │ ┌───────────── day of the week (0 - 6) (Sunday to Saturday)
│ │ │ │ │
│ │ │ │ │
* * * * *
```

## Common Operators

*   **`*` (Asterisk):** Matches all values. For example, `*` in the minute field means "every minute."
*   **`,` (Comma):** Defines a list of values. `1,15,30` in the minute field means "at 1, 15, and 30 minutes past every hour."
*   **`-` (Hyphen):** Defines a range of values.
 `9-17` in the hour field means "every hour from 9 AM to 5 PM."
*   **`/` (Slash):** Defines an interval. `*/15` in the minute field means "every 15 minutes."

## Examples

| | Minute | Hour | Day | Month | Day of Week |
| :--- | :--- | :--- | :--- | :--- | :--- |
| **Allowed Values** | 0-59 | 0-23 | 1-31 | 1-12 | 0-6 |
| **Basic Examples** | `* * * * *` every minute <br/>`* 1 * * *` 01:00 - 01:59 | `0 7 * * *` 7AM every day | `0 7 1 * *` 7AM on the 1st day of the month | `5 * * * 1` every 5 minutes in January | `5 * * * 1` every 5 minutes on Monday |
| **Interval** | `*/15 * * * *` every 15th minute | `* */2 * * *` every other hour | `0 7 */5 * * ` 7AM every 5th day of the month | `0 0 1 */3 *` midnight every 1st day of every 3rd month | `0 15 * * */4` 3PM every 4th day of the week |
| **List** | `1,15,30 * * * *` 1, 15, and 30 minutes past every hour | `5 8,12,18 * * *` 5 minutes past every 8AM, 12PM, 6PM | `30 7 1,15 * *` 7:30AM on 1st and 15th day of every month | `30 7 * 1,6,12 *` 7:30AM every day in January, June, December | `* * * * 1,3,5` every minute of Monday, Wednesday, Friday |
| **Range** | `15-30 * * * *` every minute 15-30 past the hour | `0 9-17 * * 1-5` top of every hour 9AM - 5PM on Monday - Friday | `0 * 1-29 * *` midnight every day 1-29 of every month | `0 * * 1-7 *` midnight every day January - July | `0 * * * 1-5` midnight Monday - Friday |


## How Croncode Uses Them

When you describe your task to Croncode, the AI interprets your natural language (e.g., "every Tuesday morning at 10") and generates the corresponding expression (`0 10 * * 2`). This expression is then used by your server's `crontab` to schedule the script's execution.

---
*For more complex scheduling needs, don't hesitate to ask Croncode to refine your expression.*
