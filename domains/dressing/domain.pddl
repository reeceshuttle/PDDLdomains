(define 
    (domain dressed)
    (:requirements :typing)
    (:types 
        clothing person - object
        sweatshirt sweatpants collared-shirt suit-jacket nice-pants - clothing
    )
; assume the person is wearing a tshirt and underwear.
    (:predicates 
        (in-closet ?c - clothing)
        (wearing-collared-shirt ?p - person)
        (wearing-suit-jacket ?p - person)
        (wearing-nice-pants ?p - person)
        (wearing-sweatshirt ?p - person)
        (wearing-sweatpants ?p - person)
        (not-wearing-collared-shirt ?p - person)
        (not-wearing-suit-jacket ?p - person)
        (not-wearing-nice-pants ?p - person)
        (not-wearing-sweatshirt ?p - person)
        (not-wearing-sweatpants ?p - person)
        (attending-casual-event ?p - person)
        (attending-formal-event ?p - person)
    )

    (:action put-on-sweatshirt
        :parameters (?p - person ?s - sweatshirt)
        :precondition (and (in-closet ?s) 
                           (not-wearing-sweatshirt ?p))
        :effect (and (not (in-closet ?s))
                     (wearing-sweatshirt ?p))
    )

    (:action put-on-collared-shirt
        :parameters (?p - person ?cs - collared-shirt)
        :precondition (and (in-closet ?cs) 
                           (not-wearing-collared-shirt ?p))
        :effect (and (not (in-closet ?cs))
                     (wearing-collared-shirt ?p))
    )

    (:action put-on-suit-jacket
        :parameters (?p - person ?sj - suit-jacket)
        :precondition (and (in-closet ?sj) 
                           (wearing-collared-shirt ?p)
                           (not-wearing-suit-jacket ?p))
        :effect (and (not (in-closet ?sj))
                     (wearing-suit-jacket ?p))
    )

    (:action put-on-sweatpants
        :parameters (?p - person ?s - sweatpants)
        :precondition (and (in-closet ?s)
                           (not-wearing-sweatpants ?p))
        :effect (and (not (in-closet ?s))
                     (wearing-sweatpants ?p))
    )

    (:action put-on-nice-pants
        :parameters (?p - person ?s - nice-pants)
        :precondition (and (in-closet ?s)
                           (not-wearing-nice-pants ?p))
        :effect (and (not (in-closet ?s))
                     (wearing-nice-pants ?p))
    )

    (:action attend-casual-event
        :parameters (?p - person)
        :precondition (and (not-wearing-collared-shirt ?p)
                           (not-wearing-suit-jacket ?p)
                           (not-wearing-nice-pants ?p)
                           (wearing-sweatshirt ?p)
                           (wearing-sweatpants ?p))
        :effect (and (attending-casual-event ?p))
    )

    (:action attend-formal-event
        :parameters (?p - person)
        :precondition (and (wearing-collared-shirt ?p)
                           (wearing-suit-jacket ?p)
                           (wearing-nice-pants ?p)
                           (not-wearing-sweatshirt ?p)
                           (not-wearing-sweatpants ?p))
        :effect (and (attending-formal-event ?p))
    )
)