<!-- Improved compatibility of back to top link: See: https://github.com/othneildrew/Best-README-Template/pull/73 -->
<a name="readme-top"></a>
<!--
*** Thanks for checking out the Best-README-Template. If you have a suggestion
*** that would make this better, please fork the repo and create a pull request
*** or simply open an issue with the tag "enhancement".
*** Don't forget to give the project a star!
*** Thanks again! Now go create something AMAZING! :D
-->



<!-- PROJECT SHIELDS -->
<!--
*** I'm using markdown "reference style" links for readability.
*** Reference links are enclosed in brackets [ ] instead of parentheses ( ).
*** See the bottom of this document for the declaration of the reference variables
*** for contributors-url, forks-url, etc. This is an optional, concise syntax you may use.
*** https://www.markdownguide.org/basic-syntax/#reference-style-links
-->



<!-- PROJECT LOGO -->
<br />
<div align="center">
  <a href="https://medium.com/towards-data-science/integrative-analysis-of-single-cell-multi-omics-data-using-deep-learning-66a61a3448c5">
    <img src="imgs/logo.jpg" alt="Logo" width="120" height="120">
  </a>

<h3 align="center">Integrative analysis of single-cell multi-omics data using deep learning</h3>

  <p align="center">
    <a href="https://medium.com/towards-data-science/integrative-analysis-of-single-cell-multi-omics-data-using-deep-learning-66a61a3448c5">Blog Post</a>
    ·
    <a href="https://www.youtube.com/watch?v=tad9TPCMWbU">Video Tutorial</a>
    ·
    <a href="https://github.com/naity/citeseq_autoencoder/issues">Request Feature</a>
  </p>
</div>



<!-- TABLE OF CONTENTS -->
<details>
  <summary>Table of Contents</summary>
  <ol>
    <li>
      <a href="#about-the-project">About The Project</a>
      <ul>
        <li><a href="#built-with">Built With</a></li>
      </ul>
    </li>
    <li>
      <a href="#getting-started">Getting Started</a>
      <ul>
        <li><a href="#prerequisites">Prerequisites</a></li>
      </ul>
    </li>
    <li><a href="#usage">Usage</a></li>
    <li><a href="#roadmap">Roadmap</a></li>
    <li><a href="#contributing">Contributing</a></li>
    <li><a href="#license">License</a></li>
    <li><a href="#contact">Contact</a></li>
  </ol>
</details>



<!-- ABOUT THE PROJECT -->
## About The Project

