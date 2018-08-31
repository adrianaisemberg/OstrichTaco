#!/bin/bash
if [[ -z "${app_id_suffix}" ]]
then
  echo not patching any icon this time
else
  brew install mono-libgdiplus
  PROJECT_PATH=./
  echo patching icon with shape: $badge_shape, text: $badge_text, color: $badge_color
  dotnet ./ext/PatchIcon.dll ios -projectPath=$PROJECT_PATH -shape=$badge_shape -text=$badge_text -colorHex=$badge_color -appIdSuffix=$app_id_suffix
fi

