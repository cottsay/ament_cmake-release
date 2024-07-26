# Copyright 2014 Open Source Robotics Foundation, Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# list relative paths before absolute paths
set(_AMENT_CMAKE_EXPORT_INCLUDE_DIRECTORIES
  ${_AMENT_EXPORT_RELATIVE_INCLUDE_DIRECTORIES}
  ${_AMENT_EXPORT_ABSOLUTE_INCLUDE_DIRECTORIES})

# generate and register extra file for include directories
set(_generated_extra_file
  "${CMAKE_CURRENT_BINARY_DIR}/ament_cmake_export_include_directories/ament_cmake_export_include_directories-extras.cmake")
configure_file(
  "${ament_cmake_export_include_directories_DIR}/ament_cmake_export_include_directories-extras.cmake.in"
  "${_generated_extra_file}"
  @ONLY
)
list(APPEND ${PROJECT_NAME}_CONFIG_EXTRAS "${_generated_extra_file}")
