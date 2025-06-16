# LoQoG Codebook

This project uses [Quarto](https://quarto.org) to render documents written in Python (either `.qmd` or `.ipynb`). It was developed on **macOS** but is fully cross-platform. **Note:** Python virtual environments are not portable across operating systems, so each collaborator must create their own environment—especially since this was built on a Mac and contributors may work on Windows.

---

## 1. Install Quarto

1. Go to the Quarto download page:  
   https://quarto.org/docs/get-started/
2. Download and run the installer for your OS (Windows, macOS, or Linux).
3. After installation, verify Quarto is on your `PATH` by running:

   ```bash
   quarto --version

   ```

## 2. Create Your Own Virtual Environment

Because this project was built on macOS and Python environments contain OS-specific binaries, each person must create a local environment on their machine.

On macOS / Linux

```bash
python3 -m venv env
source env/bin/activate
```

On Windows (PowerShell)

```bash
python -m venv env
.\env\Scripts\activate
```

After activation, your prompt should show (env) (or whatever name you chose). Just don't overwrite mine: `myenv`

## 4. Install Project Dependencies

```bash
pip install -r requirements.txt
```

## 5. Render the Project

```bash
quarto render
```

## 6. Preview with Live Reload

```bash
quarto preview
```
