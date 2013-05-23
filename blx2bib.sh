#!/bin/sh
biber -O refs_pre.bib -g blx2bib-pre.conf --tool refs.bib
biber -O refs_resolved.bib --tool_resolve --tool refs_pre.bib
biber -O refs_bibtex.bib -g blx2bib-post.conf --tool_macro_fields=MONTH --tool refs_resolved.bib
