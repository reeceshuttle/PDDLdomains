(define (problem dressed)
    (:domain dressed)
    (:objects nice-pants1 nice-pants2 - nice-pants
              collared-shirt1 collared-shirt2- collared-shirt
              suit-jacket1 suit-jacket2- suit-jacket
              sweatpants1 sweatpants2- sweatpants
              sweatshirt1 sweatshirt2- sweatshirt
              person1 person2 - person
    )
    (:init
        (in-closet nice-pants1)
        (in-closet collared-shirt1)
        (in-closet suit-jacket1)
        (in-closet sweatpants1)
        (in-closet sweatshirt1)
        (in-closet nice-pants2)
        (in-closet collared-shirt2)
        (in-closet suit-jacket2)
        (in-closet sweatpants2)
        (in-closet sweatshirt2)
        (not-wearing-collared-shirt person1)
        (not-wearing-suit-jacket person1)
        (not-wearing-nice-pants person1)
        (not-wearing-sweatshirt person1)
        (not-wearing-sweatpants person1)
        (not-wearing-collared-shirt person2)
        (not-wearing-suit-jacket person2)
        (not-wearing-nice-pants person2)
        (not-wearing-sweatshirt person2)
        (not-wearing-sweatpants person2)
    )
    (:goal (and (attending-formal-event person1) (attending-casual-event person2)))
)