
(define (problem plt4_3_3_3_4)
(:domain plotting)
(:objects
	 n1 - number
	 n2 - number
	 n3 - number

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
	(coloured n2 n3 c3)
	(coloured n3 n1 c2)
	(coloured n3 n2 c2)
	(coloured n3 n3 c3)

	(hand wildcard)
	(succ n2 n1)
	(pred n1 n2)
	(succ n3 n2)
	(pred n2 n3)
	(lt n1 n2)
	(lt n1 n3)
	(lt n2 n3)
	(gt n3 n2)
	(gt n3 n1)
	(gt n2 n1)

	(isfirstcolumn n1)
	(islastcolumn n3)
	(istoprow n1)
	(isbottomrow n3)
	(distance n1 n2 n1)
	(distance n1 n3 n2)
	(distance n2 n1 n1)
	(distance n2 n3 n1)
	(distance n3 n1 n2)
	(distance n3 n2 n1)

)

(:goal
    (exists (?x1 ?y1 ?x2 ?y2 ?x3 ?y3 - number)
	(and
	(or (not (= ?x1 ?x2)) (not (= ?y1 ?y2)))
	(or (not (= ?x1 ?x3)) (not (= ?y1 ?y3)))
	(or (not (= ?x2 ?x3)) (not (= ?y2 ?y3)))
	(forall (?x4 ?y4 - number) (or
    (and (= ?x1 ?x4) (= ?y1 ?y4))
    (and (= ?x2 ?x4) (= ?y2 ?y4))
    (and (= ?x3 ?x4) (= ?y3 ?y4))
	(coloured ?x4 ?y4 null)))))

)
)
