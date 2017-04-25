![LOGO](Logo_Metexplore.png)
# SBML2MetexploreJsonGraph

Version: 1.2

## Short description
Tool to convert SBML files into a Json Format useable in the MetExploreViz visualisation module.

## Description
This tool converts any valid SBMLs into a Json formated file that can be used and imported into the MetExploreViz visaulisation module. If the input file has any flux data, they will be exported into the Json file as Reaction mappings and the will be accessible in our visualisation module.

This tool accepts :
- level 3 SBML files that use the FBC2 SBML packages to store any fluxes informations
- Any valid SBML file using the following syntax for the flux data:
	 
```
<reaction id="R_1" name="Reaction 1" reversible="false">
    ...
	<kineticLaw>
		<math xmlns="http://www.w3.org/1998/Math/MathML">
			<ci> FLUX_VALUE </ci>
		</math>
		<listOfParameters>
			<parameter id="LOWER_BOUND" value="0" units="Units_Used_In_Model"/>
			<parameter id="UPPER_BOUND" value="1000" units="Units_Used_In_Model"/>
			<parameter id="FLUX_VALUE" value="0" units="Units_Used_In_Model"/>
			...
		</listOfParameters>
	</kineticLaw>
</reaction>
```


## Functionality
- Visualisation

## Tool Authors
- MetExplore Group contact-metexplore@inra.fr

## Container Contributors
- [Benjamin Merlet](https://github.com/bmerlet90) (INRA Toulouse)

## Git Repository
- https://github.com/phnmnl/container-SBML2MetexploreJsonGraph

## Installation
For local installation of the container:
```
docker pull docker-registry.phenomenal-h2020.eu/phnmnl/sbml2metexplorejsongraph
```

## Usage Instructions

For direct usage of the docker image:
```
docker run docker-registry.phenomenal-h2020.eu/phnmnl/sbml2metexplorejsongraph 
```

