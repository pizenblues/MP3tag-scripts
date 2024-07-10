#rename album folder: format 'Artist - Year - Album [audio quality]'
%albumartist% - %year% - %album% $if($eql(%musicbrainz_albumtype%,album),"",$caps3(%musicbrainz_albumtype%)" ")'['$if($eql(%_extension%,mp3),%_bitrate%,$upper(%_extension%))']'

#create subfolders (music brainz picard)
%artist% - %date% - %album% [$if($eq(%_extension%,mp3),%_bitrate%,$upper(%_extension%))]/%tracknumber%. %title%

#rename folder: format 'Artist - Year - Album [audio quality]' also removes decimals from bit rate and adds symbols according to audio quality
%albumartist% - %date% - %album% $if($is_complete(),,⬛ )[$if($eq(%_extension%,mp3),___,$upper(%_extension%))]/%tracknumber%. %title%
%albumartist% - %date% - %album% $if($is_complete(),,⬛ )[$if($eq(%_extension%,mp3),$if($lt(%_bitrate%,96),32,$if($lt(%_bitrate%,128),96⛔,$if($lt(%_bitrate%,192),128⛔,$if($lt(%_bitrate%,256),192⚠️,$if($lt(%_bitrate%,320),256,320))))),$upper(%_extension%))]/%tracknumber%. %title%

#similar to the one aboce / less than STRICT
$if($lt(%_bitrate%,96),32,$if($lt(%_bitrate%,128),96⛔,$if($lt(%_bitrate%,192),128⛔,$if($lt(%_bitrate%,256),192⚠️,$if($lt(%_bitrate%,320),256,320)))))