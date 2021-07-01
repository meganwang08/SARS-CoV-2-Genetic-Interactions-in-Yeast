---
title: Screen Data
nav:
  order: 4
  tooltip: Code and Datasets
---

{% include section.html %}
# <i class="fas fa-table"></i> Genetic Interactions Determined by SPA Screens

Below is a tool to find a lists of hits for each SPA screen we conducted. You may sort the list by interaction type (SDL or suppressor). Code and Raw datasets for screens can found at the bottom of the page or [here](#-code-and-data). This list is incomplete with only the Nsp10-Nsp14 queries and will be updated with results from previous screens. Additionally, I will add in a function to sort and search the table.

{% comment %}
{% include search-box.html %}

{% include search-info.html %}
{% endcomment %}

{% include genetic-interactions-list.html data="SPA_screens" component='spa' %}

{% include section.html %}
# <i class="fas fa-microscope"></i> Code and Data

{% if site.data.code %}
### All scripts utilize the R package `screenmill` which you can find [here](https://https://github.com/EricEdwardBryant/screenmill)

### Code
{% for script in site.data.code %}
* [{{script.name}}]({{site.url}}/{{site.baseurl}}/code/{{script.name}})
  \| {{script.desc}}
{% endfor %}
{% endif %}

{% if site.data.datasets %}
### Datasets
{% for ds in site.data.datasets %}
* [{{ds.name}}]({%if ds.storage !=
  'remote'%}{{site.url}}/{{site.baseurl}}/datasets/{{ds.link}}{%
  else%}{{site.link}}{% endif %}) \| {% if ds.filetype %}(filetype:
  {{ds.filetype}}) {%endif%}{% if ds.filesize %}({{ds.filesize}}){%endif%}{%
  if ds.storage == remote %} DOI: {{ds.DOI}}{%endif%}
{% endfor %}
{% endif %}
