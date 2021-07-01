figure_the_cell_map_tsne <- function(given   = 'data/The-Cell-Map-tSNE-30-20171023.csv',
                                     save_as = 'figures/The-Cell-Map-tSNE.png',
                                     hits    = FALSE,
                                     rad5    = FALSE,
                                     clusters = NULL) {

  # Color Palette
  rf   <- colorRampPalette(rev(c(RColorBrewer::brewer.pal(11,'Spectral'), 'black')))
  r    <- rf(1000)
  size <- 800

  # Heatmap of everything
  tSNE <- read_csv(given, col_types = cols())
  limits <- c(range(tSNE$tSNE1), range(tSNE$tSNE2))
  limits5 <- limits + (5 * sign(limits))

  if (hits) tSNE <- filter(tSNE, MATa_hit | TS_hit)
  if (rad5) tSNE <- filter(tSNE, rad5_hit)

  k <- MASS::kde2d(tSNE$tSNE1, tSNE$tSNE2, n = size, h = 5, lims = limits5)

  png(save_as, width = size, height = size, units = 'px')
  image(k, col = r)
  if (!is.null(clusters)) {
    coords <- read_csv(clusters, col_types = cols())
    within(coords, {
      segments(x0 = xmin, y0 = ymin, x1 = xmax, y1 = ymin, col = 'yellow') # bottom
      segments(x0 = xmin, y0 = ymax, x1 = xmax, y1 = ymax, col = 'yellow') # top
      segments(x0 = xmin, y0 = ymin, x1 = xmin, y1 = ymax, col = 'yellow') # left
      segments(x0 = xmax, y0 = ymin, x1 = xmax, y1 = ymax, col = 'yellow') # right
    })
  }
  dev.off()
}

figure_the_cell_map_tsne_wt_hits_overall <- function(given = 'data/The-Cell-Map-tSNE-30-20171023.csv',
                                              save_as = 'figures/The-Cell-Map-tSNE-WT-SDL-all-hits.pdf') {
  tSNE <-
    read_csv(given, col_types = cols()) %>%
    mutate(
      query_hit = case_when(
        screen_hit %in% c('All', "WT & Exo", "WT & MT", "WT") ~ TRUE,
        TRUE ~ FALSE
      ),
      hit = case_when(
        MATa_hit & query_hit ~ 'SDL hit',
        TRUE ~ 'Not a hit'
      ),
      hit = factor(hit, levels = c('SDL hit', 'Not a hit'))
    )

  tSNE %>%
    ggplot(aes(x = tSNE1, y = tSNE2)) +
    geom_point(aes(color = hit), alpha = 0.5) +
    ggrepel::geom_text_repel(aes(label = gene_name), data = filter(tSNE, hit != 'Not a hit')) +
    coord_fixed() +
    scale_color_manual(values = c('blue', 'grey')) +
    theme_bw() +
    ggsave(save_as, width = 12, height = 12)
}



figure_the_cell_map_tsne_mt_hits_overall <- function(given = 'data/The-Cell-Map-tSNE-30-20171023.csv',
                                                     save_as = 'figures/The-Cell-Map-tSNE-MT-SDL-all-hits.pdf') {
  tSNE <-
    read_csv(given, col_types = cols()) %>%
    mutate(
      query_hit = case_when(
        screen_hit %in% c('All', "Exo & MT", "WT & MT", "MT") ~ TRUE,
        TRUE ~ FALSE
      ),
      hit = case_when(
        MATa_hit & query_hit ~ 'SDL hit',
        TRUE ~ 'Not a hit'
      ),
      hit = factor(hit, levels = c('SDL hit', 'Not a hit'))
    )
  
  tSNE %>%
    ggplot(aes(x = tSNE1, y = tSNE2)) +
    geom_point(aes(color = hit), alpha = 0.5) +
    ggrepel::geom_text_repel(aes(label = gene_name), data = filter(tSNE, hit != 'Not a hit')) +
    coord_fixed() +
    scale_color_manual(values = c('blue', 'grey')) +
    theme_bw() +
    ggsave(save_as, width = 12, height = 12)
}

