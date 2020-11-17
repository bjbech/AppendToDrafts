-- Create a markdown style link from a Safari tab and append it to a Drafts.app list

tell application "Safari"
	set siteURL to URL of front document
	set siteName to name of front document
	set markdownLink to "- [" & siteName & "](" & siteURL & ")" as string
	-- Replace UUID-TO-VALID-DRAFT with drafts UUID
	set draftsAppend to "drafts://x-callback-url/append?uuid=UUID-TO-VALID-DRAFT&text=" & markdownLink as string
	tell window 1
		set current tab to (make new tab with properties {URL:draftsAppend})
		-- At this point you will click `Allow` when asked `Do you want to allow this page to open "Drafts" before the delay expires and closes tab?
		delay 3
		close current tab
	end tell
end tell

-- Quits Drafts.app so it is not in the forefront
tell application "Drafts" to quit
