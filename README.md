# leopold-briefe-preprocessing

Repo to generate basic XML/TEI for further annotating

## transkribus-out

This folder holds the XML/TEI data from the manually created Transkribus export

### how to export

* go to the [collection overview](https://app.transkribus.org/collection/2394287)
* select those documents you want to export (see [screen-001-export.png](screenshots/screen-001-export.png))
* in the [next page](https://app.transkribus.org/collection/2394287/export), select TEI and check the following options (see [export options](screenshots/screen-002-export-options.png))
  * **File name pattern**: docId + pageNr + pageId
  * **Tags in export**: Export all tags in document
  * **Stylesheet**: Standard
  * **Include zones**: Text region and Text line
  * **Line Breaks**: `<lb/>`
* click **Start export**
* You'll get an email when the export is completed.
* Download and unzip the export-zip. Copy the folders in the zip into `transkribus-out`

## upconvert

To combine metadata about the letters curated in a dedicated Baserow-Database and the data fetched from Transkribus run

```bash
uv run src/make_teis.py
```

## issues

* page2tei export ignores all tags
* Standard TEI Export exports abbr/choice but ignores e.g. "split_word" and "corrected"