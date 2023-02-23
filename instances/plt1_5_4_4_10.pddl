
(define (problem plt1_5_4_4_10)
(:domain plotting)
(:objects
	 n1 - number
	 n2 - number
	 n3 - number
	 n4 - number
	 n5 - number

	 c1 - colour
	 c2 - colour
	 c3 - colour
	 c4 - colour

)
(:init
	(coloured n1 n1 c1)
	(coloured n1 n2 c2)
	(coloured n1 n3 c3)
	(coloured n1 n4 c3)
	(coloured n2 n1 c4)
	(coloured n2 n2 c3)
	(coloured n2 n3 c1)
	(coloured n2 n4 c4)
	(coloured n3 n1 c1)
	(coloured n3 n2 c3)
	(coloured n3 n3 c2)
	(coloured n3 n4 c1)
	(coloured n4 n1 c3)
	(coloured n4 n2 c1)
	(coloured n4 n3 c1)
	(coloured n4 n4 c4)
	(coloured n5 n1 c1)
	(coloured n5 n2 c3)
	(coloured n5 n3 c4)
	(coloured n5 n4 c1)

	(hand wildcard)
	(succ n2 n1)
	(pred n1 n2)
	(succ n3 n2)
	(pred n2 n3)
	(succ n4 n3)
	(pred n3 n4)
	(succ n5 n4)
	(pred n4 n5)
	(lt n1 n2)
	(lt n1 n3)
	(lt n1 n4)
	(lt n1 n5)
	(lt n2 n3)
	(lt n2 n4)
	(lt n2 n5)
	(lt n3 n4)
	(lt n3 n5)
	(lt n4 n5)
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
	(islastcolumn n5)
	(istoprow n1)
	(isbottomrow n5)
	(distance n1 n2 n1)
	(distance n1 n3 n2)
	(distance n1 n4 n3)
	(distance n1 n5 n4)
	(distance n2 n1 n1)
	(distance n2 n3 n1)
	(distance n2 n4 n2)
	(distance n2 n5 n3)
	(distance n3 n1 n2)
	(distance n3 n2 n1)
	(distance n3 n4 n1)
	(distance n3 n5 n2)
	(distance n4 n1 n3)
	(distance n4 n2 n2)
	(distance n4 n3 n1)
	(distance n4 n5 n1)
	(distance n5 n1 n4)
	(distance n5 n2 n3)
	(distance n5 n3 n2)
	(distance n5 n4 n1)

)

(:goal
    (exists (?x1 ?y1 ?x2 ?y2 ?x3 ?y3 ?x4 ?y4 ?x5 ?y5 ?x6 ?y6 ?x7 ?y7 ?x8 ?y8 ?x9 ?y9 - number)
	(and
	(or (not (= ?x1 ?x2)) (not (= ?y1 ?y2)))
	(or (not (= ?x1 ?x3)) (not (= ?y1 ?y3)))
	(or (not (= ?x1 ?x4)) (not (= ?y1 ?y4)))
	(or (not (= ?x1 ?x5)) (not (= ?y1 ?y5)))
	(or (not (= ?x1 ?x6)) (not (= ?y1 ?y6)))
	(or (not (= ?x1 ?x7)) (not (= ?y1 ?y7)))
	(or (not (= ?x1 ?x8)) (not (= ?y1 ?y8)))
	(or (not (= ?x1 ?x9)) (not (= ?y1 ?y9)))
	(or (not (= ?x2 ?x3)) (not (= ?y2 ?y3)))
	(or (not (= ?x2 ?x4)) (not (= ?y2 ?y4)))
	(or (not (= ?x2 ?x5)) (not (= ?y2 ?y5)))
	(or (not (= ?x2 ?x6)) (not (= ?y2 ?y6)))
	(or (not (= ?x2 ?x7)) (not (= ?y2 ?y7)))
	(or (not (= ?x2 ?x8)) (not (= ?y2 ?y8)))
	(or (not (= ?x2 ?x9)) (not (= ?y2 ?y9)))
	(or (not (= ?x3 ?x4)) (not (= ?y3 ?y4)))
	(or (not (= ?x3 ?x5)) (not (= ?y3 ?y5)))
	(or (not (= ?x3 ?x6)) (not (= ?y3 ?y6)))
	(or (not (= ?x3 ?x7)) (not (= ?y3 ?y7)))
	(or (not (= ?x3 ?x8)) (not (= ?y3 ?y8)))
	(or (not (= ?x3 ?x9)) (not (= ?y3 ?y9)))
	(or (not (= ?x4 ?x5)) (not (= ?y4 ?y5)))
	(or (not (= ?x4 ?x6)) (not (= ?y4 ?y6)))
	(or (not (= ?x4 ?x7)) (not (= ?y4 ?y7)))
	(or (not (= ?x4 ?x8)) (not (= ?y4 ?y8)))
	(or (not (= ?x4 ?x9)) (not (= ?y4 ?y9)))
	(or (not (= ?x5 ?x6)) (not (= ?y5 ?y6)))
	(or (not (= ?x5 ?x7)) (not (= ?y5 ?y7)))
	(or (not (= ?x5 ?x8)) (not (= ?y5 ?y8)))
	(or (not (= ?x5 ?x9)) (not (= ?y5 ?y9)))
	(or (not (= ?x6 ?x7)) (not (= ?y6 ?y7)))
	(or (not (= ?x6 ?x8)) (not (= ?y6 ?y8)))
	(or (not (= ?x6 ?x9)) (not (= ?y6 ?y9)))
	(or (not (= ?x7 ?x8)) (not (= ?y7 ?y8)))
	(or (not (= ?x7 ?x9)) (not (= ?y7 ?y9)))
	(or (not (= ?x8 ?x9)) (not (= ?y8 ?y9)))
	(forall (?x10 ?y10 - number) (or
    (and (= ?x1 ?x10) (= ?y1 ?y10))
    (and (= ?x2 ?x10) (= ?y2 ?y10))
    (and (= ?x3 ?x10) (= ?y3 ?y10))
    (and (= ?x4 ?x10) (= ?y4 ?y10))
    (and (= ?x5 ?x10) (= ?y5 ?y10))
    (and (= ?x6 ?x10) (= ?y6 ?y10))
    (and (= ?x7 ?x10) (= ?y7 ?y10))
    (and (= ?x8 ?x10) (= ?y8 ?y10))
    (and (= ?x9 ?x10) (= ?y9 ?y10))
	(coloured ?x10 ?y10 null)))))

)
)
