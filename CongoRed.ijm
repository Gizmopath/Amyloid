// Define the path to the main directory
MainDirPath = "G:\\CartelleRC\\CasiSelezionati";

// Get the main directory
mainDir = getDirectory(MainDirPath);

// Get the list of subdirectories in the main directory
subDirs = getFileList(mainDir);

// Loop through each subdirectory
for (i = 0; i < subDirs.length; i++) {
    // Construct the full path to the subdirectory
    subDirPath = MainDirPath + "\\" + subDirs[i] + "\\";

    // Define the directory paths within this subdirectory
    dirPaths = newArray(subDirPath + "dir1\\", subDirPath + "dir2\\", subDirPath + "dir3\\");

    // Set the file paths for the input images in this directory
    tritc_path = subDirPath + "tritc.tif";
    af_path = subDirPath + "af.tif";
    ref_path = subDirPath + "ref.tif";

    // Open images and rename
    open(tritc_path);
    run("8-bit");
    rename("tritc_image_window");

    open(af_path);
    run("8-bit");
    rename("af_image_window");

    open(ref_path);
    run("8-bit");
    rename("Reference image");

    // Enhance contrast of ref image
    selectWindow("Reference image");
    run("Enhance Contrast...", "saturated=0.02");

    // Threshold using the Otsu method
    setAutoThreshold("Otsu");

    // Create a mask from the thresholded image and rename
    run("Convert to Mask");
    rename("Mask");

    // Create a binary mask
    //run("Create Mask");
    run("Invert");
    run("Create Selection");

    // Transfer mask to "tritc image"
    selectWindow("tritc_image_window");
    run("Restore Selection");
    run("ROI Manager...");
    roiManager("Add");
    roiManager("Measure");

    //getStatistics(area,mean);

    // Transfer mask to "af image"
    selectWindow("af_image_window");
    roiManager("Show All");
    roiManager("Measure");

    //getResults, start from 0
    tritc_mean = getResult("Mean",0);
    af_mean = getResult("Mean",1);

    // Add the difference to "AF image"
    selectWindow("af_image_window");
    run("Select None");
    run("Add...", "value=" + (tritc_mean - af_mean));

    // Subtract "af image" from "tritc image"
    selectWindow("tritc_image_window");
    run("Select None");
    run("Image Calculator...", "image1=tritc_image_window image2=af_image_window operation=Subtract create");
    run("Enhance Contrast...", "saturated=0.02");
    rename("Final.tif");
      
    save(subDirPath);

    // Close all open image windows
	close("*");
	close("Results");
	close("ROI Manager");

}



