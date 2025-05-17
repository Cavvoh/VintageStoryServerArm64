# Vintage Story Server (Docker, ARM64)
This repository houses the [docker image](https://hub.docker.com/r/cavvoh/vintage-story-server-arm64) source to host a Vintage Story server on ARM64 devices (tested on Raspberry Pi 5).

## 🛠️ Installation

#### ⚠️ Note
Mods using Harmony will not work properly on arm64 servers since Harmony is not compatible with arm64.
The setup script copies the container files to the current folder.

### ✅ Requirements
- ARM64-based Linux system (e.g. Raspberry Pi 5)
- [Docker](https://docs.docker.com/engine/install/#supported-platforms) installed
- [Git](https://git-scm.com/downloads) installed

---

### ⚙️ Prepare server config
`./vsdata/serverconfig.json` contains mostly defaults. Any edits will make it into the server.

---

## 📦 Setup

Download the setup script:
```bash
wget https://raw.githubusercontent.com/Cavvoh/VintageStoryServerArm64/main/setup.sh
```
Make it executable and run it:
```bash
chmod +x setup.sh
./setup.sh
```
Now you can edit the compose file if needed:
```bash
nano compose.yaml
```
or start the container with default settings:
```bash
docker compose up -d
```
To execute server commands, attach to the container:
```bash
docker attach vsserver
```

---

### 💡 Tips

* To save and shutdown, type `/stop` and hit enter.
* Use `CTRL+P CTRL+Q` to detach terminal from the server.
* Server logs can be viewed with `docker logs vsserver`.