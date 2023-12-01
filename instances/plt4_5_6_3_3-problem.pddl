(define (problem plt4_5_6_3_3)
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
        loc_6_1 - location
        loc_7_1 - location
        loc_8_1 - location
        loc_1_2 - location
        loc_2_2 - location
        loc_3_2 - location
        loc_4_2 - location
        loc_5_2 - location
        loc_6_2 - location
        loc_7_2 - location
        loc_8_2 - location
        loc_1_3 - location
        loc_2_3 - location
        loc_3_3 - location
        loc_4_3 - location
        loc_5_3 - location
        loc_6_3 - location
        loc_7_3 - location
        loc_8_3 - location
        loc_1_4 - location
        loc_2_4 - location
        loc_3_4 - location
        loc_4_4 - location
        loc_5_4 - location
        loc_6_4 - location
        loc_7_4 - location
        loc_8_4 - location
        loc_1_5 - location
        loc_2_5 - location
        loc_3_5 - location
        loc_4_5 - location
        loc_5_5 - location
        loc_6_5 - location
        loc_7_5 - location
        loc_8_5 - location
        loc_1_6 - location
        loc_2_6 - location
        loc_3_6 - location
        loc_4_6 - location
        loc_5_6 - location
        loc_6_6 - location
        loc_7_6 - location
        loc_8_6 - location
        loc_1_7 - location
        loc_2_7 - location
        loc_3_7 - location
        loc_4_7 - location
        loc_5_7 - location
        loc_6_7 - location
        loc_7_7 - location
        loc_8_7 - location

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
        n19 - number
        n20 - number
        n21 - number
        n22 - number
        n23 - number
        n24 - number
        n25 - number
        n26 - number
        n27 - number
        n28 - number
        n29 - number
        n30 - number
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
        (next loc_5_1 loc_6_1 right)
        (next loc_5_1 loc_5_2 up)
        (next loc_6_1 loc_5_1 left)
        (next loc_6_1 loc_7_1 right)
        (next loc_6_1 loc_6_2 up)
        (next loc_7_1 loc_6_1 left)
        (next loc_7_1 loc_8_1 right)
        (next loc_7_1 loc_7_2 up)
        (next loc_8_1 loc_7_1 left)
        (next loc_8_1 loc_8_2 up)
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
        (next loc_5_2 loc_6_2 right)
        (next loc_5_2 loc_5_3 up)
        (next loc_5_2 loc_5_1 down)
        (next loc_6_2 loc_5_2 left)
        (next loc_6_2 loc_7_2 right)
        (next loc_6_2 loc_6_3 up)
        (next loc_6_2 loc_6_1 down)
        (next loc_7_2 loc_6_2 left)
        (next loc_7_2 loc_8_2 right)
        (next loc_7_2 loc_7_3 up)
        (next loc_7_2 loc_7_1 down)
        (next loc_8_2 loc_7_2 left)
        (next loc_8_2 loc_8_3 up)
        (next loc_8_2 loc_8_1 down)
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
        (next loc_5_3 loc_6_3 right)
        (next loc_5_3 loc_5_4 up)
        (next loc_5_3 loc_5_2 down)
        (next loc_6_3 loc_5_3 left)
        (next loc_6_3 loc_7_3 right)
        (next loc_6_3 loc_6_4 up)
        (next loc_6_3 loc_6_2 down)
        (next loc_7_3 loc_6_3 left)
        (next loc_7_3 loc_8_3 right)
        (next loc_7_3 loc_7_4 up)
        (next loc_7_3 loc_7_2 down)
        (next loc_8_3 loc_7_3 left)
        (next loc_8_3 loc_8_4 up)
        (next loc_8_3 loc_8_2 down)
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
        (next loc_5_4 loc_6_4 right)
        (next loc_5_4 loc_5_5 up)
        (next loc_5_4 loc_5_3 down)
        (next loc_6_4 loc_5_4 left)
        (next loc_6_4 loc_7_4 right)
        (next loc_6_4 loc_6_5 up)
        (next loc_6_4 loc_6_3 down)
        (next loc_7_4 loc_6_4 left)
        (next loc_7_4 loc_8_4 right)
        (next loc_7_4 loc_7_5 up)
        (next loc_7_4 loc_7_3 down)
        (next loc_8_4 loc_7_4 left)
        (next loc_8_4 loc_8_5 up)
        (next loc_8_4 loc_8_3 down)
        (next loc_1_5 loc_2_5 right)
        (next loc_1_5 loc_1_6 up)
        (next loc_1_5 loc_1_4 down)
        (next loc_2_5 loc_1_5 left)
        (next loc_2_5 loc_3_5 right)
        (next loc_2_5 loc_2_6 up)
        (next loc_2_5 loc_2_4 down)
        (next loc_3_5 loc_2_5 left)
        (next loc_3_5 loc_4_5 right)
        (next loc_3_5 loc_3_6 up)
        (next loc_3_5 loc_3_4 down)
        (next loc_4_5 loc_3_5 left)
        (next loc_4_5 loc_5_5 right)
        (next loc_4_5 loc_4_6 up)
        (next loc_4_5 loc_4_4 down)
        (next loc_5_5 loc_4_5 left)
        (next loc_5_5 loc_6_5 right)
        (next loc_5_5 loc_5_6 up)
        (next loc_5_5 loc_5_4 down)
        (next loc_6_5 loc_5_5 left)
        (next loc_6_5 loc_7_5 right)
        (next loc_6_5 loc_6_6 up)
        (next loc_6_5 loc_6_4 down)
        (next loc_7_5 loc_6_5 left)
        (next loc_7_5 loc_8_5 right)
        (next loc_7_5 loc_7_6 up)
        (next loc_7_5 loc_7_4 down)
        (next loc_8_5 loc_7_5 left)
        (next loc_8_5 loc_8_6 up)
        (next loc_8_5 loc_8_4 down)
        (next loc_1_6 loc_2_6 right)
        (next loc_1_6 loc_1_7 up)
        (next loc_1_6 loc_1_5 down)
        (next loc_2_6 loc_1_6 left)
        (next loc_2_6 loc_3_6 right)
        (next loc_2_6 loc_2_7 up)
        (next loc_2_6 loc_2_5 down)
        (next loc_3_6 loc_2_6 left)
        (next loc_3_6 loc_4_6 right)
        (next loc_3_6 loc_3_7 up)
        (next loc_3_6 loc_3_5 down)
        (next loc_4_6 loc_3_6 left)
        (next loc_4_6 loc_5_6 right)
        (next loc_4_6 loc_4_7 up)
        (next loc_4_6 loc_4_5 down)
        (next loc_5_6 loc_4_6 left)
        (next loc_5_6 loc_6_6 right)
        (next loc_5_6 loc_5_7 up)
        (next loc_5_6 loc_5_5 down)
        (next loc_6_6 loc_5_6 left)
        (next loc_6_6 loc_7_6 right)
        (next loc_6_6 loc_6_7 up)
        (next loc_6_6 loc_6_5 down)
        (next loc_7_6 loc_6_6 left)
        (next loc_7_6 loc_8_6 right)
        (next loc_7_6 loc_7_7 up)
        (next loc_7_6 loc_7_5 down)
        (next loc_8_6 loc_7_6 left)
        (next loc_8_6 loc_8_7 up)
        (next loc_8_6 loc_8_5 down)
        (next loc_1_7 loc_2_7 right)
        (next loc_1_7 loc_1_8 up)
        (next loc_1_7 loc_1_6 down)
        (next loc_2_7 loc_1_7 left)
        (next loc_2_7 loc_3_7 right)
        (next loc_2_7 loc_2_8 up)
        (next loc_2_7 loc_2_6 down)
        (next loc_3_7 loc_2_7 left)
        (next loc_3_7 loc_4_7 right)
        (next loc_3_7 loc_3_8 up)
        (next loc_3_7 loc_3_6 down)
        (next loc_4_7 loc_3_7 left)
        (next loc_4_7 loc_5_7 right)
        (next loc_4_7 loc_4_8 up)
        (next loc_4_7 loc_4_6 down)
        (next loc_5_7 loc_4_7 left)
        (next loc_5_7 loc_6_7 right)
        (next loc_5_7 loc_5_8 up)
        (next loc_5_7 loc_5_6 down)
        (next loc_6_7 loc_5_7 left)
        (next loc_6_7 loc_7_7 right)
        (next loc_6_7 loc_6_8 up)
        (next loc_6_7 loc_6_6 down)
        (next loc_7_7 loc_6_7 left)
        (next loc_7_7 loc_8_7 right)
        (next loc_7_7 loc_7_8 up)
        (next loc_7_7 loc_7_6 down)
        (next loc_8_7 loc_7_7 left)
        (next loc_8_7 loc_8_8 up)
        (next loc_8_7 loc_8_6 down)
        ;; bottom left = 1,1
        ;; x, y
        (coloured loc_1_1 wall)
        (coloured loc_2_1 wall)
        (coloured loc_3_1 wall)
        (coloured loc_4_1 wall)
        (coloured loc_5_1 wall)
        (coloured loc_6_1 wall)
        (coloured loc_7_1 wall)
        (coloured loc_8_1 wall)
        (coloured loc_1_2 none)
        (coloured loc_2_2 red)
        (coloured loc_3_2 green)
        (coloured loc_4_2 red)
        (coloured loc_5_2 blue)
        (coloured loc_6_2 red)
        (coloured loc_7_2 green)
        (coloured loc_8_2 wall)
        (coloured loc_1_3 none)
        (coloured loc_2_3 green)
        (coloured loc_3_3 green)
        (coloured loc_4_3 red)
        (coloured loc_5_3 green)
        (coloured loc_6_3 red)
        (coloured loc_7_3 green)
        (coloured loc_8_3 wall)
        (coloured loc_1_4 none)
        (coloured loc_2_4 red)
        (coloured loc_3_4 green)
        (coloured loc_4_4 green)
        (coloured loc_5_4 red)
        (coloured loc_6_4 red)
        (coloured loc_7_4 red)
        (coloured loc_8_4 wall)
        (coloured loc_1_5 none)
        (coloured loc_2_5 green)
        (coloured loc_3_5 green)
        (coloured loc_4_5 red)
        (coloured loc_5_5 green)
        (coloured loc_6_5 red)
        (coloured loc_7_5 green)
        (coloured loc_8_5 wall)
        (coloured loc_1_6 none)
        (coloured loc_2_6 red)
        (coloured loc_3_6 green)
        (coloured loc_4_6 red)
        (coloured loc_5_6 green)
        (coloured loc_6_6 green)
        (coloured loc_7_6 green)
        (coloured loc_8_6 wall)
        (coloured loc_1_7 none)
        (coloured loc_2_7 none)
        (coloured loc_3_7 none)
        (coloured loc_4_7 none)
        (coloured loc_5_7 none)
        (coloured loc_6_7 none)
        (coloured loc_7_7 none)
        (coloured loc_8_7 wall)

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
        (pred n18 n19)
        (pred n19 n20)
        (pred n20 n21)
        (pred n21 n22)
        (pred n22 n23)
        (pred n23 n24)
        (pred n24 n25)
        (pred n25 n26)
        (pred n26 n27)
        (pred n27 n28)
        (pred n28 n29)
        (pred n29 n30)

        (blocks_remaining n30)

        (= (total-cost) 0)
    )

    (:goal
        (and
            (or
                (blocks_remaining n3)
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
