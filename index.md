---
title: Home
---
# Welcome!
This website was created to organize my research on the genetic interactions of SARS-CoV-2 in yeast. My project is conducted in [Rodney Rothstein's](https://systemsbiology.columbia.edu/faculty/rodney-rothstein) lab at Columbia University. Amidst the Covid-19 pandemic, our group decided to study SARS-CoV-2 through the lens of geneticists. We have leveraged pre-existing pipelines designed and [published](https://doi.org/10.1101/gr.109033.110) by our lab to elucidate interactions between viral proteins and the pathways within yeast. Here, you can learn more about the background, approach, preliminary findings and future directions of my project and additionally explore the [raw data](genetic%20interactions/#-genetic-interactions-determined-by-spa-screens) from our SPA library screens.

{% include section.html %}
# Background/Motivation
The COVID-19 pandemic, which is caused by Severe Acute Respiratory Syndrome Coronavirus 2 (SARS-CoV-2), has infected over 112 million people worldwide, led to the death of more than one million individuals, and caused worldwide social and economic disruption {% include superscript.html text='[1](https://www.worldometers.info/coronavirus/),'%} {% include superscript.html text='[2](https://doi.org/10.1016/j.ijsu.2020.04.018)'%}. Coronaviruses are positive-sense RNA viruses comprised of two overlapping open reading frames (Orf1a and Orf1b) that encode the non-structural proteins (nsp), many of which facilitate viral genome replication (Fig. 1). The last third of the RNA genome encodes the viral structural proteins: spike, envelope, membrane and nucleocapsid{% include superscript.html text='[3](https://www.worldcat.org/title/fields-virology/oclc/825740706)'%}. Further knowledge about the interactions between SARS-CoV-2 proteins and the endogenous proteins of infected hosts are required to develop treatments.
In order to efficiently screen for genetic interactions, we decided to leverage budding yeast (Saccharomyces cerevisiae) as a model system. Many positive sense RNA viruses have been shown to replicate in S. cerevisiae, thus allowing the study of viral activity{% include superscript.html text='[4](https://doi.org/10.15698/mic2017.10.592)'%}. In addition to the highly conserved nature of fundamental cellular functions between yeasts and higher eukaryotes, yeasts strains are easier to maintain, have a shorter doubling time, and smaller genomes that facilitate genome-wide analysis of virologic interactions.
In the context of discovering genetic interactions, the Rothstein group focuses on synthetic dosage lethality (SDL), which occurs when the over-expression of a gene in combination with a viable mutant strain leads to cell death{% include superscript.html text='[5](https://doi.org/10.1534/genetics.116.190231)'%}. Exploratory screenings of SDL interactions in yeast through the introduction of SARS-CoV-2 proteins will show perturbed genetic pathways, potentially leading to identification of novel genetic interactions which can be targeted for Covid-19 therapeutics. Furthermore, the growth reduction attributed to over-expression of specific SARS-CoV-2 proteins can be leveraged as a readout in yeast-based drug screens.  This pipeline would not rely on previous knowledge of a viral protein's function and be more rapid than current drug screening methods. In a previous study, yeast was used as a vector in a novel screen for antiviral SARS-CoV-1 compounds{% include superscript.html text='[6](https://doi.org/10.1371/journal.pone.0028479)'%}.

{% include read_more.html %}

{%
  include figure.html
  image="images/figure-1.jpeg"
  bold_caption="Figure 1. Map of SARS-CoV-2 Genome"
%}

{:.center}

{% include section.html full=true %}

{% include banner.html image="images/genetic-interaction-banner.jpeg" %}

{% include section.html %}
# Explore More!

{% capture text %}
After taking a global approach by screening all viral proteins, we found interesting interactions between functional mutants of Nsp14 and yeast pathways. Thus, our preliminary screens have lead use to focus our work on Nsp14 and
background relative to this protein can be found in this section of the website .

[See our preliminary data &nbsp;→](preliminary findings)
{:.center}
{% endcapture %}

{%
  include feature.html
  image="images/figure-5.png"
  link="preliminary data"
  headline="Preliminary Findings"
  text=text
%}

{% capture text %}
Compilation of all the hits collected from our SPA screens for each viral protein. Additionally, files containing the raw interaction data processed by ScreenMill can be found at the bottom of the page.

[Browse our screen data &nbsp;→](genetic interactions)
{:.center}
{% endcapture %}

{%
  include feature.html
  image="images/tSNE.png"
  link="genetic interactions"
  headline="SPA Screen Data"
  text=text
%}

{% capture text %}
Learn more about the researchers working on the project. Here, you can find bios and contact information for each of the team members.

[Meet the contributors &nbsp;→](contributors)
{:.center}
{% endcapture %}

{%
  include feature.html
  image="images/lab-photo.jpeg"
  link="contributors"
  headline="Contributors"
  text=text
%}
