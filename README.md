# Optimised 3x4 Katakana Chart

![Chart](/compiled/Optimised%203x4%20Katakana%20Chart.png)

[📄 **PDF version**](/compiled/Optimised%203x4%20Katakana%20Chart.pdf)

# Compiling

You will need typst installed. You will need `0.15.0` or higher for variable font support.

```bash
typst compile chart.typ --font-path "fonts" --ignore-system-fonts
```

# Modifying the Chart

Simply modify the `sections` variable inside [chart.typ](/chart.typ). You can move the kanas around and add, remove or rename groups.

If you want to change the number of columns, simply change `num_columns` inside [chart.typ](/chart.typ).

# Fonts Used

- Source Han Sans
- Noto Color Emoji
- Noto Mono
- Noto Sans

The required font files are included in `fonts/`. 
