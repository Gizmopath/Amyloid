# *ImageJ Script for Image Processing of Congo Red Stained Slides*    
## *The SPADA pipeline* ![rsz_screenshot_2023-08-24_063258-transformed-fotor-bg-remover-2023082463436](https://github.com/Gizmopath/Amyloid/assets/119873860/e8c3dc80-01d3-4fd2-b53b-9f2f9787d78a)



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
The "SPADA" pipeline was developed by Giorgio Cazzaniga, Maddalena Bolognesi, and Vincenzo L'Imperio from the Pathology Department, IRCCS San Gerardo dei Tintori, University of Milano-Bicocca, Monza, Italy [1].
For contributions or inquiries about the "SPADA" pipeline, please refer to the contact details provided in the publication.

Reference:
[1] Cazzaniga G, Bolognesi MM, Stefania MD, et al. Congo red staining in digital pathology: the "SPADA" pipeline. Lab Invest. 2023 Aug 25:100243. doi: 10.1016/j.labinv.2023.100243. Epub ahead of print. PMID: 37634845.
