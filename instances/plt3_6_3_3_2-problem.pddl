(define (problem plt3_6_3_3_2)
    (:domain plotting)

    (:objects
        none - colour
        red - colour
        green - colour
        blue - colour
        wall - colour

        loc_1_1 - location
        loc_2_1 - location
        loc_3_1 - location
        loc_4_1 - location
        loc_5_1 - location
        loc_1_2 - location
        loc_2_2 - location
        loc_3_2 - location
        loc_4_2 - location
        loc_5_2 - location
        loc_1_3 - location
        loc_2_3 - location
        loc_3_3 - location
        loc_4_3 - location
        loc_5_3 - location
        loc_1_4 - location
        loc_2_4 - location
        loc_3_4 - location
        loc_4_4 - location
        loc_5_4 - location
        loc_1_5 - location
        loc_2_5 - location
        loc_3_5 - location
        loc_4_5 - location
        loc_5_5 - location
        loc_1_6 - location
        loc_2_6 - location
        loc_3_6 - location
        loc_4_6 - location
        loc_5_6 - location
        loc_1_7 - location
        loc_2_7 - location
        loc_3_7 - location
        loc_4_7 - location
        loc_5_7 - location
        loc_1_8 - location
        loc_2_8 - location
        loc_3_8 - location
        loc_4_8 - location
        loc_5_8 - location

        n0 - number
        n1 - number
        n2 - number
        n3 - number
        n4 - number
        n5 - number
        n6 - number
        n7 - number
        n8 - number
        n9 - number
        n10 - number
        n11 - number
        n12 - number
        n13 - number
        n14 - number
        n15 - number
        n16 - number
        n17 - number
        n18 - number
    )
    (:init
        (next loc_1_1 loc_2_1 right)
        (next loc_1_1 loc_1_2 up)
        (next loc_2_1 loc_1_1 left)
        (next loc_2_1 loc_3_1 right)
        (next loc_2_1 loc_2_2 up)
        (next loc_3_1 loc_2_1 left)
        (next loc_3_1 loc_4_1 right)
        (next loc_3_1 loc_3_2 up)
        (next loc_4_1 loc_3_1 left)
        (next loc_4_1 loc_5_1 right)
        (next loc_4_1 loc_4_2 up)
        (next loc_5_1 loc_4_1 left)
        (next loc_5_1 loc_5_2 up)
        (next loc_1_2 loc_2_2 right)
        (next loc_1_2 loc_1_3 up)
        (next loc_1_2 loc_1_1 down)
        (next loc_2_2 loc_1_2 left)
        (next loc_2_2 loc_3_2 right)
        (next loc_2_2 loc_2_3 up)
        (next loc_2_2 loc_2_1 down)
        (next loc_3_2 loc_2_2 left)
        (next loc_3_2 loc_4_2 right)
        (next loc_3_2 loc_3_3 up)
        (next loc_3_2 loc_3_1 down)
        (next loc_4_2 loc_3_2 left)
        (next loc_4_2 loc_5_2 right)
        (next loc_4_2 loc_4_3 up)
        (next loc_4_2 loc_4_1 down)
        (next loc_5_2 loc_4_2 left)
        (next loc_5_2 loc_5_3 up)
        (next loc_5_2 loc_5_1 down)
        (next loc_1_3 loc_2_3 right)
        (next loc_1_3 loc_1_4 up)
        (next loc_1_3 loc_1_2 down)
        (next loc_2_3 loc_1_3 left)
        (next loc_2_3 loc_3_3 right)
        (next loc_2_3 loc_2_4 up)
        (next loc_2_3 loc_2_2 down)
        (next loc_3_3 loc_2_3 left)
        (next loc_3_3 loc_4_3 right)
        (next loc_3_3 loc_3_4 up)
        (next loc_3_3 loc_3_2 down)
        (next loc_4_3 loc_3_3 left)
        (next loc_4_3 loc_5_3 right)
        (next loc_4_3 loc_4_4 up)
        (next loc_4_3 loc_4_2 down)
        (next loc_5_3 loc_4_3 left)
        (next loc_5_3 loc_5_4 up)
        (next loc_5_3 loc_5_2 down)
        (next loc_1_4 loc_2_4 right)
        (next loc_1_4 loc_1_5 up)
        (next loc_1_4 loc_1_3 down)
        (next loc_2_4 loc_1_4 left)
        (next loc_2_4 loc_3_4 right)
        (next loc_2_4 loc_2_5 up)
        (next loc_2_4 loc_2_3 down)
        (next loc_3_4 loc_2_4 left)
        (next loc_3_4 loc_4_4 right)
        (next loc_3_4 loc_3_5 up)
        (next loc_3_4 loc_3_3 down)
        (next loc_4_4 loc_3_4 left)
        (next loc_4_4 loc_5_4 right)
        (next loc_4_4 loc_4_5 up)
        (next loc_4_4 loc_4_3 down)
        (next loc_5_4 loc_4_4 left)
        (next loc_5_4 loc_5_5 up)
        (next loc_5_4 loc_5_3 down)
        (next loc_1_5 loc_2_5 right)
        (next loc_1_5 loc_1_4 down)
        (next loc_2_5 loc_1_5 left)
        (next loc_2_5 loc_3_5 right)
        (next loc_2_5 loc_2_4 down)
        (next loc_3_5 loc_2_5 left)
        (next loc_3_5 loc_4_5 right)
        (next loc_3_5 loc_3_4 down)
        (next loc_4_5 loc_3_5 left)
        (next loc_4_5 loc_5_5 right)
        (next loc_4_5 loc_4_4 down)
        (next loc_5_5 loc_4_5 left)
        (next loc_5_5 loc_5_4 down)
        (next loc_1_6 loc_2_6 right)
        (next loc_1_6 loc_1_5 down)
        (next loc_2_6 loc_1_6 left)
        (next loc_2_6 loc_3_6 right)
        (next loc_2_6 loc_2_5 down)
        (next loc_3_6 loc_2_6 left)
        (next loc_3_6 loc_4_6 right)
        (next loc_3_6 loc_3_5 down)
        (next loc_4_6 loc_3_6 left)
        (next loc_4_6 loc_5_6 right)
        (next loc_4_6 loc_4_5 down)
        (next loc_5_6 loc_4_6 left)
        (next loc_5_6 loc_5_5 down)
        (next loc_1_7 loc_2_7 right)
        (next loc_1_7 loc_1_6 down)
        (next loc_2_7 loc_1_7 left)
        (next loc_2_7 loc_3_7 right)
        (next loc_2_7 loc_2_6 down)
        (next loc_3_7 loc_2_7 left)
        (next loc_3_7 loc_4_7 right)
        (next loc_3_7 loc_3_6 down)
        (next loc_4_7 loc_3_7 left)
        (next loc_4_7 loc_5_7 right)
        (next loc_4_7 loc_4_6 down)
        (next loc_5_7 loc_4_7 left)
        (next loc_5_7 loc_5_6 down)
        (next loc_1_8 loc_2_8 right)
        (next loc_1_8 loc_1_7 down)
        (next loc_2_8 loc_1_8 left)
        (next loc_2_8 loc_3_8 right)
        (next loc_2_8 loc_2_7 down)
        (next loc_3_8 loc_2_8 left)
        (next loc_3_8 loc_4_8 right)
        (next loc_3_8 loc_3_7 down)
        (next loc_4_8 loc_3_8 left)
        (next loc_4_8 loc_5_8 right)
        (next loc_4_8 loc_4_7 down)
        (next loc_5_8 loc_4_8 left)
        (next loc_5_8 loc_5_7 down)
        ;; bottom left = 1,1
        ;; x, y
        (coloured loc_1_1 wall)
        (coloured loc_2_1 wall)
        (coloured loc_3_1 wall)
        (coloured loc_4_1 wall)
        (coloured loc_5_1 wall)
        (coloured loc_1_2 none)
        (coloured loc_2_2 blue)
        (coloured loc_3_2 blue)
        (coloured loc_4_2 blue)
        (coloured loc_5_2 wall)
        (coloured loc_1_3 none)
        (coloured loc_2_3 green)
        (coloured loc_3_3 green)
        (coloured loc_4_3 green)
        (coloured loc_5_3 wall)
        (coloured loc_1_4 none)
        (coloured loc_2_4 red)
        (coloured loc_3_4 blue)
        (coloured loc_4_4 green)
        (coloured loc_5_4 wall)
        (coloured loc_1_5 none)
        (coloured loc_2_5 green)
        (coloured loc_3_5 blue)
        (coloured loc_4_5 green)
        (coloured loc_5_5 wall)
        (coloured loc_1_6 none)
        (coloured loc_2_6 red)
        (coloured loc_3_6 green)
        (coloured loc_4_6 green)
        (coloured loc_5_6 wall)
        (coloured loc_1_7 none)
        (coloured loc_2_7 red)
        (coloured loc_3_7 red)
        (coloured loc_4_7 red)
        (coloured loc_5_7 wall)
        (coloured loc_1_8 none)
        (coloured loc_2_8 none)
        (coloured loc_3_8 none)
        (coloured loc_4_8 none)
        (coloured loc_5_8 wall)

        (hand wildcard)

        ; n1 is the predecessor of n2
        (pred n0 n1)
        (pred n1 n2)
        (pred n2 n3)
        (pred n3 n4)
        (pred n4 n5)
        (pred n5 n6)
        (pred n6 n7)
        (pred n7 n8)
        (pred n8 n9)
        (pred n9 n10)
        (pred n10 n11)
        (pred n11 n12)
        (pred n12 n13)
        (pred n13 n14)
        (pred n14 n15)
        (pred n15 n16)
        (pred n16 n17)
        (pred n17 n18)

        (blocks_remaining n18)

        (= (total-cost) 0)
    )

    (:goal
        (and
            (or
                (blocks_remaining n2)
                (blocks_remaining n1)
                (blocks_remaining n0))
            (not (shooting_horizontal_flag))
            (not (shooting_vertical_flag))
            (not (falling_flag))
        )
    )

    (:metric minimize (total-cost))
)
