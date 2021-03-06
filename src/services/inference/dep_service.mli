(**
 * Copyright (c) 2013-present, Facebook, Inc.
 * All rights reserved.
 *
 * This source code is licensed under the BSD-style license found in the
 * LICENSE file in the "flow" directory of this source tree. An additional grant
 * of patent rights can be found in the PATENTS file in the same directory.
 *
 *)

open Utils_js

val dependent_files:
  Worker.t list option -> (* workers *)
  unchanged_parsed:FilenameSet.t ->
  new_or_changed:FilenameSet.t ->
  dirty_modules:Module_js.NameSet.t ->
  FilenameSet.t * FilenameSet.t

val calc_dependencies:
  Worker.t list option -> (* workers *)
  filename list -> (* files *)
  FilenameSet.t FilenameMap.t
