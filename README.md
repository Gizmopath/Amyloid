# *ImageJ Script for Image Processing of TRITC, AF, and REF Images*

This repository contains an ImageJ script that enables the processing of a group of images named TRITC, AF, and REF. The script is designed for the analysis of immunofluorescence scans and provides functionality for manipulating and enhancing these images. The TRITC image represents the immunofluorescence scan of congo red with a texas red filter, the AF image represents the immunofluorescence scan of the autofluorescence of the tissue (without the texas red filter), and the REF image is a copy of TRITC, on which additional processes will be applied.

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

## Notes
Ensure that ImageJ has sufficient memory allocated to handle the processing of large images.
It is recommended to review and understand the script's logic and steps before running it to ensure it meets your requirements.
Feel free to modify and extend the script to suit your specific image processing needs.

## License
This project is licensed under the MIT License.

## Acknowledgments
The script was developed by Giorgio Cazzaniga, Maddalena Bolognesi and Vincenzo L'Imperio (Pathology Department, IRCCS San Gerardo dei Tintori, University of Milano-Bicocca, Monza, Italy).
Please provide appropriate acknowledgments if you used any external resources or libraries in your script and mention any relevant information about your project or research. Additionally, consider providing information on how others can contribute to your repository or get in touch with you for questions or suggestions.
