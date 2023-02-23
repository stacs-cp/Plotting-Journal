
(define (problem plt1_6_5_5_15)
(:domain plotting)
(:objects
	 n1 - number
	 n2 - number
	 n3 - number
	 n4 - number
	 n5 - number
	 n6 - number

	 c1 - colour
	 c2 - colour
	 c3 - colour
	 c4 - colour
	 c5 - colour

)
(:init
	(coloured n1 n1 c1)
	(coloured n1 n2 c1)
	(coloured n1 n3 c1)
	(coloured n1 n4 c1)
	(coloured n1 n5 c1)
	(coloured n2 n1 c1)
	(coloured n2 n2 c1)
	(coloured n2 n3 c1)
	(coloured n2 n4 c1)
	(coloured n2 n5 c2)
	(coloured n3 n1 c2)
	(coloured n3 n2 c1)
	(coloured n3 n3 c3)
	(coloured n3 n4 c4)
	(coloured n3 n5 c4)
	(coloured n4 n1 c1)
	(coloured n4 n2 c2)
	(coloured n4 n3 c2)
	(coloured n4 n4 c4)
	(coloured n4 n5 c3)
	(coloured n5 n1 c2)
	(coloured n5 n2 c2)
	(coloured n5 n3 c1)
	(coloured n5 n4 c2)
	(coloured n5 n5 c1)
	(coloured n6 n1 c4)
	(coloured n6 n2 c5)
	(coloured n6 n3 c5)
	(coloured n6 n4 c3)
	(coloured n6 n5 c4)

	(hand wildcard)
	(succ n2 n1)
	(pred n1 n2)
	(succ n3 n2)
	(pred n2 n3)
	(succ n4 n3)
	(pred n3 n4)
	(succ n5 n4)
	(pred n4 n5)
	(succ n6 n5)
	(pred n5 n6)
	(lt n1 n2)
	(lt n1 n3)
	(lt n1 n4)
	(lt n1 n5)
	(lt n1 n6)
	(lt n2 n3)
	(lt n2 n4)
	(lt n2 n5)
	(lt n2 n6)
	(lt n3 n4)
	(lt n3 n5)
	(lt n3 n6)
	(lt n4 n5)
	(lt n4 n6)
	(lt n5 n6)
	(gt n6 n5)
	(gt n6 n4)
	(gt n6 n3)
	(gt n6 n2)
	(gt n6 n1)
	(gt n5 n4)
	(gt n5 n3)
	(gt n5 n2)
	(gt n5 n1)
	(gt n4 n3)
	(gt n4 n2)
	(gt n4 n1)
	(gt n3 n2)
	(gt n3 n1)
	(gt n2 n1)

	(isfirstcolumn n1)
	(islastcolumn n6)
	(istoprow n1)
	(isbottomrow n6)
	(distance n1 n2 n1)
	(distance n1 n3 n2)
	(distance n1 n4 n3)
	(distance n1 n5 n4)
	(distance n1 n6 n5)
	(distance n2 n1 n1)
	(distance n2 n3 n1)
	(distance n2 n4 n2)
	(distance n2 n5 n3)
	(distance n2 n6 n4)
	(distance n3 n1 n2)
	(distance n3 n2 n1)
	(distance n3 n4 n1)
	(distance n3 n5 n2)
	(distance n3 n6 n3)
	(distance n4 n1 n3)
	(distance n4 n2 n2)
	(distance n4 n3 n1)
	(distance n4 n5 n1)
	(distance n4 n6 n2)
	(distance n5 n1 n4)
	(distance n5 n2 n3)
	(distance n5 n3 n2)
	(distance n5 n4 n1)
	(distance n5 n6 n1)
	(distance n6 n1 n5)
	(distance n6 n2 n4)
	(distance n6 n3 n3)
	(distance n6 n4 n2)
	(distance n6 n5 n1)

)

(:goal
    (exists (?x1 ?y1 ?x2 ?y2 ?x3 ?y3 ?x4 ?y4 ?x5 ?y5 ?x6 ?y6 ?x7 ?y7 ?x8 ?y8 ?x9 ?y9 ?x10 ?y10 ?x11 ?y11 ?x12 ?y12 ?x13 ?y13 ?x14 ?y14 - number)
	(and
	(or (not (= ?x1 ?x2)) (not (= ?y1 ?y2)))
	(or (not (= ?x1 ?x3)) (not (= ?y1 ?y3)))
	(or (not (= ?x1 ?x4)) (not (= ?y1 ?y4)))
	(or (not (= ?x1 ?x5)) (not (= ?y1 ?y5)))
	(or (not (= ?x1 ?x6)) (not (= ?y1 ?y6)))
	(or (not (= ?x1 ?x7)) (not (= ?y1 ?y7)))
	(or (not (= ?x1 ?x8)) (not (= ?y1 ?y8)))
	(or (not (= ?x1 ?x9)) (not (= ?y1 ?y9)))
	(or (not (= ?x1 ?x10)) (not (= ?y1 ?y10)))
	(or (not (= ?x1 ?x11)) (not (= ?y1 ?y11)))
	(or (not (= ?x1 ?x12)) (not (= ?y1 ?y12)))
	(or (not (= ?x1 ?x13)) (not (= ?y1 ?y13)))
	(or (not (= ?x1 ?x14)) (not (= ?y1 ?y14)))
	(or (not (= ?x2 ?x3)) (not (= ?y2 ?y3)))
	(or (not (= ?x2 ?x4)) (not (= ?y2 ?y4)))
	(or (not (= ?x2 ?x5)) (not (= ?y2 ?y5)))
	(or (not (= ?x2 ?x6)) (not (= ?y2 ?y6)))
	(or (not (= ?x2 ?x7)) (not (= ?y2 ?y7)))
	(or (not (= ?x2 ?x8)) (not (= ?y2 ?y8)))
	(or (not (= ?x2 ?x9)) (not (= ?y2 ?y9)))
	(or (not (= ?x2 ?x10)) (not (= ?y2 ?y10)))
	(or (not (= ?x2 ?x11)) (not (= ?y2 ?y11)))
	(or (not (= ?x2 ?x12)) (not (= ?y2 ?y12)))
	(or (not (= ?x2 ?x13)) (not (= ?y2 ?y13)))
	(or (not (= ?x2 ?x14)) (not (= ?y2 ?y14)))
	(or (not (= ?x3 ?x4)) (not (= ?y3 ?y4)))
	(or (not (= ?x3 ?x5)) (not (= ?y3 ?y5)))
	(or (not (= ?x3 ?x6)) (not (= ?y3 ?y6)))
	(or (not (= ?x3 ?x7)) (not (= ?y3 ?y7)))
	(or (not (= ?x3 ?x8)) (not (= ?y3 ?y8)))
	(or (not (= ?x3 ?x9)) (not (= ?y3 ?y9)))
	(or (not (= ?x3 ?x10)) (not (= ?y3 ?y10)))
	(or (not (= ?x3 ?x11)) (not (= ?y3 ?y11)))
	(or (not (= ?x3 ?x12)) (not (= ?y3 ?y12)))
	(or (not (= ?x3 ?x13)) (not (= ?y3 ?y13)))
	(or (not (= ?x3 ?x14)) (not (= ?y3 ?y14)))
	(or (not (= ?x4 ?x5)) (not (= ?y4 ?y5)))
	(or (not (= ?x4 ?x6)) (not (= ?y4 ?y6)))
	(or (not (= ?x4 ?x7)) (not (= ?y4 ?y7)))
	(or (not (= ?x4 ?x8)) (not (= ?y4 ?y8)))
	(or (not (= ?x4 ?x9)) (not (= ?y4 ?y9)))
	(or (not (= ?x4 ?x10)) (not (= ?y4 ?y10)))
	(or (not (= ?x4 ?x11)) (not (= ?y4 ?y11)))
	(or (not (= ?x4 ?x12)) (not (= ?y4 ?y12)))
	(or (not (= ?x4 ?x13)) (not (= ?y4 ?y13)))
	(or (not (= ?x4 ?x14)) (not (= ?y4 ?y14)))
	(or (not (= ?x5 ?x6)) (not (= ?y5 ?y6)))
	(or (not (= ?x5 ?x7)) (not (= ?y5 ?y7)))
	(or (not (= ?x5 ?x8)) (not (= ?y5 ?y8)))
	(or (not (= ?x5 ?x9)) (not (= ?y5 ?y9)))
	(or (not (= ?x5 ?x10)) (not (= ?y5 ?y10)))
	(or (not (= ?x5 ?x11)) (not (= ?y5 ?y11)))
	(or (not (= ?x5 ?x12)) (not (= ?y5 ?y12)))
	(or (not (= ?x5 ?x13)) (not (= ?y5 ?y13)))
	(or (not (= ?x5 ?x14)) (not (= ?y5 ?y14)))
	(or (not (= ?x6 ?x7)) (not (= ?y6 ?y7)))
	(or (not (= ?x6 ?x8)) (not (= ?y6 ?y8)))
	(or (not (= ?x6 ?x9)) (not (= ?y6 ?y9)))
	(or (not (= ?x6 ?x10)) (not (= ?y6 ?y10)))
	(or (not (= ?x6 ?x11)) (not (= ?y6 ?y11)))
	(or (not (= ?x6 ?x12)) (not (= ?y6 ?y12)))
	(or (not (= ?x6 ?x13)) (not (= ?y6 ?y13)))
	(or (not (= ?x6 ?x14)) (not (= ?y6 ?y14)))
	(or (not (= ?x7 ?x8)) (not (= ?y7 ?y8)))
	(or (not (= ?x7 ?x9)) (not (= ?y7 ?y9)))
	(or (not (= ?x7 ?x10)) (not (= ?y7 ?y10)))
	(or (not (= ?x7 ?x11)) (not (= ?y7 ?y11)))
	(or (not (= ?x7 ?x12)) (not (= ?y7 ?y12)))
	(or (not (= ?x7 ?x13)) (not (= ?y7 ?y13)))
	(or (not (= ?x7 ?x14)) (not (= ?y7 ?y14)))
	(or (not (= ?x8 ?x9)) (not (= ?y8 ?y9)))
	(or (not (= ?x8 ?x10)) (not (= ?y8 ?y10)))
	(or (not (= ?x8 ?x11)) (not (= ?y8 ?y11)))
	(or (not (= ?x8 ?x12)) (not (= ?y8 ?y12)))
	(or (not (= ?x8 ?x13)) (not (= ?y8 ?y13)))
	(or (not (= ?x8 ?x14)) (not (= ?y8 ?y14)))
	(or (not (= ?x9 ?x10)) (not (= ?y9 ?y10)))
	(or (not (= ?x9 ?x11)) (not (= ?y9 ?y11)))
	(or (not (= ?x9 ?x12)) (not (= ?y9 ?y12)))
	(or (not (= ?x9 ?x13)) (not (= ?y9 ?y13)))
	(or (not (= ?x9 ?x14)) (not (= ?y9 ?y14)))
	(or (not (= ?x10 ?x11)) (not (= ?y10 ?y11)))
	(or (not (= ?x10 ?x12)) (not (= ?y10 ?y12)))
	(or (not (= ?x10 ?x13)) (not (= ?y10 ?y13)))
	(or (not (= ?x10 ?x14)) (not (= ?y10 ?y14)))
	(or (not (= ?x11 ?x12)) (not (= ?y11 ?y12)))
	(or (not (= ?x11 ?x13)) (not (= ?y11 ?y13)))
	(or (not (= ?x11 ?x14)) (not (= ?y11 ?y14)))
	(or (not (= ?x12 ?x13)) (not (= ?y12 ?y13)))
	(or (not (= ?x12 ?x14)) (not (= ?y12 ?y14)))
	(or (not (= ?x13 ?x14)) (not (= ?y13 ?y14)))
	(forall (?x15 ?y15 - number) (or
    (and (= ?x1 ?x15) (= ?y1 ?y15))
    (and (= ?x2 ?x15) (= ?y2 ?y15))
    (and (= ?x3 ?x15) (= ?y3 ?y15))
    (and (= ?x4 ?x15) (= ?y4 ?y15))
    (and (= ?x5 ?x15) (= ?y5 ?y15))
    (and (= ?x6 ?x15) (= ?y6 ?y15))
    (and (= ?x7 ?x15) (= ?y7 ?y15))
    (and (= ?x8 ?x15) (= ?y8 ?y15))
    (and (= ?x9 ?x15) (= ?y9 ?y15))
    (and (= ?x10 ?x15) (= ?y10 ?y15))
    (and (= ?x11 ?x15) (= ?y11 ?y15))
    (and (= ?x12 ?x15) (= ?y12 ?y15))
    (and (= ?x13 ?x15) (= ?y13 ?y15))
    (and (= ?x14 ?x15) (= ?y14 ?y15))
	(coloured ?x15 ?y15 null)))))

)
)
