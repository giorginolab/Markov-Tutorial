# Build the slide PDFs from the .pptx sources (not tracked in git).
#
#   make                 build every PDF whose .pptx is present in this directory
#   make markov_seminar.pdf
#   make clean           remove the intermediate full-size PDFs
#
# Each PDF is exported with PowerPoint (macOS, via AppleScript), then
# recompressed with Ghostscript (/screen preset, 72 dpi images).
# GSQUALITY=/ebook gives a larger, sharper PDF (150 dpi).

PPTX     := $(wildcard *.pptx)
PDF      := $(PPTX:.pptx=.pdf)
GS       ?= gs
GSQUALITY ?= /screen

all: $(PDF)

# 1. PowerPoint export (full size, intermediate)
%.full.pdf: %.pptx support/pptx2pdf.applescript
	osascript support/pptx2pdf.applescript "$(abspath $<)" "$(abspath $@)"

# 2. Ghostscript recompression
%.pdf: %.full.pdf
	$(GS) -q -dNOPAUSE -dBATCH -dSAFER \
	  -sDEVICE=pdfwrite -dCompatibilityLevel=1.6 \
	  -dPDFSETTINGS=$(GSQUALITY) \
	  -dDetectDuplicateImages=true -dCompressFonts=true \
	  -sOutputFile=$@ $<
	@ls -l $< $@ | awk '{printf "%10d  %s\n", $$5, $$9}'

clean:
	rm -f *.full.pdf

.PHONY: all clean
.SECONDARY: $(PPTX:.pptx=.full.pdf)
