mkdir output

pandoc \
    --pdf-engine=lualatex \
    --resource-path=docs/Manual/ \
    --template=docs/Manual/template.tex \
    --listings \
    --number-sections \
    -V geometry:"left=3cm, top=2.5cm, right=3cm, bottom=3cm" \
    docs/Manual/01_Introduction.md \
    docs/Manual/02_TheSoarArchitecture.md \
    docs/Manual/03_SyntaxOfSoarPrograms.md \
    docs/Manual/04_ProceduralKnowledgeLearning.md \
    docs/Manual/05_ReinforcementLearning.md \
    docs/Manual/06_SemanticMemory.md \
    docs/Manual/07_EpisodicMemory.md \
    docs/Manual/08_SpatialVisualSystem.md \
    docs/Manual/09_SoarUserInterface.md -o output/SoarManual.pdf