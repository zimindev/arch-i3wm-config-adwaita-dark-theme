# arch-i3wm-config-adwaita-dark-theme

<div align="center">
  <img src="screenshots/ksnip_20260903-100640.png" width="49%">
  <img src="screenshots/ksnip_20260903-100758.png" width="49%">
  <br>
  <img src="screenshots/ksnip_20260903-100853.png" width="49%">
  <img src="screenshots/ksnip_20260903-100933.png" width="49%">
</div>

## 🔄 Firs step: update & upgrade

```bash
sudo pacman -S update
sudo pacman -S upgrade
reboot
```
```bash
sudo pacman -S update
sudo pacman -S upgrade
reboot
```

## 🔄 Install AUR

---

### 🟢 **1. Install Git, Base-Devel

```bash
sudo pacman -S --needed base-devel git
```
### 🟢 **2. Install YAY

```bash
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
```

## 🧩 Picom Setup Guide for Arch + i3wm

---

### 🟢 **1. Install Video Drivers & Test OpenGL**

Install NVIDIA proprietary drivers (or AMD RADEON):

```bash
sudo pacman -S nvidia-dkms nvidia-utils libglvnd
```

Optional (test OpenGL and check rendering info):

```bash
sudo pacman -S mesa-demos
glxinfo | grep OpenGL
```

Expected output:
`OpenGL renderer string: NVIDIA...`

Then **reboot** your system:

```bash
reboot
```

---

### 🧰 **2. Install Build Tools (if not yet installed)**

```bash
sudo pacman -S base-devel git
```

---

### 📥 **3. Clone and Install `picom-ibhagwan-git`**

```bash
cd ~/Downloads
git clone https://aur.archlinux.org/picom-ibhagwan-git.git
cd picom-ibhagwan-git
makepkg -si
```

---

### ⚙️ **4. Add Your Custom Picom Config**

Create the config folder:

```bash
mkdir -p ~/.config/picom
```

Then create and paste your config as `~/.config/picom/picom.conf`:

```ini
# ⚡ Lightweight and fast config

backend = "glx";
vsync = true;
refresh-rate = 60;

# 🪟 Window corners

# corner-radius = 8;

# ✨ Fading animation

# fading = false;

# fade-in-step = 0.05;

# fade-out-step = 0.05;

# 🌑 Shadows (disabled)

# shadow = false;

# shadow-radius = 0;

# shadow-opacity = 0;

# 🌫️ Blur background exclude

blur-background-exclude = [
"window_type = 'dock'",
"window_type = 'desktop'"
];

# 🔲 Opacity rules

opacity-rule = [
"70:class_g = 'Alacritty'",
"85:class_g = 'URxvt'",
"85:class_g = 'XTerm'",
"75:class_g = 'kitty'"
];

# 🚫 Disable unneeded features

unredir-if-possible = true;
detect-client-opacity = false;
detect-transient = false;
detect-rounded-corners = false;
mark-wmwin-focused = false;
mark-ovredir-focused = false;
```

---

### 🚀 **5. Autostart Picom with i3**

Edit your i3 config (`~/.config/i3/config`) and add:

```bash
exec --no-startup-id picom --config ~/.config/picom/picom.conf
```

Then reload i3 with `Mod+Shift+R` or reboot.

---

### ✅ **6. Verify Picom is Working**

You can test manually:

```bash
picom --config ~/.config/picom/picom.conf
```



