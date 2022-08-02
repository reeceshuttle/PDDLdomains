(define (problem dressed)
    (:domain dressed)
    (:objects nice-pants1 - nice-pants
              collared-shirt1 - collared-shirt
              suit-jacket1 - suit-jacket
              sweatpants1 - sweatpants
              sweatshirt1 - sweatshirt
              person1 - person
    )
    (:init
        (in-closet nice-pants1)
        (in-closet collared-shirt1)
        (in-closet suit-jacket1)
        (in-closet sweatpants1)
        (in-closet sweatshirt1)
        (not-wearing-collared-shirt person1)
        (not-wearing-suit-jacket person1)
        (not-wearing-nice-pants person1)
        (not-wearing-sweatshirt person1)
        (not-wearing-sweatpants person1)
    )
    (:goal (and (attending-formal-event person1)))
)