-- Usage: osascript support/pptx2pdf.applescript /abs/in.pptx /abs/out.pdf
on run argv
	set inFile to POSIX file (item 1 of argv)
	set outFile to POSIX file (item 2 of argv)
	tell application "Microsoft PowerPoint"
		open inFile
		set pres to active presentation
		save pres in outFile as save as PDF
		close pres saving no
	end tell
end run
