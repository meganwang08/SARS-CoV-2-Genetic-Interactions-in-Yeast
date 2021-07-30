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
  caption="Growth curves are shown for wildtype strains grown at 30°C expressing either Nsp14, Nsp14 without a functional ExoN domain, Nsp14 without a functional MT domain, or an empty vector control."
  width = '50%'
%}

Structural and functional analysis of the viral replisome shows that nsp10 binds to the nsp14 ExoN domain to stabilize and stimulate its activity (see [background](background)). The nsp10-nsp14 complex assists in viral genome replication, so screening with expression of both proteins through a dual expression vector is necessary to better resemble what occurs during infection. Interestingly, co-expression of these two proteins attenuates the growth defect exhibited with expression of nsp14 alone (Fig. 6). This attenuation in growth allowed us to perform an SDL screen. We introduced nsp14 and its two mutants coupled with nsp10 into the nonessential mutant library. Again we find that the methyltransferase domain is responsible for the SDL interactions shown in Fig. 7. The two genetic clusters from the enriched regions in Fig. 7A and Fig. 7B correspond to mitochondrial and kinetochore-microtubule binding and histone proteins. Specifically, HHF1 and HHF2 encode for the subunits of H4, which is a core component of the nucleosome. These two hits suggest that the methyltransferase domain of nsp14 could be upregulating transcription of certain regions of the genome; however, further evidence of nsp14 methylation activity in yeast is needed to support this hypothesis.

{%
  include figure.html
  image="images/figure-6.png"
  bold_caption="Figure 6. Nsp10 and Nsp14 Co-expression attenuates growth defect."
  caption="Growth curves are shown for wildtype strains grown at 30°C expressing either Nsp14, Nsp10 and Nsp14, or Nsp10 in combination with the two functional mutants. Expression of Nsp10 with Nsp14 attenuates growth defect in Nsp14 WT, ExoN and MT mutants, with the co-expressed MT mutant experiencing no significant growth defect."
  width = '50%'
%}

{%
  include figure.html
  image="images/figure-7.png"
  bold_caption="Figure 7. Methyltransferase domain leads to SDL hits seen in genetic landscape analysis of nsp10-nsp14 dual expression."
  caption="**A-B.** MAT<i>a</i> library screen consisting of ~4800 single nonessential gene mutations coexpressed with either nsp10-nsp14 wildtype, nsp10-nsp14 exonuclease mutation, or nsp10-nsp14 methyltransferase mutation. tSNE plots are organized through genetic interactions such that genes in the same pathway are closer to proximity with each other and redder heat map intensity indicates a higher number of hits per area. Existence of the methyltransferase domain leads to enrichment of two gene clusters (**A** and **B**), while the absence of a functional methyltransferase domain results in the loss of SDL interactions. "
%}

