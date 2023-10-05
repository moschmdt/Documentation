mkdir output

pandoc \
    --pdf-engine=lualatex \
    --resource-path=docs/soar_manual/ \
    --template=docs/soar_manual/template.tex \
    --listings \
    --number-sections \
    -V geometry:"left=3cm, top=2.5cm, right=3cm, bottom=3cm" \
    docs/soar_manual/01_introduction.md \
    docs/soar_manual/02_thesoararchitecture.md \
    docs/soar_manual/03_syntaxofsoarprograms.md \
    docs/soar_manual/04_proceduralknowledgelearning.md \
    docs/soar_manual/05_reinforcementlearning.md \
    docs/soar_manual/06_semanticmemory.md \
    docs/soar_manual/07_episodicmemory.md \
    docs/soar_manual/08_spatialvisualsystem.md \
    docs/soar_manual/09_SoarUserInterface.md \
    -o output/SoarManual.pdf