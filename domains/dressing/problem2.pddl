(define (problem dressed)
    (:domain dressed)
    (:objects nice_pants1 nice_pants2 - nice_pants
              collared_shirt1 collared_shirt2 - collared_shirt
              suit_jacket1 suit_jacket2 - suit_jacket
              sweatpants1 sweatpants2 - sweatpants
              sweatshirt1 sweatshirt2 - sweatshirt
              person1 person2 - person
    )
    (:init
        (in_closet nice_pants1)
        (in_closet collared_shirt1)
        (in_closet suit_jacket1)
        (in_closet sweatpants1)
        (in_closet sweatshirt1)
        (in_closet nice_pants2)
        (in_closet collared_shirt2)
        (in_closet suit_jacket2)
        (in_closet sweatpants2)
        (in_closet sweatshirt2)
        (not_wearing_collared_shirt person1)
        (not_wearing_suit_jacket person1)
        (not_wearing_nice_pants person1)
        (not_wearing_sweatshirt person1)
        (not_wearing_sweatpants person1)
        (not_wearing_collared_shirt person2)
        (not_wearing_suit_jacket person2)
        (not_wearing_nice_pants person2)
        (not_wearing_sweatshirt person2)
        (not_wearing_sweatpants person2)
    )
    (:goal (and (attending_formal_event person1) (attending_casual_event person2)))
)