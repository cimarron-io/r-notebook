
FROM jupyter/r-notebook:83ed2c63671f

RUN conda install -c conda-forge r-forcats r-png r-ggpubr -y
RUN conda install -c r r-scales -y
RUN conda install -c bioconda r-r.utils -y

RUN conda clean -tipsy && \
    fix-permissions $CONDA_DIR
