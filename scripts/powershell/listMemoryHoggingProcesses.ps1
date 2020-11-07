# Finds the top x processes using the most memory
$x = 5
ps | sort –p ws | select –last $x
