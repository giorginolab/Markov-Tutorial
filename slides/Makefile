# Build the slide PDFs from the .pptx sources (not tracked in git).
#
#   make                 build every PDF whose .pptx is present in this directory
#   make markov_seminar.pdf
#   make clean           remove leftover intermediate full-size PDFs
#
# Each PDF is exported with PowerPoint (macOS, via AppleScript), then
# recompressed with Ghostscript (/screen preset, 72 dpi images).
# GSQUALITY=/ebook gives a larger, sharper PDF (150 dpi).

# PowerPoint prefixes its temporary lock files with ~$.
PPTX     := $(filter-out ~$$%,$(wildcard *.pptx))
PDF      := $(PPTX:.pptx=.pdf)
GS       ?= gs
GSQUALITY ?= /screen

all: $(PDF)

# Export at full size, recompress, then remove the intermediate.
$(PDF): %.pdf: %.pptx support/pptx2pdf.applescript
	osascript support/pptx2pdf.applescript "$(abspath $<)" "$(abspath $*.full.pdf)"
	$(GS) -q -dNOPAUSE -dBATCH -dSAFER \
	  -sDEVICE=pdfwrite -dCompatibilityLevel=1.6 \
	  -dPDFSETTINGS=$(GSQUALITY) \
	  -dDetectDuplicateImages=true -dCompressFonts=true \
	  -sOutputFile="$@" "$*.full.pdf"
	rm -f "$*.full.pdf"
	@ls -l "$@" | awk '{printf "%10d  %s\n", $$5, $$9}'

clean:
	rm -f *.full.pdf

.PHONY: all clean
.DELETE_ON_ERROR:
