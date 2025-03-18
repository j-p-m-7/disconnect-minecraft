# Minecraft Quick Disconnect Script

A **Linux-based macro** using `xdotool` to **instantly disconnect from Minecraft** by pressing the **backtick (`) key** (same key as Tilde key). This is useful for **combat logging** or **quickly exiting the game** in emergencies.

---

## 📦 Requirements
Ensure the following packages are installed:

- **xdotool** (for simulating keyboard and mouse actions)

  ```bash
  sudo apt update && sudo apt install xdotool
  ```
---

## ⚡ What It Does
- Pressing the **backtick (`) key** will:
  1. **Open the pause menu** (`ESC` key).
  2. **Move the mouse** to the "Disconnect" button.
  3. **Click "Disconnect"** to leave the game instantly.

This allows for **fast logout** in multiplayer situations.

---

## 🔧 Setup & Installation

### 1️⃣ **Create the Script**
  ```bash
  nano ~/.local/bin/disconnect_minecraft.sh
  ```

Paste the following script:
  ```bash
  #!/bin/bash
  xdotool key Escape  # Press ESC to open pause menu
  sleep 0.01  # Short delay (100ms)
  xdotool mousemove 1248 630  # Move mouse to "Disconnect" button (adjust if needed)
  sleep 0.05  # Small delay (50ms)
  xdotool click 1  # Click to disconnect
  ```

Save and exit (`CTRL + X`, then `Y`, then `ENTER`).

### 2️⃣ **Make It Executable**
  ```bash
  chmod +x ~/.local/bin/disconnect_minecraft.sh
  ```

### 3️⃣ **Bind the Script to the Backtick (`) Key**
1. Open **Ubuntu Settings > Keyboard Shortcuts**.
2. Click **"Add Custom Shortcut"**.
   - **Name:** `Minecraft Quick Disconnect`
   - **Command:**  
     ```bash
     ~/.local/bin/disconnect_minecraft.sh
     ```
   - **Shortcut:** Press **Backtick (`) Key** (Shift + Tilde)
3. **Save & Exit.**

---

## ✅ Testing the Script
1. Open **Minecraft (Multiplayer or Singleplayer)**.
2. Press **Backtick (`) Key** to **instantly disconnect**.
3. If it doesn’t work, ensure:
   - The **mouse coordinates (`1248, 630`) are correct**.
   - **xdotool is installed** (`which xdotool`).
   - The script has **execute permissions**.

---

## 🎯 Troubleshooting
| Issue | Solution |
|--------|----------|
| Script doesn't work | Run manually: `~/.local/bin/disconnect_minecraft.sh` |
| Wrong mouse position | Use `xdotool getmouselocation` to find new coordinates |
| Delay feels too long | Reduce `sleep` times in the script |
| Not working in full-screen | Try **Windowed Mode** instead |

---

## 🚀 Future Improvements
- 🛠 **Auto-detect "Disconnect" button position.**
- ⏩ **Reduce delay further for instant execution.**
- 🖱️ **Alternative method using AutoKey instead of xdotool.**

---

### **Enjoy Quick-Disconnecting! 🏃💨**

