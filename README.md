# *ImageJ Script for Image Processing of Congo Red Stained Slides*

This repository contains an ImageJ script that enables the processing of a group of images named TRITC, AF, and REF. The script is designed for the analysis of fluorescence scans and provides functionality for manipulating and enhancing these images. The TRITC image represents the fluorescence scan of congo red with a texas red filter, the AF image represents the fluorescence scan of the autofluorescence of the tissue (without the texas red filter), and the REF image is a copy of TRITC, on which additional processes will be applied.

![Figure 5](https://github.com/Gizmopath/Amyloid/assets/119873860/397d4fc4-d36f-4b56-a007-46da3ecf4371)

## Requirements
ImageJ software installed on your machine.
Images should be in the TIF format.

## Usage
Clone or download the repository to your local machine.
Open ImageJ and navigate to the main folder that contains the subfolders with the image sets (TRITC.tif, AF.tif, and REF.tif) for each case.
Copy and paste the contents of the ImageJ macro provided in the repository into the ImageJ editor.
Customize the script as needed (e.g., adjust parameters, add or remove image processing steps).
Run the script in ImageJ. It will automatically process the images in each subfolder, according to the specified steps.
Optionally, you can add a mask of the initial threshold to the final image using the "flatten" function.

![Figure 1](https://github.com/Gizmopath/Amyloid/assets/119873860/67a5826a-1f2e-457f-b5bf-6657daae9321)

## Notes
Ensure that ImageJ has sufficient memory allocated to handle the processing of large images.
It is recommended to review and understand the script's logic and steps before running it to ensure it meets your requirements.
Feel free to modify and extend the script to suit your specific image processing needs.

## Acknowledgments
The script was developed by Giorgio Cazzaniga, Maddalena Bolognesi and Vincenzo L'Imperio (Pathology Department, IRCCS San Gerardo dei Tintori, University of Milano-Bicocca, Monza, Italy).
Please provide appropriate acknowledgments if you used any external resources or libraries in your script and mention any relevant information about your project or research. 
Consider providing information on how others can contribute to your repository or get in touch with you for questions or suggestions.
