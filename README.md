# Antimicrobial Peptides in Phages from gut microbiota
1. [Objetives](#1)
2. [Search of covered phages (GDP) with our rawdata](#1)


## 1. Objetives <a name="1"></a>
1. Know the AMPs present in the infant gut phages
2. Determinate the AMPs differentially abundant between groups

## 2. Search of covered phages with our rawdata <a name="2"></a>

### Pipeline

```mermaid
flowchart LR

subgraph "Search of covered phages with our rawdata"
    direction LR
    a("Raw data of 27 infant samples") --> b{"Alignment with bwa mem"}
    c[("GPD with 142,809 phages")] --- b
    b --> |"Coverage >= 75%"| d["Final phages"]
end

```
