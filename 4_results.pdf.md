---
title: "Results"
format: 
    html:
        csl: utils/apa.csl
    pdf:
        csl: utils/apa.csl
bibliography: utils/references.bib
jupyter: python3
---







## Classification table + plots + real maps



::: {.panel-tabset}

## Diagram

<div style='display: flex; gap: 1em; justify-content: center;'>
<img src='img/merger_diagram.png' style='width: 100%; max-width: 500px;' alt='merger diagram'/>
</div>

## Static map

<div style='display: flex; gap: 1em; justify-content: center;'>
<div style='flex: 1; text-align: center;'>
<img src='img/merger_before.jpg' style='width: 100%; max-width: 500px;' alt='Before Map'/>
<p><strong>Before</strong></p>
</div>
<div style='flex: 1; text-align: center;'>
<img src='img/merger_after.jpg' style='width: 100%; max-width: 500px;' alt='After Map'/>
<p><strong>After</strong></p>
</div>
</div>


## Interactive map

::: {.cell execution_count=2}

::: {.cell-output .cell-output-display execution_count=2}
```
<folium.folium.Map at 0x12763d310>
```
:::
:::


:::





## Citations

This is a sentence with a footnote[^1].

Here’s another sentence with a longer footnote explanation[^long-note].

[^1]: This is a simple footnote.

[^long-note]: This is a longer footnote with more detail. You can write multiple lines here, and it will render properly at the bottom of the page or document, depending on the output format.


## Bibliography

[^1]: This is a direct quote in APA format.

Later, we will explore how this idea has evolved over time [@smith2020democracy, p. 42].

# References

