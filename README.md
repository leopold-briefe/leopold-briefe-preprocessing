# leopold-briefe-preprocessing

Repo to generate basic XML/TEI for further annotating

## how to export

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
* Copy and paste the link to the [download and process GH-Action](https://github.com/leopold-briefe/leopold-briefe-preprocessing/actions/workflows/download_and_process.yml) after clicking on the "Run workflow" button
