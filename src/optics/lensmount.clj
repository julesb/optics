(ns optics.lensmount
  (:refer-clojure :exclude [import use])
  (:use [scad-clj.scad]
        [scad-clj.model]))

(def vlength 35.0)
(def width (* vlength (Math/sqrt 2.0)))


(def vpart
  (translate [0 0 (/ width 3.5)]
    (rotate (/ Math/PI 2.0) [1 0 0]
      (rotate (/ Math/PI 4.0) [0 0 1]
         (translate [10 10 0]
           (cube vlength vlength 11.0))))))


(def leg
  (translate [0 0 20]
    (cube width 10 width)))


(def base
  (cube width (/ width 1.5) 5))


(def groove
  (difference
    (translate [-10.0 0 21]
      (rotate (/ Math/PI 4.0) [0 1 0]
        (rotate (/ Math/PI 4.0) [1 0 0]
          (cube 45 12 12))))
    (translate [50.1 0 0] (cube 100 100 100)) ))


(def lensmount
  (union
    (difference
      leg
      vpart
      (translate [0 0 width]
        (cube 100 100 50))
      groove
      (rotate Math/PI [0 0 1] groove))
    (translate [0 0 -3] base)))


(def testgrooves
  (union
  groove
  (rotate Math/PI [0 0 1] groove)
  ))


(spit "output/lensmount.scad" (write-scad lensmount))


