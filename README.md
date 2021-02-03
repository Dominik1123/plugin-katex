Math typesetting using KaTex
==============

Use it for your book, by adding to your book.json:

```
{
    "plugins": ["katex@git+https://github.com/Dominik1123/plugin-katex.git"]
}
```

Alternatively a specific Katex version can be specified by targeting the corresponding branch:

```
{
    "plugins": ["katex@git+https://github.com/Dominik1123/plugin-katex.git#katex-<major>.<minor>"]
}
```

where `<major>.<minor>` should be set to the desired version, so for example `0.10` (this will always use the latest micro version).

Then run `gitbook install`.

## Usage

```
Inline math: $$\int_{-\infty}^\infty g(x) dx$$


Block math:

$$
\int_{-\infty}^\infty g(x) dx
$$

Or using the templating syntax:

{% math %}\int_{-\infty}^\infty g(x) dx{% endblock %}
```


### Comparison with [MathJax](https://github.com/GitbookIO/plugin-mathjax)

- Faster

