
(define (problem plt3_5_3_3_2)
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

)
(:init
	(coloured n1 n1 c1)
	(coloured n1 n2 c2)
	(coloured n1 n3 c3)
	(coloured n2 n1 c1)
	(coloured n2 n2 c3)
	(coloured n2 n3 c1)
	(coloured n3 n1 c1)
	(coloured n3 n2 c1)
	(coloured n3 n3 c2)
	(coloured n4 n1 c3)
	(coloured n4 n2 c1)
	(coloured n4 n3 c2)
	(coloured n5 n1 c3)
	(coloured n5 n2 c2)
	(coloured n5 n3 c2)

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
    (exists (?x1 ?y1 - number)
	(and
	(forall (?x2 ?y2 - number) (or
    (and (= ?x1 ?x2) (= ?y1 ?y2))
	(coloured ?x2 ?y2 null)))))

)
)
