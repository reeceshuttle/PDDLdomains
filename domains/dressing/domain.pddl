(define 
    (domain dressed)
    (:requirements :typing)
    (:types 
        clothing person - object
        sweatshirt sweatpants collared_shirt suit_jacket nice_pants - clothing
    )
; assume the person is wearing a tshirt and underwear.
    (:predicates 
        (in_closet ?c - clothing)
        (wearing_collared_shirt ?p - person)
        (wearing_suit_jacket ?p - person)
        (wearing_nice_pants ?p - person)
        (wearing_sweatshirt ?p - person)
        (wearing_sweatpants ?p - person)
        (not_wearing_collared_shirt ?p - person)
        (not_wearing_suit_jacket ?p - person)
        (not_wearing_nice_pants ?p - person)
        (not_wearing_sweatshirt ?p - person)
        (not_wearing_sweatpants ?p - person)
        (attending_casual_event ?p - person)
        (attending_formal_event ?p - person)
    )

    (:action put_on_sweatshirt
        :parameters (?p - person ?s - sweatshirt)
        :precondition (and (in_closet ?s) 
                           (not_wearing_sweatshirt ?p))
        :effect (and (not (in_closet ?s))
                     (wearing_sweatshirt ?p))
    )

    (:action put_on_collared_shirt
        :parameters (?p - person ?cs - collared_shirt)
        :precondition (and (in_closet ?cs) 
                           (not_wearing_collared_shirt ?p))
        :effect (and (not (in_closet ?cs))
                     (wearing_collared_shirt ?p))
    )

    (:action put_on_suit_jacket
        :parameters (?p - person ?sj - suit_jacket)
        :precondition (and (in_closet ?sj) 
                           (wearing_collared_shirt ?p)
                           (not_wearing_suit_jacket ?p))
        :effect (and (not (in_closet ?sj))
                     (wearing_suit_jacket ?p))
    )

    (:action put_on_sweatpants
        :parameters (?p - person ?s - sweatpants)
        :precondition (and (in_closet ?s)
                           (not_wearing_sweatpants ?p))
        :effect (and (not (in_closet ?s))
                     (wearing_sweatpants ?p))
    )

    (:action put_on_nice_pants
        :parameters (?p - person ?s - nice_pants)
        :precondition (and (in_closet ?s)
                           (not_wearing_nice_pants ?p))
        :effect (and (not (in_closet ?s))
                     (wearing_nice_pants ?p))
    )

    (:action attend_casual_event
        :parameters (?p - person)
        :precondition (and (not_wearing_collared_shirt ?p)
                           (not_wearing_suit_jacket ?p)
                           (not_wearing_nice_pants ?p)
                           (wearing_sweatshirt ?p)
                           (wearing_sweatpants ?p))
        :effect (and (attending_casual_event ?p))
    )

    (:action attend_formal_event
        :parameters (?p - person)
        :precondition (and (wearing_collared_shirt ?p)
                           (wearing_suit_jacket ?p)
                           (wearing_nice_pants ?p)
                           (not_wearing_sweatshirt ?p)
                           (not_wearing_sweatpants ?p))
        :effect (and (attending_formal_event ?p))
    )
)