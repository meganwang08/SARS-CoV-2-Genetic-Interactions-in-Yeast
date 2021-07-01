---
title: Approach
nav:
  order: 2
  tooltip: Methods
---

{% include section.html %}

# Approach
To screen for SDL interactions, the Rothstein group developed Selective Ploidy Ablation (SPA, Fig. 3) {% include superscript.html text='[7](https://doi.org/10.1101/gr.109033.110)'%}. SPA involves a universal donor strain consisting of an over-expression plasmid and 16 modified chromosomes {% include superscript.html text='[8](https://doi.org/10.1534/genetics.108.087999)'%} destined for destabilization in diploid cells. After mating this donor strain with a library consisting of either single nonessential gene mutants or temperature sensitive alleles of essential genes, all of the chromosomes of the donor genome are selected against leaving only the over-expression plasmid and the recipient genome consisting of a single mutation ([Fig. 1A](../#backgroundmotivation)). Mating and media transferring protocols are assisted via robotic pinning and growth of the recipient strains is measured through quantitating digital images of colony growth ([Fig. 1B](../#backgroundmotivation)). The ScreenMill R package allows the quantification of colony sizes by utilizing image analyzing algorithms, colony size normalization, and manual input. After the review process, ScreenMill reports of screen results and relevant statistical information {% include superscript.html text='[9](https://doi.org/10.1186/1471-2105-11-353)'%}. The coupling of SPA, ScreenMill, and the expression of SARS-CoV-2 proteins allows us to screen for SDL interactions. Strains of mutants that show an SDL interaction will be designated as hits and those will be explored further to determine the pathway and mechanism of action caused by viral proteins. The Rothstein laboratory is collaborating with virologist [Vincent Racaniello’s](https://microbiology.columbia.edu/faculty-vincent-racaniello) group, which will verify SPA-discovered yeast pathways in mammalian cell lines using homologous genes.  

{%
  include figure.html
  image="images/figure-3.png"
  bold_caption="Figure 3. SDL interaction screens using SPA."
  caption="A. Mating of donor (black) strain with recipient (white) strain and subsequent donor chromosome destabilization. B. Plasmid transfer occurs through high-throughput robot pinning and 384 mutants per plate in quadruplicates overexpressing gene Y. C. Bottom magnification (over-expression of gene Y) shows an SDL for gene B as there is less growth compared to top magnification (no expression of gene Y)."
  width="400px"
%}
