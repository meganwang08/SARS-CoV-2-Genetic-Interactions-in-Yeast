---
title: Home
---

# Background/Motivation
The COVID-19 pandemic, which is caused by severe acute respiratory syndrome coronavirus 2 (SARS-CoV-2), has infected over 112 million people worldwide, led to the death of more than one million individuals, and caused worldwide social and economic disruption {% include superscript.html text='[1](https://www.worldometers.info/coronavirus/),'%} {% include superscript.html text='[2](https://doi.org/10.1016/j.ijsu.2020.04.018)'%}. Coronaviruses are positive-sense RNA viruses comprised of two overlapping open reading frames (Orf1a and Orf1b) that encode the non-structural proteins (nsp), many of which facilitate viral genome replication (Fig. 1). The last third of the RNA genome encodes the viral structural proteins: spike, envelope, membrane and nucleocapsid{% include superscript.html text='[3](https://www.worldcat.org/title/fields-virology/oclc/825740706)'%}. Further knowledge about the interactions between SARS-CoV-2 proteins and the endogenous proteins of infected hosts are required to develop treatments.
In order to efficiently screen for genetic interactions, we decided to leverage budding yeast (Saccharomyces cerevisiae) as a model system. Many positive sense RNA viruses have been shown to replicate in S. cerevisiae, thus allowing the study of viral activity{% include superscript.html text='[4](https://doi.org/10.15698/mic2017.10.592)'%}. In addition to the highly conserved nature of fundamental cellular functions between yeasts and higher eukaryotes, yeasts strains are easier to maintain, have a shorter doubling time, and smaller genomes that facilitate genome-wide analysis of virologic interactions.
In the context of discovering genetic interactions, the Rothstein group focuses on synthetic dosage lethality (SDL), which occurs when the over-expression of a gene in combination with a viable mutant strain leads to cell death{% include superscript.html text='[5](https://doi.org/10.1534/genetics.116.190231)'%}. Exploratory screenings of SDL interactions in yeast through the introduction of SARS-CoV-2 proteins will show perturbed genetic pathways, potentially leading to identification of novel genetic interactions which can be targeted for Covid-19 therapeutics. Furthermore, the growth reduction attributed to over-expression of specific SARS-CoV-2 proteins can be leveraged as a readout in yeast-based drug screens.  This pipeline would not rely on previous knowledge of a viral protein's function and be more rapid than current drug screening methods. Indeed, yeast was used as a vector in a novel screen for antiviral SARS-CoV-1 compounds{% include superscript.html text='[6](https://doi.org/10.1371/journal.pone.0028479)'%}.

{%
  include figure.html
  image="images/figure-1.jpeg"
  bold_caption="Figure 1. Map of SARS-CoV-2 Genome"
%}

{:.center}

{% include section.html full=true %}

{% include banner.html image="images/banner.jpg" %}

{% include section.html %}

# Highlights

{% capture text %}
Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.

[See what we've published &nbsp;→](research)
{:.center}
{% endcapture %}

{%
  include feature.html
  image="images/photo.jpg"
  link="research"
  headline="Our Research"
  text=text
%}

{% capture text %}
Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.
Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.

[See our resources &nbsp;→](resources)
{:.center}
{% endcapture %}

{%
  include feature.html
  image="images/photo.jpg"
  link="resources"
  headline="Our Resources"
  text=text
%}

{% capture text %}
Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.

[Meet our team &nbsp;→](team)
{:.center}
{% endcapture %}

{%
  include feature.html
  image="images/photo.jpg"
  link="team"
  headline="Our Team"
  text=text
%}
