![LOGO](Logo_Metexplore.png)
# SBML2MetexploreJsonGraph

Version: 1.2

## Short description
Tool to convert SBML files into a Json Format useable in the <a href="http://metexplore.toulouse.inra.fr/metexploreViz/doc/" target="_blank">MetExploreViz</a> visualisation module.

## Description
This tool converts any valid SBMLs into a Json formated file that can be used and imported into the MetExploreViz visaulisation module. If the input file has any flux data, they will be exported into the Json file as Reaction mappings and the will be accessible in our visualisation module.

This tool accepts :
- level 3 SBML files that use the FBC2 SBML packages to store any fluxes informations
- Any valid SBML file using the following syntax for the flux data:
	 
```xml
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

For more informations on SBML files, see <a href="http://sbml.org/" target="_blank">sbml.org</a> and the <a href="http://sbml.org/Documents/Specifications" target="_blank">Specifications</a>

We internally use the JSBML Java library. this library is available <a href="http://sbml.org/Software/JSBML" target="_blank"></a>here</a>

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
docker run docker-registry.phenomenal-h2020.eu/phnmnl/sbml2metexplorejsongraph -inFile  <sbmlfile> -outFile <jsonFile> -flux2Mapp
```

## References
- Nicolas Rodriguez, Alex Thomas, Leandro Watanabe, Ibrahim Y. Vazirabad, Victor Kofia, Harold F. Gómez, Florian Mittag, Jakob Matthes, Jan Rudolph, Finja Wrzodek, Eugen Netz, Alexander Diamantikos, Johannes Eichner, Roland Keller, Clemens Wrzodek, Sebastian Fröhlich, Nathan E. Lewis, Chris J. Myers, Nicolas Le Novère, Bernhard Ø. Palsson, Michael Hucka, and Andreas Dräger. JSBML 1.0: providing a smorgasbord of options to encode systems biology models. Bioinformatics, 31(20): 3383–3386. 