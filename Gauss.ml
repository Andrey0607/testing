(* ImandraML example: Gauss's theorem on 1 + ... + n  *)
(* (c)Copyright Aesthetic Integration, Ltd., 2015     *)

:rational_div on

let rec sum(n) =
  if n <= 0 then 0 else n + sum (n-1);;

verify gauss (n) =
  (n >= 0)
     ==>
  (sum n = (n * (n+1)) / 2);;

verify gauss_bad (n) =
  (n >= 0)
     ==>
  (sum n = (n * (n-1)) / 2);;

:rational_div off