figure_the_cell_map_tsne_exo_hits_overall <- function(given = 'data/The-Cell-Map-tSNE-30-20171023.csv',
                                                     save_as = 'figures/The-Cell-Map-tSNE-Exo-SDL-all-hits.pdf') {
  tSNE <-
    read_csv(given, col_types = cols()) %>%
    mutate(
      query_hit = case_when(
        screen_hit %in% c('All', "Exo & MT", "WT & Exo", "Exo") ~ TRUE,
        TRUE ~ FALSE
      ),
      hit = case_when(
        MATa_hit & query_hit ~ 'SDL hit',
        TRUE ~ 'Not a hit'
      ),
      hit = factor(hit, levels = c('SDL hit', 'Not a hit'))
    )
  
  tSNE %>%
    ggplot(aes(x = tSNE1, y = tSNE2)) +
    geom_point(aes(color = hit), alpha = 0.5) +
    ggrepel::geom_text_repel(aes(label = gene_name), data = filter(tSNE, hit != 'Not a hit')) +
    coord_fixed() +
    scale_color_manual(values = c('blue', 'grey')) +
    theme_bw() +
    ggsave(save_as, width = 12, height = 12)
}

figure_the_cell_map_tsne_WT_hits_heat <- function(given = 'data/The-Cell-Map-tSNE-30-20171023.csv',
                                              save_as = 'figures/The-Cell-Map-tSNE-WT-SDL-all-hits-norm.png') {
  rf   <- colorRampPalette(rev(c(RColorBrewer::brewer.pal(11,'Spectral'), 'black')))
  r    <- rf(1000)
  size <- 800
  
  tSNE <- read_csv(given, col_types = cols()) %>%
    mutate(
      query_hit = case_when(
        screen_hit %in% c('All', "WT & Exo", "WT & MT", "WT") ~ TRUE,
        TRUE ~ FALSE
        )
      )
  
  total_hits <- nrow(subset(tSNE, MATa_hit))
  wt_hits <- nrow(subset(tSNE, query_hit))
  upper_ind <- (wt_hits/total_hits)*1000

  limits <- c(range(tSNE$tSNE1), range(tSNE$tSNE2))
  limits5 <- limits + (5 * sign(limits))


  k2 <- 
  MASS::kde2d(
    filter(tSNE, query_hit == T)$tSNE1, 
    filter(tSNE, query_hit == T)$tSNE2, 
    n = 200, h = 5, lims = limits5
  )

  png(save_as, width = size, height = size, units = 'px')
  image(k2, col = r[1:upper_ind], xlab = 'tSNE1', ylab = 'tSNE2')
  dev.off()
}

figure_the_cell_map_tsne_MT_hits_heat <- function(given = 'data/The-Cell-Map-tSNE-30-20171023.csv',
                                                  save_as = 'figures/The-Cell-Map-tSNE-MT-SDL-all-hits-norm.png') {
  rf   <- colorRampPalette(rev(c(RColorBrewer::brewer.pal(11,'Spectral'), 'black')))
  r    <- rf(1000)
  size <- 800
  
  tSNE <- read_csv(given, col_types = cols()) %>%
    mutate(
      query_hit = case_when(
        screen_hit %in% c('All', "MT & Exo", "WT & MT", "MT") ~ TRUE,
        TRUE ~ FALSE
      )
    )
  
  total_hits <- nrow(subset(tSNE, MATa_hit))
  wt_hits <- nrow(subset(tSNE, query_hit))
  upper_ind <- (wt_hits/total_hits)*1000
  
  limits <- c(range(tSNE$tSNE1), range(tSNE$tSNE2))
  limits5 <- limits + (5 * sign(limits))
  
  
  k2 <- 
    MASS::kde2d(
      filter(tSNE, query_hit == T)$tSNE1, 
      filter(tSNE, query_hit == T)$tSNE2, 
      n = 200, h = 5, lims = limits5
    )
  
  png(save_as, width = size, height = size, units = 'px')
  image(k2, col = r[1:upper_ind], xlab = 'tSNE1', ylab = 'tSNE2')
  dev.off()
}

