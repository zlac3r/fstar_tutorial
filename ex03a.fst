(*
   Copyright 2008-2018 Microsoft Research

   Licensed under the Apache License, Version 2.0 (the "License");
   you may not use this file except in compliance with the License.
   You may obtain a copy of the License at

       http://www.apache.org/licenses/LICENSE-2.0

   Unless required by applicable law or agreed to in writing, software
   distributed under the License is distributed on an "AS IS" BASIS,
   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
   See the License for the specific language governing permissions and
   limitations under the License.
*)
module Ex03a
//factorial-types

open FStar.Mul

(* What are some other types you can give to factorial?
   Try writing them and see if F* agrees with you. *)

// val factorial : int -> Dv int
// val factorial : nat -> Tot nat
//val factorial: x:int{x>=0} -> Tot int
val factorial : nat -> Tot (y:int{y>=1})
let rec factorial n = 
  if n = 0 then 1 else n * (factorial (n - 1))
