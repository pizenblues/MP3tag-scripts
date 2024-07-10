#fix track number by removing the /totaltracks from "currenttrack/totaltracks"
$cutRight(%track%,$strchr($reverse(%track%),'/'))