[![Screen Shot][product-screenshot]](https://www.youtube.com/watch?v=tad9TPCMWbU)

This repository contains the code and Jupyter Notebooks accompanying my blog post on [Integrative analysis of single-cell multi-omics data using deep learning](https://medium.com/@yuan_tian/integrative-analysis-of-single-cell-multi-omics-data-using-deep-learning-66a61a3448c5). Single-cell RNA sequencing (scRNA-seq) has revolutionized the profiling of various cell types, such as immune cells, with single-cell resolution using next-generation sequencing.

Exciting technologies like Cellular Indexing of Transcriptomes and Epitopes by Sequencing (CITE-seq) have extended scRNA-seq by simultaneously measuring multiple molecular modalities, including proteome and transcriptome from the same cell. By utilizing antibodies conjugated to oligonucleotides, CITE-seq generates sequencing-based readouts for both surface protein expression and gene expression.

Given that gene and protein expressions provide distinct and complementary information about a cell, CITE-seq offers a unique opportunity to integrate transcriptomic and proteomic data. This integration enables a considerably higher resolution understanding of individual cell biology compared to using either modality alone. To address this, the tutorial in this repository demonstrates an integrative analysis of CITE-seq data using an unsupervised deep learning method called autoencoders.

* 🧬 Single-cell technologies offer considerable promise in dissecting the heterogeneity among individual cells and are being utilized in biomedical studies at an astounding pace.
* 💡 CITE-seq simultaneously measures gene expression and surface protein at a single-cell level.
* 💻 Integrative analysis of CITE-seq data from two modalities using autoencoders.

<p align="right">(<a href="#readme-top">back to top</a>)</p>



### Built With

* [![Python][Python_badge]][Python-url]
* [![Pytorch][Pytorch_badge]][Pytorch-url]
* [![Lightning][Lightning_badge]][Lightning-url]

<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- GETTING STARTED -->
## Getting Started

To run the Jupyter Notebooks, please follow the steps below:
1. Clone the repo:
```sh
git clone https://github.com/naity/citeseq_autoencoder.git
```

2. [Optional] Run the R script to for data preprocessing:
```sh
Rscript preprocessing.R
```

### Prerequisites

The following Python packages need to be installed to run the notebooks. Please use the commands below for installation.
  ```sh
  pip install pandas numpy scikit-learn torch pytorch-lightning tqdm umap-learn plotly
  ```

To run the preprocessing script, you will need to install the following `R` packages using the commands below:
  ```R
  install.packages("tidyverse")
  install.packages('Seurat')
  devtools::install_github('satijalab/seurat-data')
  ```

<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- USAGE EXAMPLES -->
## Usage

Explore the application of autoencoders for CITE-seq data through the following Jupyter Notebooks. These notebooks not only implement and train autoencoders but also provide visualizations of the results.

1. **`autoencoder_citeseq.ipynb`**: This notebook uses vanilla PyTorch for implementing and training autoencoders tailored for CITE-seq data.

2. **`autoencoder_citeseq_saturn.ipynb`**: This notebook introduces the usage of `PyTorch Lightning` for an updated implementation with improved model training and evaluation. Additionally, it provides more detailed background and technical explanations.

3. **`learn`**: If you're interested in delving into the detailed implementations of datasets, models, and training, please explore this Python module.

4. **`Deep learning for single-cell analysis.pptx`**: Slides for my "Decode Life Workshop Deep Learning Lecture" 

<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- ROADMAP -->
## Roadmap

- [x] 08/04/2022: [Tutorial on Saturn Cloud (video)](https://youtu.be/tad9TPCMWbU)
- [x] 06/30/2021: [Decode Life Workshop deep learning lecture (video)](https://www.youtube.com/watch?v=sRpj9MhNjS8)

<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- CONTRIBUTING -->
## Contributing

Contributions are what make the open source community such an amazing place to learn, inspire, and create. Any contributions you make are **greatly appreciated**.

If you have a suggestion that would make this better, please fork the repo and create a pull request. You can also simply open an issue with the tag "enhancement".
Don't forget to give the project a star! Thanks again!

1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3. Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the Branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- LICENSE -->
## License

Distributed under the MIT License. See `LICENSE.txt` for more information.

<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- CONTACT -->
## Contact

<p align="left">
<a href="https://linkedin.com/in/ytiancompbio" target="blank"><img align="center" src="https://raw.githubusercontent.com/rahuldkjain/github-profile-readme-generator/master/src/images/icons/Social/linked-in-alt.svg" alt="ytiancompbio" height="30" width="40" /></a>
<a href="https://twitter.com/ytiancompbio" target="blank"><img align="center" src="https://raw.githubusercontent.com/rahuldkjain/github-profile-readme-generator/master/src/images/icons/Social/twitter.svg" alt="ytiancompbio" height="30" width="40" /></a>
<a href="https://medium.com/@yuan_tian" target="blank"><img align="center" src="https://raw.githubusercontent.com/rahuldkjain/github-profile-readme-generator/master/src/images/icons/Social/medium.svg" alt="@yuan_tian" height="30" width="40" /></a>
<a href="https://www.youtube.com/@ytiancompbio" target="blank"><img align="center" src="https://raw.githubusercontent.com/rahuldkjain/github-profile-readme-generator/master/src/images/icons/Social/youtube.svg" alt="ytiancompbio" height="30" width="40" /></a>
</p>

<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- MARKDOWN LINKS & IMAGES -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->
[product-screenshot]: imgs/screenshot.png
[Python_badge]: https://img.shields.io/badge/python-3670A0?style=for-the-badge&logo=python&logoColor=ffdd54
[Python-url]: https://www.python.org/
[Pytorch_badge]: https://img.shields.io/badge/PyTorch-%23EE4C2C.svg?style=for-the-badge&logo=PyTorch&logoColor=white
[Pytorch-url]: https://pytorch.org/
[Lightning_badge]: https://img.shields.io/badge/Lightning-792EE5?logo=lightning&logoColor=fff&style=for-the-badge
[Lightning-url]: https://lightning.ai/docs/pytorch/stable/