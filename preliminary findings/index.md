---
title: Preliminary Findings
nav:
  order: 3
  tooltip: Current work
---

# Preliminary Findings
## Reduced Growth Resulting From Nsp14 Methyltransferase Domain
The effect of expressing nsp14 and both of its catalytic domains on strain growth was determined by comparison to controls containing the empty vector backbone (Fig. 5). To determine which Nsp14 domain is responsible for the slow growth seen in Fig. 5, separation of function mutants were constructed by inducing two well-studied point mutations through site-directed mutagenesis{% include superscript.html text='[17](https://doi.org/10.1073/pnas.0808790106)'%}. The mutation of the ExoN domain conferred a growth defect statically identical to nsp14 WT expression, whereas this defect was absent while expressing the methyltransferase domain mutant.

{%
  include figure.html
  image="images/figure-5.png"
  bold_caption="Figure 5. Nsp14 methyltransferase domain is responsible for growth defect."
  caption="Growth curves are shown for wild-type strains grown at 30°C expressing either Nsp14, Nsp14 without a functional ExoN domain, Nsp14 without a functional MT domain, or an empty vector control."
  width = '50%'
%}

Structural and functional analysis of the viral replisome shows that nsp10 binds to the nsp14 ExoN domain to stabilize and stimulate its activity (see [background](background)). The nsp10-nsp14 complex assists in viral genome replication, so screening with expression of both proteins through a dual expression vector is necessary to better resemble what occurs during infection. Interestingly, co-expression of these two proteins attenuates the growth defect exhibited with expression of nsp14 alone (Fig. 6). This attenuation in growth allowed us to perform an SDL screen. We introduced nsp14 and its two mutants coupled with nsp10 into the nonessential mutant library. Again we find that the methyltransferase domain is responsible for the SDL interactions shown in Fig. 7. The two genetic clusters from the enriched regions in Fig. 7A and Fig. 7B correspond to mitochondrial and kinetochore-microtubule binding and histone proteins. Specifically, HHF1 and HHF2 encode for the subunits of H4, which is a core component of the nucleosome. These two hits suggest that the methyltransferase domain of nsp14 could be upregulating transcription of certain regions of the genome; however, further evidence of nsp14 methylation activity in yeast is needed to support this hypothesis.

{%
  include figure.html
  image="images/figure-6.png"
  bold_caption="Figure 6. Nsp10 and Nsp14 Co-expression attenuates growth defect."
  caption="Growth curves are shown for wild-type strains grown at 30°C expressing either Nsp14, Nsp10 and Nsp14, or Nsp10 in combination with the two functional mutants. Expression of Nsp10 with Nsp14 attentuates growth defect in Nsp14 WT, ExoN and MT mutants, with the co-expressed MT mutant experiencing no significant growth defect."
  width = '50%'
%}

{%
  include figure.html
  image="images/figure-7.png"
  bold_caption="Figure 7. Methyltransferase domain leads to SDL hits seen in genetic landscape analysis of nsp10-nsp14 dual expression."
  caption="**A-B.** MATa library screen consisting of ~4800 single nonessential gene mutations coexpressed with either nsp10-nsp14 wildtype, nsp10-nsp14 exonuclease mutation, or nsp10-nsp14 methyltransferase mutation. tSNE plots are organized through genetic interactions such that genes in the same pathway are closer to proximity with each other and redder heat map intensity indicates a higher number of hits per area. Existence of the methyltransferase domain leads to enrichment of two gene clusters (**A** and **B**), while the absence of a functional methyltransferase domain results in the loss of SDL interactions. "
%}

{% include section.html %}
## Depletion of S-adenosyl Methionine Pools Rescues Nsp14 MT Induced Growth Defect



{%
  include figure.html
  image="images/figure-8.png"
  bold_caption="Figure 8. Methyltransferase domain leads to SDL hits seen in genetic landscape analysis of nsp10-nsp14 dual expression."
  caption="**A-B.** MATa library screen consisting of ~4800 single nonessential gene mutations coexpressed with either nsp10-nsp14 wildtype, nsp10-nsp14 exonuclease mutation, or nsp10-nsp14 methyltransferase mutation. tSNE plots are organized through genetic interactions such that genes in the same pathway are closer to proximity with each other and redder heat map intensity indicates a higher number of hits per area. Existence of the methyltransferase domain leads to enrichment of two gene clusters (**A** and **B**), while the absence of a functional methyltransferase domain results in the loss of SDL interactions (note: the heat map intensities are normalized to each individual tSNE plot). "
%}

{% include section.html %}
## Projected and Encountered Difficulties
