---
layout: page
title: Getting Started
permalink: /documentation/getting-started/
order: 1
toc: true
---

# Getting Started with Croncode

This guide will walk you through the process of creating your first recurring script using Croncode.

## 1. Describe Your Task

Start by entering a natural language description of what you want to achieve and how often it should run. For example:
> "Fetch the latest news from Hacker News every morning at 8 AM and email me a summary."

## 2. Generate Code

Croncode will process your request and generate:
1.  **The Script:** A complete, ready-to-run script in your language of choice (Node.js, Python, or Bash).
2.  **The Schedule:** A standard crontab expression with a human-readable explanation.

## 3. Verify and Test

Before deploying, you can use our in-browser sandbox to verify the script's behavior. The sandbox provides a secure environment to run the code and check the output without needing to set up anything on your local machine.

## 4. Deploy

Once you're satisfied with the generated script, you can deploy it to your server using the provided cron schedule and instructions.

---

## Running Croncode Locally

If you'd like to contribute or run the application on your own machine, follow these steps:

### Prerequisites
- **Node.js:** LTS version recommended.
- **Git:** For cloning the repository.

### Setup
1.  **Clone the Repository:**
    ```bash
    git clone https://github.com/aaronbronow/croncode.git
    cd croncode
    ```
2.  **Install Dependencies:**
    ```bash
    npm install
    ```
3.  **Run Development Server:**
    ```bash
    npm run dev
    ```
    The application will be available at `http://localhost:5173`.