figure_the_cell_map_tsne_exo_hits_heat <- function(given = 'data/The-Cell-Map-tSNE-30-20171023.csv',
                                                  save_as = 'figures/The-Cell-Map-tSNE-Exo-SDL-all-hits-norm.png') {
  rf   <- colorRampPalette(rev(c(RColorBrewer::brewer.pal(11,'Spectral'), 'black')))
  r    <- rf(1000)
  size <- 800
  
  tSNE <- read_csv(given, col_types = cols()) %>%
    mutate(
      query_hit = case_when(
        screen_hit %in% c('All', "MT & Exo", "WT & Exo", "Exo") ~ TRUE,
        TRUE ~ FALSE
      )
    )
  
  total_hits <- nrow(subset(tSNE, MATa_hit))
  wt_hits <- nrow(subset(tSNE, query_hit))
  upper_ind <- (wt_hits/total_hits)*1000
  
  limits <- c(range(tSNE$tSNE1), range(tSNE$tSNE2))
  limits5 <- limits + (5 * sign(limits))
  
  
  k2 <- 
    MASS::kde2d(
      filter(tSNE, query_hit == T)$tSNE1, 
      filter(tSNE, query_hit == T)$tSNE2, 
      n = 200, h = 5, lims = limits5
    )
  
  png(save_as, width = size, height = size, units = 'px')
  image(k2, col = r[1:upper_ind], xlab = 'tSNE1', ylab = 'tSNE2')
  dev.off()
}

figure_the_cell_map_tsne_all_hits_heat <- function(given = 'data/The-Cell-Map-tSNE-30-20171023.csv',
                                                   save_as = 'figures/The-Cell-Map-tSNE-All-SDL-all-hits-norm.png') {
  rf   <- colorRampPalette(rev(c(RColorBrewer::brewer.pal(11,'Spectral'), 'black')))
  r    <- rf(1000)
  size <- 800
  
  tSNE <- read_csv(given, col_types = cols()) %>%
    mutate(
      query_hit = case_when(
        screen_hit %in% c('All', "MT & Exo", "WT & Exo", "Exo") ~ TRUE,
        TRUE ~ FALSE
      )
    )
  
  total_hits <- nrow(subset(tSNE, MATa_hit))
  wt_hits <- nrow(subset(tSNE, query_hit))
  upper_ind <- (wt_hits/total_hits)*1000
  
  limits <- c(range(tSNE$tSNE1), range(tSNE$tSNE2))
  limits5 <- limits + (5 * sign(limits))
  
  
  k2 <- 
    MASS::kde2d(
      filter(tSNE, MATa_hit == T)$tSNE1, 
      filter(tSNE, MATa_hit == T)$tSNE2, 
      n = 200, h = 5, lims = limits5
    )
  
  png(save_as, width = size, height = size, units = 'px')
  image(k2, col = r, xlab = 'tSNE1', ylab = 'tSNE2')
  dev.off()
}

figure_the_cell_map_annotated_cluster <- function(given = 'data/The-Cell-Map-tSNE-30-20171023.csv',
                                       save_as = 'figures/The-Cell-Map-annotated-cluster2.pdf'){
  tSNE <- read_csv(given, col_types = cols())
  
  genes_in_cluster <-
    tSNE %>%
    filter(
      tSNE1 > -35 & tSNE1 < -25,
      tSNE2 > -10   & tSNE2 < 0
    ) %>%
    mutate(screen_hit = ordered(screen_hit, levels = c('All', 'WT & Exo', 'WT & MT', 'Exo & MT', 'WT','Exo','MT', 'Not a hit'))
   )

  all_count <- nrow(subset(genes_in_cluster, screen_hit == 'All'))
  all_label <- sprintf("All (%d)",all_count)
  w_e_count <- nrow(subset(genes_in_cluster, screen_hit == 'WT & Exo'))
  we_label <- sprintf("WT & Exo (%d)",w_e_count)
  w_m_count <- nrow(subset(genes_in_cluster, screen_hit == 'WT & MT'))
  wm_label <- sprintf("WT & MT (%d)",w_m_count)
  e_m_count <- nrow(subset(genes_in_cluster, screen_hit == 'Exo & MT'))
  em_label <- sprintf("Exo & MT (%d)",e_m_count)
  
  w_count <-  nrow(subset(genes_in_cluster, screen_hit == 'WT'))
  w_label <- sprintf("WT (%d)",w_count)
  e_count <-  nrow(subset(genes_in_cluster, screen_hit == 'Exo'))
  e_label <- sprintf("Exo (%d)",e_count)
  m_count <-  nrow(subset(genes_in_cluster, screen_hit == 'MT'))
  m_label <- sprintf("MT (%d)",m_count)
  
 

  counted_genes_in_cluster <-
    genes_in_cluster %>%
    mutate(
      count_hit_group = case_when(
        screen_hit == 'All' ~ all_label,
        screen_hit == 'WT & Exo' ~ we_label,
        screen_hit == 'WT & MT' ~ wm_label,
        screen_hit == 'Exo & MT' ~ em_label,
        screen_hit == 'WT' ~ w_label,
        screen_hit == 'Exo' ~ e_label,
        screen_hit == 'MT' ~ m_label,
        TRUE ~"Not a hit"
      ),
      count_hit_group = ordered(count_hit_group, levels = c(all_label,we_label,wm_label,em_label,w_label,e_label,m_label, 'Not a hit'))
    )
  
  
  
  counted_genes_in_cluster %>%
    ggplot(aes(x = tSNE1, y = tSNE2, color = count_hit_group)) +
    geom_point(alpha = 0.7) +
    scale_color_manual(values = c('red','blue','grey')) +
    ggrepel::geom_text_repel(aes(label = gene_name), data = filter(counted_genes_in_cluster, count_hit_group != 'Not a hit')) +
    coord_fixed() +
    theme_bw() +
    theme(legend.title = element_blank()) +
    ggsave(save_as, width = 6, height = 6)
}


