#!/bin/bash

export TR_DL_URL=https://transkribus.eu/export/5957408355788940276/export_job_28271258.zip

echo "going to downlaod TEIs from Transkribus from ${TR_DL_URL}"
wget -O out.zip ${TR_DL_URL}
rm -rf tmp && mkdir tmp
unzip -o out.zip -d tmp
uv run src/make_teis.py



