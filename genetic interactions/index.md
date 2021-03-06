---
title: Screen Data
nav:
  order: 4
  tooltip: Code and Datasets
---
{% include section.html %}
# <i class="fas fa-microscope"></i> Code and Data
An interactive tool to search the screen data can found at the bottom of the page or [here](#-genetic-interactions-determined-by-spa-screens).
<br> All scripts utilize the R package `screenmill` which you can find [here](https://https://github.com/EricEdwardBryant/screenmill).


{% if site.data.code %}

### Code
{% for script in site.data.code %}
* [{{script.name}}]({{site.url}}/{{site.baseurl}}/code/{{script.name}})
  \| {{script.desc}}
{% endfor %}
{% endif %}

*****************

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

{% include section.html %}
# <i class="fas fa-table"></i> Genetic Interactions Determined by SPA Screens

Below is a tool to find a lists of hits for each SPA screen we conducted. You may sort the list by interaction type (SDL or Suppressor).  This list is incomplete with only the nsp10-nsp14 queries and will be updated with results from previous screens. **_SDL hits were calculated with a Z-score of ≤ -2 and suppressor hits were calculated with a Z score ≥ 1.5._**

{% comment %}
{% include search-box.html %}
{% include search-info.html %}
{% endcomment %}

{% include genetic-interactions-list.html data="SPA_screens" component='spa' %}