# figure_the_cell_map_tsne_clusters <- function(given_clusters       = 'data/The-Cell-Map-tSNE-30-20171023-clusters.csv',
#                                               given_cluster_coords = 'data/The-Cell-Map-tSNE-30-20171023-cluster-coords.csv',
#                                               save_as = 'figures/The-Cell-Map-tSNE-RAD5-SDL-clusters',
#                                               limits  = NULL,
#                                               # Everything annotated will be included, so validated strains can be added
#                                                `Crossover resolution` = c('top3', 'sgs1', 'mms4', 'mus81', 'ylr235c', 'nse4', 'pby1'),
#                                                annotations = list(
#                                                 `Homology directed repair` = c('rad55', 'rad54', 'rad57', 'rad52', 'mre11', 'xrs2', 'rad50', 'dna2'),
#                                                 `DNA replication`  = c('cdc47', 'csm3', 'pol32', 'cdc2', 'rad27', 'pol12', 'pol1', 'rfc4', 'dbf4', 'cdc8', 'cdc9'),
#                                                 `9-1-1 checkpoint` = c('ddc1', 'mec3', 'rad17', 'rad24'),
#                                                 `Kinetochore`      = c('ame1', 'okp1', 'ctf19', 'dsn1'),
#                                                 Cohesin            = c('smc1', 'mcd1')
#                                               ),
#                                               colors = c(
#                                                 `Crossover resolution` = '#d684ab', # Pink/purple
#                                                 `Homology directed repair` = '#009c79', # Green
#                                                 `DNA replication` = '#0075b2',  # Blue
#                                                 `9-1-1 checkpoint` = '#eea535', # orange
#                                                 Other = '#e26c2f', # Blood orange
#                                                 Kinetochore = 'red',
#                                                 Cohesin    = '#3eb5e7', # light blue
#                                                 Background = 'grey'
#                                               )) {
# 
#   annotations <-
#     reshape2::melt(annotations) %>%
#     rename(gene_name = value, Annotation = L1) %>%
#     mutate(gene_name = as.character(gene_name))
# 
#   clusters <-
#     read_csv(given_clusters, col_types = cols()) %>%
#     left_join(annotations, by = 'gene_name') %>%
#     mutate(
#       Annotation = case_when(
#         is.na(Annotation) & !MATa_hit & !TS_hit ~ 'Background',
#         is.na(Annotation) ~ 'Other',
#         TRUE ~ Annotation
#       ),
#       Annotation = factor(Annotation, levels = names(colors))
#     )
# 
#   coords <- read_csv(given_cluster_coords, col_types = cols())
# 
#   if (!is.null(limits)) {
#     limits <- filter(coords, !obj %in% limits$obj) %>% bind_rows(limits)
#   } else {
#     limits <- coords
#   }
# 
#   for (i in unique(clusters$cluster)) {
#     cluster_i <- filter(clusters, cluster == i)
#     limits_i <- filter(limits, obj == i)
#     hits_i <- filter(cluster_i, Annotation != 'Background')
#     gg <-
#       cluster_i %>%
#       ggplot(aes(x = tSNE1, y = tSNE2, color = Annotation)) +
#       geom_point(alpha = 0.5) +
#       ggrepel::geom_text_repel(aes(label = gene_name), data = hits_i, show.legend = F) +
#       scale_color_manual(values = colors) +
#       coord_fixed(xlim = with(limits_i, c(xmin, xmax)), ylim = with(limits_i, c(ymin, ymax))) +
#       theme_bw()
#     print(gg)
#     ggsave(str_c(save_as, '-', i, '.pdf'), gg, width = 8, height = 8)
#   }
# }
# 
# 
# figure_the_cell_map_tsne_sdl_sl <- function(save_as = 'figures/Drafts/The-Cell-Map-tSNE-RAD5-SDL-SL.pdf',
#                                             bootstrap = c('mec3', 'rad51', 'mre11'),
#                                             annotations = list(
#                                               `Crossover resolution` = c('top3', 'sgs1', 'mms4', 'mus81', 'ylr235c', 'nse4', 'pby1'),
#                                               `Homology directed repair` = c('rad55', 'rad54', 'rad57', 'rad52', 'mre11', 'xrs2', 'rad50', 'rad51', 'dna2'),
#                                               `DNA replication`  = c('cdc47', 'csm3', 'pol32', 'cdc2', 'rad27', 'pol12', 'pol1', 'rfc4', 'dbf4', 'cdc8', 'cdc9'),
#                                               `Chromatid cohesion` = c('ctf8', 'ctf18', 'dcc1', 'ctf4', 'chl1'),
#                                               `9-1-1 checkpoint` = c('ddc1', 'mec3', 'rad17', 'rad24'),
#                                               `Kinetochore`      = c('ame1', 'okp1', 'ctf19', 'dsn1'),
#                                               Cohesin            = c('smc1', 'mcd1')
#                                             ),
#                                             colors = c(
#                                               `Crossover resolution` = '#d684ab', # Pink/purple
#                                               `Homology directed repair` = '#009c79', # Green
#                                               `DNA replication` = '#0075b2',  # Blue
#                                               `9-1-1 checkpoint` = '#eea535', # orange
#                                               Other = '#e26c2f', # Blood orange
#                                               Kinetochore = 'red',
#                                               Cohesin    = '#3eb5e7', # light blue
#                                               Background = 'grey'
#                                             )) {
#   annotations_df <-
#     reshape2::melt(annotations) %>%
#     rename(gene_name = value, Annotation = L1) %>%
#     mutate(gene_name = as.character(gene_name))
# 
#   rad5 <-
#     read_csv('data/analysis/BioGrid-rad5.csv', col_types = cols()) %>%
#     filter(bg_score < 0)
# 
#   tSNE_all <-
#     read_csv('data/analysis/The-Cell-Map-tSNE-30-20171023.csv', col_types = cols()) %>%
#     mutate(
#       MATa_hit = if_else(gene_name %in% bootstrap, TRUE, MATa_hit),
#       rad5_hit = gene_name %in% tolower(rad5$bg_b)
#     )
# 
#   tSNE <-
#     bind_rows(
#       list(
#         SDL_MATa = filter(tSNE_all, MATa_hit),
#         #SDL_TS   = filter(tSNE_all, TS_hit),
#         SL_BioGrid = filter(tSNE_all, rad5_hit),
#         SDL_specific = filter(tSNE_all, (MATa_hit | TS_hit) & !rad5_hit),
#         SL_specific = filter(tSNE_all, !(MATa_hit | TS_hit) &  rad5_hit),
#         Shared      = filter(tSNE_all,  (MATa_hit | TS_hit) &  rad5_hit)
#       ),
#       .id = 'experiment'
#     ) %>%
#     left_join(annotations_df, by = 'gene_name') #%>%
#     #filter(!TS_hit)
# 
#   tSNE %>%
#     mutate(experiment = ordered(experiment, levels = c('SDL_MATa', 'SL_BioGrid', 'Shared', 'SDL_specific', 'SL_specific'))) %>%
#     filter(tSNE1 > 22, tSNE1 < 35, tSNE2 > -15, tSNE2 < -4) %>%
#     ggplot(aes(x = tSNE1, y = tSNE2, color = Annotation)) +
#     geom_point(alpha = 0.5) +
#     ggrepel::geom_text_repel(aes(label = gene_name)) +
#     facet_wrap(~experiment) +
#     coord_fixed(xlim = c(22, 35), ylim = c(-15, -4)) +
#     theme_bw() +
#     ggsave(save_as, width = 20, height = 20)
# 
# 
#   tSNE%>%
#     bind_rows(mutate(distinct(select(tSNE_all, tSNE1, tSNE2, gene_name)), experiment = 'All')) %>%
#     mutate(experiment = ordered(experiment, levels = c('SDL_MATa', 'SL_BioGrid', 'Shared', 'SDL_specific', 'SL_specific', 'SDL_TS', 'All'))) %>%
#     filter(tSNE1 > 23, tSNE1 < 30, tSNE2 > -13, tSNE2 < -6) %>%
#     ggplot(aes(x = tSNE1, y = tSNE2)) +
#     geom_point(alpha = 0.5) +
#     ggrepel::geom_text_repel(aes(label = gene_name)) +
#     facet_wrap(~experiment, nrow = 2) +
#     coord_fixed(xlim = c(24, 29), ylim = c(-12, -7)) +
#     theme_bw()
# }

