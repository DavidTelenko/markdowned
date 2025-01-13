Here are the basic `pacman` commands for managing packages:

### **Install a Package**

```bash
sudo pacman -S <package_name>
```

### **Update Packages**

- **Update the system (sync all packages):**

  ```bash
  sudo pacman -Syu
  ```

- **Force a complete system update (including dependencies):**
  ```bash
  sudo pacman -Syyu
  ```

### **Delete a Package**

- **Remove a package:**

  ```bash
  sudo pacman -R <package_name>
  ```

- **Remove a package along with its unused dependencies:**
  ```bash
  sudo pacman -Rns <package_name>
  ```

### **List Packages**

- **List all installed packages:**

  ```bash
  pacman -Q
  ```

- **Search for a specific package in the repo:**

  ```bash
  pacman -Ss <keyword>
  ```

- **Check if a package is installed:**
  ```bash
  pacman -Q <package_name>
  ```

Let me know if you need more details on any of these commands!
