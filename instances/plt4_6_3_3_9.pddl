
(define (problem plt4_6_3_3_9)
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

)
(:init
	(coloured n1 n1 c1)
	(coloured n1 n2 c2)
	(coloured n1 n3 c2)
	(coloured n2 n1 c2)
	(coloured n2 n2 c3)
	(coloured n2 n3 c2)
	(coloured n3 n1 c1)
	(coloured n3 n2 c1)
	(coloured n3 n3 c2)
	(coloured n4 n1 c2)
	(coloured n4 n2 c1)
	(coloured n4 n3 c1)
	(coloured n5 n1 c3)
	(coloured n5 n2 c3)
	(coloured n5 n3 c3)
	(coloured n6 n1 c2)
	(coloured n6 n2 c1)
	(coloured n6 n3 c3)

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
    (exists (?x1 ?y1 ?x2 ?y2 ?x3 ?y3 ?x4 ?y4 ?x5 ?y5 ?x6 ?y6 ?x7 ?y7 ?x8 ?y8 - number)
	(and
	(or (not (= ?x1 ?x2)) (not (= ?y1 ?y2)))
	(or (not (= ?x1 ?x3)) (not (= ?y1 ?y3)))
	(or (not (= ?x1 ?x4)) (not (= ?y1 ?y4)))
	(or (not (= ?x1 ?x5)) (not (= ?y1 ?y5)))
	(or (not (= ?x1 ?x6)) (not (= ?y1 ?y6)))
	(or (not (= ?x1 ?x7)) (not (= ?y1 ?y7)))
	(or (not (= ?x1 ?x8)) (not (= ?y1 ?y8)))
	(or (not (= ?x2 ?x3)) (not (= ?y2 ?y3)))
	(or (not (= ?x2 ?x4)) (not (= ?y2 ?y4)))
	(or (not (= ?x2 ?x5)) (not (= ?y2 ?y5)))
	(or (not (= ?x2 ?x6)) (not (= ?y2 ?y6)))
	(or (not (= ?x2 ?x7)) (not (= ?y2 ?y7)))
	(or (not (= ?x2 ?x8)) (not (= ?y2 ?y8)))
	(or (not (= ?x3 ?x4)) (not (= ?y3 ?y4)))
	(or (not (= ?x3 ?x5)) (not (= ?y3 ?y5)))
	(or (not (= ?x3 ?x6)) (not (= ?y3 ?y6)))
	(or (not (= ?x3 ?x7)) (not (= ?y3 ?y7)))
	(or (not (= ?x3 ?x8)) (not (= ?y3 ?y8)))
	(or (not (= ?x4 ?x5)) (not (= ?y4 ?y5)))
	(or (not (= ?x4 ?x6)) (not (= ?y4 ?y6)))
	(or (not (= ?x4 ?x7)) (not (= ?y4 ?y7)))
	(or (not (= ?x4 ?x8)) (not (= ?y4 ?y8)))
	(or (not (= ?x5 ?x6)) (not (= ?y5 ?y6)))
	(or (not (= ?x5 ?x7)) (not (= ?y5 ?y7)))
	(or (not (= ?x5 ?x8)) (not (= ?y5 ?y8)))
	(or (not (= ?x6 ?x7)) (not (= ?y6 ?y7)))
	(or (not (= ?x6 ?x8)) (not (= ?y6 ?y8)))
	(or (not (= ?x7 ?x8)) (not (= ?y7 ?y8)))
	(forall (?x9 ?y9 - number) (or
    (and (= ?x1 ?x9) (= ?y1 ?y9))
    (and (= ?x2 ?x9) (= ?y2 ?y9))
    (and (= ?x3 ?x9) (= ?y3 ?y9))
    (and (= ?x4 ?x9) (= ?y4 ?y9))
    (and (= ?x5 ?x9) (= ?y5 ?y9))
    (and (= ?x6 ?x9) (= ?y6 ?y9))
    (and (= ?x7 ?x9) (= ?y7 ?y9))
    (and (= ?x8 ?x9) (= ?y8 ?y9))
	(coloured ?x9 ?y9 null)))))

)
)