{% include section.html %}
## Depletion of S-adenosyl Methionine Pools Rescues Nsp14 Methyltransferase Domain Induced Growth Defect
Nsp14 is a SAM dependent methyltransferase, so depletion of SAM levels in the cell should affect Nsp14 methylation activity and present itself as attenuation of the Nsp14 growth defect in yeast. To alter SAM pools, a brief understanding of the SAM biosynethesis and recycling pathway is warranted (Fig 8, [18](https://doi.org/10.1007/s00253-012-4261-3)). SAM synthesis and recycling in the cell starts with methionine metabolism as the formation of SAM is catalyzed by methionine adenosyltransferase (Sam1, Sam2). After SAM is utilized as a methyl donor, it is converted into S-adenosyl homocysteine (SAH). SAH is then processed into adenosine and homocysteine (Hcy) facilitated by reversible SAH hydrolase (Sah1). The adenosine and Hcy are recycled into AMP and methionine by adenosine kinase (Ado1) and methionine synthase (Met6) respectively.

Ado1 deletions strains are shown to have higher intercellular concentrations of adenosine. Excess adenosine reverses the reaction driven by Sah1 - leading to an accumulation of SAH and a decrease in SAM levels as the substrates in the recycling pathway exist as SAH {% include superscript.html text='[19](https://doi.org/10.1016/j.bbadis.2012.09.007)'%}. Coupled with the effect of reducing SAM concentrations, SAH also competitively inhibits methyltransferases. Due to its structural similarities to SAM, SAH can bind reversibly with methyltransferases to temporarily block the catalytic site and slow activity {% include superscript.html text='[20](https://doi.org/10.1016/j.tips.2004.04.004)'%}.

The growth defect induced by Nsp14 methyltransferase activity was tested by leveraging increased levels of SAH resulting from ADO1 deletion (Fig. 8). Overexpression of Nsp14 in the ΔADO1 strain leads to similar growth as the empty vector control while ΔHIS3 ADO1+ control strains with WT Nsp14 cause a significant growth defect. Nsp14 MT mutants also exhibit no growth defect in the ΔADO1 strains but show a slight growth defect in the ΔHIS3 ADO1+ strain. These results provide more evidence that Nsp14 is exhibiting methyltransferase activity in our model system.

{%
  include figure.html
  image="images/figure-8.png"
  bold_caption="Figure 8. Overexpression of Nsp14 in Ado1 deletion strains suppresses Nsp14 induced growth defect."
  caption="**A.** Schematic illustration of the metabolic pathways involved in methionine biosynthesis in S. cerevisiae. **B.** Growth curves are shown for wildtype strains grown at 30°C expressing Nsp14 in ΔADO1 or ΔHIS3 ADO1+ strains. Increased levels of SAH reduce the growth defect caused by Nsp14 methylation activity. The exonuclease mutant (data not shown) presented with no significant difference in growth between the two strains."
%}

{% include section.html %}
## ABD1 and RNMT Methyltransferases Lead to a Growth Defect
To further explore the mechanisms leading to the growth defect from Nsp14, I overexpressed ABD1 (Yeast N7 methyltransferase) and RNMT (Human N7 methyltransferase) in the same system. Overexpression of both eukaryotic methyltransferases resulted in a lesser growth defect than Nsp14, but both still produce significant decreases in growth (Fig. 9b). These results suggest that excess capping methylation in yeast causes a decrease in growth possibly due to low mRNA turnover rates. We can support the hypothesis of excess methylation through qPCR of total mRNA in cells overexpressing N7 methyltransferases compared to a WT control. Furthermore, I will conduct site-directed mutagenesis on the catalytic methyltransferase domains from both ABD1 and RNMT for further evidence of the MT domain contributing to the observed growth defect. Currently, I am constructing vectors expressing ABD1, RNMT, and Nsp14 with pABD1 and pTPI1 promoters to perform complementation experiments with an ABD1 null mutant strain. Additionally, I am performing a nonessential screen with ABD1, RNMT, and Nsp10/Nsp14 to determine if all three N7 methyltransferases affect the cells through the same pathways.

{%
  include figure.html
  image="images/figure-9.png"
  bold_caption="Figure 9. Overexpression of Abd1 and RNMT leads to growth defect."
  caption="**A.** Alignment of Abd1, RNMT, and Nsp14 (methyltransferase domain) methyltransferases. The darker shades of purple indicate a higher percent identity and red asterisks represent the conserved SAM binding domains found in coronavirus methyltransferases. **B.** Growth curves are shown for wildtype strains grown at 30°C overexpressing Abd1 and RNMT in ΔHIS3 strains. Increased levels of both N7 methyltransferases leads to a growth defect in yeast."
%}

{% include section.html %}
## Encountered Difficulties
In my exploration of the mitochondrial hits from the Nsp10-Nsp14 SPA screen, I have been expressing Nsp14 under a copper promoter to validate those hits. Previously from western blot and growth curve data, I have found that my copper vector cannot induce Nsp14 expression under all of the copper concentrations I have tested. Next, I tested a positive control (TOP1) that is controlled under the same copper promoter and leads to a growth defect when overexpressed and found that on the same plates as the Nsp14 construct, the TOP1 vector led to a growth defect while the Nsp14 vector did not. I resequenced my copper Nsp14 vectors and the sequencing came back correct, so I am proceeding with cloning TOP1 into the same copper backbone I used for Nsp14.
