# Mouseflow Session Playback URL - GTM Variable Template

## Description
This Google Tag Manager (GTM) variable template generates a **Mouseflow session recording playback URL**. The URL takes users directly to the session recording of a specific user's session in **Mouseflow**.


## Features
- Retrieves the **Mouseflow website ID** and **session ID**.
- Constructs a valid **Mouseflow playback URL**.
- Allows fallback to `callInWindow('mouseflow.websiteId')` if the site ID is not manually provided.
- Returns `undefined` if necessary values are missing.

## Installation
1. Open **Google Tag Manager**.
2. Navigate to **Templates** → **New**.
3. Click **Import** and upload the `.tpl` file.
4. Save and publish the template.

## Configuration
- Provide the **Website ID** manually, or allow it to be retrieved automatically.
- The session ID is obtained dynamically.

## Example Output
Given:
- **Website ID:** `77126e56-b718-42f7-92fa-b1b151102423`
- **Session ID:** `bd0d1369da61682c4027cde416115418`

The generated **Mouseflow session playback URL**:
```
https://app.mouseflow.com/websites/77126e56-b718-42f7-92fa-b1b151102423/recordings/bd0d1369da61682c4027cde416115418/play
```

## Usage
- Use this variable in GTM **tags** to dynamically capture session playback URLs.
- Send the URL to **analytics tools**, **logging systems**, or **internal dashboards**.

## License
Apache

Developed by **Jude Nwachukwu Onyejekwe** for [**DumbData**](https://dumbdata.co/). where you can find more analytics resources in the **Measurement Resource Hub**.
