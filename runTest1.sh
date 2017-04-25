#!/bin/bash

# initialize exit code to 0
code=0

mkdir -p /tests/inputData/ /tests/outputData/

# Download input files
wget -P /tests/inputData/ https://raw.githubusercontent.com/bmerlet90/tool-SBML2MetexploreJsonGraph/v1.2.1/tests/inputData/miniRec2.xml
wget -P /tests/inputData/ https://raw.githubusercontent.com/bmerlet90/tool-SBML2MetexploreJsonGraph/v1.2.1/tests/inputData/ubFluxNet.sbml

# Download output files
wget -P /tests/outputData/ https://raw.githubusercontent.com/bmerlet90/tool-SBML2MetexploreJsonGraph/v1.2.1/tests/outputData/ExpectedminiRec2.json
wget -P /tests/outputData/ https://raw.githubusercontent.com/bmerlet90/tool-SBML2MetexploreJsonGraph/v1.2.1/tests/outputData/ExpectedUbFluxNet.json

java -jar SBML2MetexploreJsonGraph.jar -inFile /tests/inputData/miniRec2.xml -outFile /tests/outputData/output.json -flux2Mapp

if ! [ -e "/tests/outputData/output.json" ]; then
    echo "Output file doesn't exist"
    $Code=$Code+1
fi

rm /tests/outputData/output.json

java -jar SBML2MetexploreJsonGraph.jar -inFile /tests/inputData/ubFluxNet.sbml -outFile /tests/outputData/output.json -flux2Mapp

if ! [ -e "/tests/outputData/output.json" ]; then
    echo "Output file doesn't exist"
    $Code=$Code+1
fi

echo "Test suit finished"
exit $code