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

java -cp SBML2MetexploreJsonGraph.jar org.junit.runner.JUnitCore org.junit.runners.MethodSorters org.junit.runners.Parameterized phnmnl.tests.Test5_Main

exit $code