#tSNE_hits_cluster <- tSNE_hits[rownames(tSNE_hits) %in% c(cluster2, 'mec1', 'rad53'), ] # & tSNE_hits[,2] < -12 & tSNE_hits[,1] > 21, ]

# df <- data_frame(x = tSNE_hits[,1], y = tSNE_hits[,2], gene = rownames(tSNE_hits)) %>%
#   group_by(gene) %>%
#   summarize(x = mean(x), y = mean(y)) %>%
#   mutate(
#     group = case_when(
#       gene %in% c('mus81', 'mms4', 'pby1', 'sgs1', 'top3', 'ylr235c', 'nse4', 'rmi1') ~ 'Resolution of DNA crossovers',
#       gene %in% c('rad50', 'rad52', 'rad54', 'rad55', 'rad57', 'xrs2') ~ 'Homology directed DNA repair',
#       gene %in% c('cdc8', 'stn1', 'pol1', 'pol12', 'pol32', 'dbf4', 'cdc7', 'orc2', 'csm3', 'cdc47', 'rad27', 'rfc2', 'rfc4', 'rfc5', 'cdc2') ~ 'DNA replication',
#       gene %in% c('hpc2', 'pob3') ~ 'Chromatin remodeling',
#       gene %in% c('ddc1', 'rad17', 'rad24') ~ '9-1-1 checkpoint',
#       TRUE ~ 'Other'
#     )
#   ) %>%
#   filter(
#     gene %in% c(cluster2, 'mec1', 'rad53')#,
#     #(x > 21),
#     #(y < -12)
#   )
#
# df %>%
#   ggplot(aes(x, y, color = group)) +
#   geom_point(
#     size = 2, color = 'grey', alpha = 0.5,
#     data = data_frame(x = tSNE$Y[,1], y = tSNE$Y[,2], gene = genes) %>%
#       filter(x > 21, x < 35, y < -10, y > -20, gene %in% c(MATa$strain_name, TS$gene))
#   ) +
#   geom_point(size = 2) +
#   ggrepel::geom_text_repel(aes(label = gene), fontface = 'bold.italic', show.legend = F) +
#   coord_fixed(xlim = c(22, 31), ylim = c(-18, -12)) +
#   theme_bw() +
#   theme(
#     axis.text = element_blank(),
#     axis.title = element_blank(),
#     axis.ticks = element_blank(),
#     panel.grid.minor = element_blank(),
#     legend.text = element_text(face = 'bold', size = 12)
#   ) +
#   ggsave('figures/Cell-Map-SDL-primary-cluster.pdf', width = 10, height = 7)
#
#
#
# loc.box <- function(x,y){
#   print("choose bottom left corner")
#   p1 <- locator(1)
#   print("choose top right corner")
#   p2 <- locator(1)
#   rect(p1$x, p1$y, p2$x, p2$y, border=3, col=rgb(0,1,0,0.1))
#   incl <- which(
#     x >= p1$x &
#       x <= p2$x &
#       y >= p1$y &
#       y <= p2$y
#   )
#   return(incl)
# }
#
# cluster <- loc.box(tSNE$Y[, 1], tSNE$Y[, 2])
# View(tSNE$gene[cluster, ])
# genes[cluster1]
# genes[cluster2]
# matrix_hits <- matrix[union(indices, indices_TS), ]
# tSNE2 <- Rtsne::Rtsne(matrix_hits, perplexity = 4)
# k <- MASS::kde2d(tSNE2$Y[,1], tSNE2$Y[,2], n=2000)
# plot(tSNE2$Y, type = 'n')
# text(tSNE2$Y, labels = rownames(matrix_hits))
# image(k, col=r)
#
# df <- data_frame(`tSNE-1` = tSNE2$Y[,1], `tSNE-2` = tSNE2$Y[,2], gene = rownames(matrix_hits))
#
# ggplot(df, aes(x = `tSNE-1`, y = `tSNE-2`)) +
#   geom_point(color = 'red') +
#   ggrepel::geom_text_repel(aes(label = gene))
