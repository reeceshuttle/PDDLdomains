(define (problem dressed)
    (:domain dressed)
    (:objects nice-pants1 - nice-pants
              collared-shirt1 - collared-shirt
              suit-jacket1 - suit-jacket
              sweatpants1 - sweatpants
              sweatshirt1 - sweatshirt
              dress1 - dress
              person1 - person
    )
    (:init
        (in-closet nice-pants1)
        (in-closet collared-shirt1)
        (in-closet suit-jacket1)
        (in-closet sweatpants1)
        (in-closet sweatshirt1)
        (in-closet dress1)
        (wearing-nothing-casual person1)
        (wearing-nothing-formal person1)
        (is-man person1)
    )
    (:goal (and (attending-formal-event person1)))
)