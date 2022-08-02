(define (problem dressed)
    (:domain dressed)
    (:objects nice-pants1 nice-pants2 - nice-pants
              collared-shirt1 collared-shirt2 - collared-shirt
              suit-jacket1 suit-jacket2 - suit-jacket
              sweatpants1 sweatpants2 - sweatpants
              sweatshirt1 sweatshirt2 - sweatshirt
              person1 person2 person3 - person
              dress1 - dress
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
        (in-closet dress1)
        (wearing-nothing-casual person1)
        (wearing-nothing-formal person1)        
        (wearing-nothing-casual person2)
        (wearing-nothing-formal person2)        
        (wearing-nothing-casual person3)
        (wearing-nothing-formal person3)
    )
    (:goal (and (attending-formal-event person1) (attending-casual-event person2) (attending-formal-event person3)))
)