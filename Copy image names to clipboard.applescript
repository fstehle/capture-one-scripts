set crlf to return & linefeed

tell application "Capture One 10"
	set imageNames to ""
	
	repeat with variantItem in (get selected variants)
		set parentImageName to (get name of (get parent image of variantItem))
		set imageNames to imageNames & parentImageName & crlf
	end repeat
	
	set the clipboard to imageNames
	display notification "Image names were copied to clipboard"
end tell