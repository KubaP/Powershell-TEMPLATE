function WriteHeader {
	param
	(
		[Parameter(Position = 0, Mandatory = $true)]
		[string]
		$Message,
		
		[Parameter(Position = 1)]
		[string]
		[ValidateSet("Red", "Green", "Blue", "Cyan", "Magenta", "Yellow", "white", "Black")]
		$Colour
	)
	
	# Initialize the variable to output.
	$HelpMessage = ''
	
	# Add some extra spacing to either side of the message.
	$length = $Message.Length + 2
	
	function WriteBorder($remark) {
		$HelpMessage += "+$("-" * $length)+$([Environment]::NewLine)" 
	}

	. WriteBorder 'Top'
	
	$HelpMessage += "| $Message |$([Environment]::NewLine)" 
	
	. WriteBorder 'bottom'
	
	# Write the text.
	Write-Host $HelpMessage -ForegroundColor $Colour
}