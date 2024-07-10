#release date is only year: fixes release date by removing mm and dd
$if($geql($len(%year%),5),$if($geql($len(%year%),10),$cutRight(%year%,6),$cutRight(%year%,3)),%year%)