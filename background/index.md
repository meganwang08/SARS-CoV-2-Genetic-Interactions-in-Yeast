---
title: Background
nav:
  order: 1
  tooltip: Detailed background info
---

# Proofreading and Capping Mechanisms
Nsp1-10, 14, and the structural proteins have all been screened through SPA. From the results of the initial screens, I have decided to focus on Nsp14. Nsp14 has two catalytic sites: a proofreading exonuclease (ExoN) domain and a guanine-N7-methyltransferase (MT) domain{% include superscript.html text='[10](https://doi.org/10.1128/JVI.01246-20),'%} {% include superscript.html text='[11](https://doi.org/10.1073/pnas.1508686112)'%}. The 3’ to 5’ ExoN domain proofreads and processes the nascent RNA strand from the SARS-CoV-2 replisome, which leads to resistance to certain drugs made of replication terminating nucleic acid analogs as it can excise incorrect nucleotides. The MT domain is responsible for N7 methylation in the final step of 5’ RNA capping. Formation of the cap-1 structure at the 5′ end of viral mRNA assists in translation and evading host defense{% include superscript.html text='[11](https://doi.org/10.1073/pnas.1508686112)'%}.

The proofreading and capping mechanisms occur at the nascent RNA strand leaving Nsp12 (RNA dependent RNA polymerase) which functions to elongate the viral RNA strand. The nascent RNA strand is first processed by the ExoN domain of Nsp14 for proofreading. Then, the strand undergoes the capping mechanism beginning at Nsp13 RTPase which removes the γ-phosphate group at the 5’end. Subsequently, an unidentified GTase facilitates the transfer of GMP to the 5'-diphosphate of the RNA strand. Then, Nsp14 transfers a methyl group to the N7 position of the guanosine forming cap-0, and finally Nsp16 catalyzes the addition of a methyl group to the ribose 2'-O position of the first transcribed nucleotide forming cap-1. Note both Nsp14 and Nsp16 both depend on endogenous S-Adenosyl Methionine (SAM) as their methyl donor.

While Nsp10 does not catalyze any reactions in the two previously mentioned processes, it functions as an allosteric activator for Nsp14 and Nsp16 and as a molecular connector to join the three catalytic sites (Nsp14 ExoN domain, Nsp14 MT domain and Nsp16) together in space (Fig. 2{% include superscript.html text='[12](https://doi.org/10.3390/cells9051267)'%}). The overall replication complex is further connected through interactions between Nsp12 and the Nsp14 ExoN domain along with binding sites between Nsp12 and Nsp13: although these interactions have not been fully characterized.

{%
  include figure.html
  image="images/figure-2.png"
  bold_caption="Figure 2. Structural depiction of the replication complex."
  caption="A nascent RNA strand is first polymerized by Nsp12, proofread by Nsp14, dephosphorylated by Nsp13 and then capped by GTase, Nsp14 and finally Nsp16. Nsp10 acts as a molecular connector joining the proofreading and capping activities."
  width = '70%'
%}

{:.center}

{% include section.html %}

# Nsp14 Nonfunctional Mutants in Betacoronaviruses
The two catalytic sites of Nsp14 have been predicted from bioinformatic analyses{% include superscript.html text='[13](https://doi.org/10.1073/pnas.0808790106)'%}. The ExoN domain resides closer to the N terminus and the MT domain is found closer to the C terminus. Separation of function mutants have been conducted in the conserved DEDD ExoN motif{% include superscript.html text='[14](https://www.sciencedirect.com/science/article/pii/S0022283603008659?via%3Dihub)'%} and in the SAM binding site DxE (AA 331-333) of the MT domain. Separation of function mutations have been tested for different Betacoronaviruses in vivo{% include superscript.html text='[14](https://www.sciencedirect.com/science/article/pii/S0022283603008659?via%3Dihub),'%}{% include superscript.html text='[15](https://doi.org/10.1128/JVI.00542-16)'%} but notably there have been no published studies measuring viral titer in SARS-CoV-2 Nsp14 mutants. 
