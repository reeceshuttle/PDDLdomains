(define 
    (domain omelette)
    (:requirements :typing)
    (:types 
        food person - object
        egg salt pepper - food
    )
    (:predicates
        (in-kitchen ?f - food)
    )