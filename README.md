# 24/7 server

# ⚙️ Step 1: Forward Port in Codespaces
In GitHub Codespace top bar, click “Ports” tab.

Find port 3000 → click the globe icon 🌐 to make it public.

Copy the public URL (e.g., https://1234-yourname-project-xxxxx.github.dev).

# 🔁 Step 2: Setup UptimeRobot / Cron-job.org
Go to https://uptimerobot.com and:

Create an account

Click "Add New Monitor"

Type: HTTP(s)

URL: Paste your public Codespace port URL

Interval: every 5 mins

Name: “Keep Codespace Alive”

Save

It will now ping your Codespace every 5 minutes.

✅ This may reset the inactivity timer (no guarantee it’ll prevent 30 min timeout, but helps).

# ⚠️ Important Warnings
⚡ Not guaranteed: GitHub sometimes still stops Codespace after 30 min.

🔒 Free plan has limits — autosleep can't be disabled.

🧠 GitHub checks for user input, not just HTTP traffic.

# 🔔 ⚠️ Warning 🔔
If anyone uses or makes a video on this content (project/plugin/code/video/asset), you must give proper credit to the original creators.

🎯 Creators: Joy and N!GHT

📌 Failure to give credit may result in a copyright claim or report

