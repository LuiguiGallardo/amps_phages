# Antimicrobial Peptides in Phages from gut microbiota
1. [Objetives](#1)
2. [Search of covered phages (GDP) with our rawdata](#2)
3. [Abundance of covered phages](#3)
3. [Search of AMPs in phages](#4)

## 1. Objetives<a name="1"></a>
1. Know the AMPs present in the infant gut phages
2. Determinate the AMPs differentially abundant between groups

## 2. Search of covered phages with our rawdata<a name="2"></a>

```mermaid
flowchart LR

subgraph "Search of covered phages with our rawdata"
    direction LR
    a("Raw data of 27 infant samples") --> b{"Alignment with bwa mem"}
    c[("GPD with 142,809 phages")] --- b
    b --> |"Coverage >= 75%"| d["Final phages"]
end
```

**[Log](./03_logs/phages_log_13062022.ipynb)**

**[Scripts]()**

## 3. Abundance of covered phages<a name="3"></a>

```mermaid
flowchart LR

subgraph "Abundance of covered phages"
    direction LR
    a1("Raw data of 27 infant samples") --> b1{"Alignment with bwa mem"}
    c1[("Covered phages >= 75%")] --- b1
    b1 --> d1["Absolute abundance phage/sample"]
end
```
 
**[Log](./03_logs/phages_log_13062022.ipynb)**

**[Scripts]()**

## 4. Search of AMPs in phages<a name=4></a>

```mermaid
flowchart LR

subgraph "Search of AMPs in phages"
    direction LR
    a2("Covered phages >= 75%") --> b2{"Protein prediction with Prodigal"}
    b2 --> |"Peptides <= 300 aa"| c2{"blastp"}
    d2[("NR and AMPs databases")] --> c2
    c2 --> e2["Potential AMPs in phages"]
end
```

**[Log](./03_logs/phages_log_13062022.ipynb)**

**[Scripts]()**
