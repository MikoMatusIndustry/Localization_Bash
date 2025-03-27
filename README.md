# Extract GPS Data from an Image

## Overview
This Bash script extracts geolocation (GPS) metadata from an image file using `exiftool`. The extracted latitude, longitude, and altitude (if available) are saved into a text file for easy access.

## Requirements
- `exiftool` must be installed on your system.
  - Install it on Debian-based systems (e.g., Ubuntu, Kali Linux) using:
    ```bash
    sudo apt install libimage-exiftool-perl
    ```
  - Install it on macOS using:
    ```bash
    brew install exiftool
    ```

## Usage
1. Place the image file (e.g., `widok.JPG`) in the same directory as the script.
2. Run the script:
   ```bash
   ./script.sh
   ```
3. If the image contains GPS metadata, the extracted data will be saved in `geolocation_data.txt`.

## Output Format
The script generates a text file (`geolocation_data.txt`) with the following structure:
```
file name: widok.JPG
latitude: 52.2298
longitude: 21.0122
altitude: 100.5
```

## Error Handling
- If the input file does not exist, the script will terminate with an error message.
- If no geolocation data is found, an appropriate message will be displayed.

## License
This script is open-source and can be modified or distributed freely.

## Author
MikoMatusIndustry

