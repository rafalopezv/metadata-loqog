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

## 7. Geo files

- Add a separated geojson file per example at `geo_files` folder. Files need to come from the `input/clean_geo`.

## 8. Plotting static maps

- For static maps I suggest to use ggplot in R
- There is a folder named `r_static_plots` where I placed the code example `example.R` that produces the `img/merger_after.jpg` and the `img/merger_before.jpg`
- Add the resulting plots in the same `img` folder

## 8. Plotting interactive maps

- Probably wraping the example provided at `4_results.qmd` under the comment `This is the interactive plot example` is a better approach. I leave that to you

## 9. Testing interactive and static plots

- You can test your code works at the `plaground.qmd` file
