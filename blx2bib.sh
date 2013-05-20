#!/bin/sh
biber -O refs_resolved.bib --tool_resolve --tool refs.bib
biber -O refs_bibtex.bib -g blx2bib.conf --tool refs_resolved.bib
