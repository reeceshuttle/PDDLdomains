with open('domains/dressing/domain.pddl', 'r') as f:
    domain_file = f.read()






def _generate_dressing_problem(num_people: int, num_casual_events: int, 
                               num_formal_in_dress: int, num_formal_in_suit: int, 
                               num_extra_clothing_pieces: int) -> str:
    assert num_people >= num_casual_events+num_formal_in_dress+num_formal_in_suit
    #making objects:                        
    persons = [f'person{i}' for i in range(1, num_people+1)]
    dresses = [f'dress{i}' for i in range(1, num_formal_in_dress+1)]
    sweatpants = [f'sweatpants{i}' for i in range(1, num_casual_events+1)]
    sweatshirts = [f'sweatshirt{i}' for i in range(1, num_casual_events+1)]
    nicepants = [f'nice-pants{i}' for i in range(1, num_formal_in_suit+1)]
    collaredshirt = [f'collared-shirt{i}' for i in range(1, num_formal_in_suit+1)]
    suitjacket = [f'suit-jacket{i}' for i in range(1, num_formal_in_suit+1)]
    objects = [{'type':'person','objs':persons}, {'type':'dress','objs':dresses},
               {'type':'sweatpants','objs':sweatpants}, {'type':'sweatshirt', 'objs':sweatshirts},
               {'type':'nice-pants','objs':nicepants}, {'type':'collared-shirt', 'objs':collaredshirt},
               {'type': 'suit-jacket', 'objs':suitjacket}]
    object_str = ''
    for obj in objects:
        if len(obj['objs'])>0:
            object_str += ' '.join(obj['objs'])+f' - {obj["type"]}\n                  '
    #making initial predicates:
    init_preds = ''
    for person in persons:
        init_preds += (f'(wearing-nothing-formal {person})\n               ' 
                       + f'(wearing-nothing-casual {person})\n               ')
    for clothing in (dresses + sweatpants + sweatshirts
                     + nicepants + collaredshirt + suitjacket):
        init_preds += f'(in-closet {clothing})' + '\n               '
    #making goal predicates:
    goals = ''
    for i in range(1, 1+num_casual_events):
        goals += f'(attending-casual-event person{i})\n                    ' 
     
    for i in range(1+num_casual_events, (1 + num_casual_events
                                         + num_formal_in_dress
                                         + num_formal_in_suit)):
        goals += f'(attending-formal-event person{i})\n                    '


    # person_str = ' '.join(persons) 
    
    problem_string = f"""
    (define (problem dressed)
        (:domain dressed)
        (:objects {object_str})
        (:init {init_preds})
        (:goal (and {goals}))
    )
    """
    import pdb; pdb.set_trace()
    return problem_string



if __name__ == "__main__":
    print('this works')
    _generate_dressing_problem(10, 4, 3, 2, 1)
