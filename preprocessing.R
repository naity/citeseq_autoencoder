##################################################
## Process CITE-seq dataset in Seurat based on
## https://satijalab.org/seurat/articles/weighted_nearest_neighbor_analysis.html
##################################################


library(Seurat)
library(SeuratData)
library(cowplot)
library(dplyr)

InstallData("bmcite")
bm <- LoadData(ds = "bmcite")

DefaultAssay(bm) <- 'RNA'
bm <- NormalizeData(bm) %>% FindVariableFeatures() %>% ScaleData() %>% RunPCA()

DefaultAssay(bm) <- 'ADT'
VariableFeatures(bm) <- rownames(bm[["ADT"]])
bm <- NormalizeData(bm, normalization.method = 'CLR', margin = 2) %>% 
  ScaleData() %>% RunPCA(reduction.name = 'apca')

bm <- FindMultiModalNeighbors(
  bm, reduction.list = list("pca", "apca"), 
  dims.list = list(1:30, 1:18), modality.weight.name = "RNA.weight"
)

bm <- RunUMAP(bm, nn.name = "weighted.nn", reduction.name = "wnn.umap", reduction.key = "wnnUMAP_")
bm <- FindClusters(bm, graph.name = "wsnn", algorithm = 3, resolution = 2, verbose = FALSE)

p1 <- DimPlot(bm, reduction = 'wnn.umap', label = TRUE, repel = TRUE, label.size = 2.5) + NoLegend()
p2 <- DimPlot(bm, reduction = 'wnn.umap', group.by = 'celltype.l2', label = TRUE, repel = TRUE, label.size = 2.5) + NoLegend()
p1 + p2

# export scaled data for RNA (2000 variable genes) and protein
rna.scale <- GetAssayData(bm[["RNA"]], slot="scale.data")[VariableFeatures(bm[["RNA"]]), ]
protein.scale <- GetAssayData(bm[["ADT"]], slot="scale.data")
metadata <- bm@meta.data

print(dim(rna.scale))
print(dim(protein.scale))

write.csv(rna.scale, gzfile("data/rna_scale.csv.gz"))
write.csv(protein.scale, gzfile("data/protein_scale.csv.gz"))
write.csv(metadata, gzfile("data/metadata.csv.gz"))