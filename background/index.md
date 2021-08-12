---
title: Background
nav:
  order: 1
  tooltip: Detailed background info
---

# Proofreading and Capping Mechanisms
Nsp1-10, 14, and the structural proteins have all been screened through SPA. From the results of the initial screens, I have decided to focus on nsp14. Nsp14 has two catalytic sites: a proofreading exonuclease (ExoN) domain and a guanine-N7-methyltransferase (MT) domain{% include superscript.html text='[10](https://doi.org/10.1128/JVI.01246-20),'%} {% include superscript.html text='[11](https://doi.org/10.1073/pnas.1508686112)'%}. The 3’ to 5’ ExoN domain proofreads and processes the nascent RNA strand from the SARS-CoV-2 replisome, which leads to resistance to certain drugs made of replication terminating nucleic acid analogs as it can excise incorrect nucleotides. The MT domain is responsible for N7 methylation in the final step of 5’ RNA capping. Formation of the cap-1 structure at the 5′ end of viral mRNA assists in translation and evading host defense{% include superscript.html text='[11](https://doi.org/10.1073/pnas.1508686112)'%}.

The proofreading and capping mechanisms occur at the nascent RNA strand leaving nsp12 (RNA dependent RNA polymerase) which functions to elongate the viral RNA strand. The nascent RNA strand is first processed by the ExoN domain of nsp14 for proofreading. Then, the strand undergoes the capping mechanism beginning at nsp13 RTPase which removes the γ-phosphate group at the 5’end. Subsequently, an unidentified GTase facilitates the transfer of GMP to the 5'-diphosphate of the RNA strand. Then, nsp14 transfers a methyl group to the N7 position of the guanosine forming cap-0, and finally nsp16 catalyzes the addition of a methyl group to the ribose 2'-O position of the first transcribed nucleotide forming cap-1. Note both nsp14 and nsp16 both depend on endogenous S-Adenosyl Methionine (SAM) as their methyl donor.

While nsp10 does not catalyze any reactions in the two previously mentioned processes, it functions as an allosteric activator for nsp14 and nsp16 and as a molecular connector to join the three catalytic sites (nsp14 ExoN domain, nsp14 MT domain and nsp16) together in space (Fig. 2{% include superscript.html text='[12](https://doi.org/10.3390/cells9051267)'%}). The overall replication complex is further connected through interactions between nsp12 and the nsp14 ExoN domain along with binding sites between  nsp12 and nsp13: although these interactions have not been fully characterized.

{%
  include figure.html
  image="images/figure-2.png"
  bold_caption="Figure 2. Structural depiction of the replication complex."
  caption="A nascent RNA strand is first polymerized by Nsp12, proofread by nsp14, dephosphorylated by nsp13 and then capped by GTase, nsp14 and finally nsp16. Nsp10 acts as a molecular connector joining the proofreading and capping activities."
  width = '70%'
%}

{:.center}

{% include section.html %}

# nsp14 Functional Mutants in Betacoronaviruses
The two catalytic sites of nsp14 have been predicted from bioinformatic analyses{% include superscript.html text='[13](https://doi.org/10.1073/pnas.0808790106)'%}. The ExoN domain resides closer to the N terminus and the MT domain is found closer to the C terminus. Separation of function mutantations have been conducted in the conserved DEDD ExoN motif{% include superscript.html text='[14](https://www.sciencedirect.com/science/article/pii/S0022283603008659?via%3Dihub)'%} and in the SAM binding site DxE (AA 331-333) of the MT domain. Separation of function mutations have been tested for different Betacoronaviruses in vivo{% include superscript.html text='[14](https://www.sciencedirect.com/science/article/pii/S0022283603008659?via%3Dihub),'%}{% include superscript.html text='[15](https://doi.org/10.1128/JVI.00542-16)'%} but notably, there have been no published studies measuring viral titer in SARS-CoV-2 nsp14 mutants. To determine if these separation of function mutations altered viral replication in other Betacoronaviruses, the growth kinetics of Vero cells infected with SARS-CoV-1 was measured to compare ExoN mutant and wildtype variants (Fig. 3a., [16](https://doi.org/10.1371/journal.ppat.1000896)), and viral titer was measured in Murine delayed brain tumor (DBT) cells infected with Murine Hepatitis Virus (MHV) nsp14 MT mutants (Fig. 3b., [15](https://doi.org/10.1128/JVI.00542-16)).

{%
  include figure.html
  image="images/figure-3.png"
  bold_caption="Figure 3. Replication Kinetics in nsp14 Separation of Function Mutants."
  caption="**a.** Viral titer of Vero cells infected with SARS-CoV-1 at an MOI of 0.1 PFU/cell started to decrease significantly at over 20 hours. **b**. Viral titer of DBT cells infected with MHV at an MOI of 1 PFU/cell started to decrease significantly at over 6 hours "
  width = '70%'
%}

{:.center}
