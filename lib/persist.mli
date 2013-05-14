
open Core.Std
open Async.Std

type t

val create_saving_periodically : filename:string -> Time.Span.t -> t Deferred.t

val disable_periodic_saving_and_save_now : t -> unit Deferred.t
val re_enable_periodic_saving : t -> unit

val fs_persist : t -> Fs.Persist.t
val build_persist : t -> Build.Persist.t
