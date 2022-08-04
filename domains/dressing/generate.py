with open('domain.pddl', 'r') as f:
    domain_file = f.read()





def _generate_dressing_problem(num_people: int, num_casual_events: int, 
                               num_formal_in_dress: int, num_formal_in_suit: int, 
                               num_extra_clothing_pieces: int) -> str:
    person_objects_string = ''
    for i in range(1, num_people + 1):
        person_objects_string += f'person{i} '
    problem_string = f"""
    (define (problem {'problem_name'})
        (:domain dressed)
        (:objects

        )
        (:init
        
        )
        (:goal (and 
                    ))
    )
    """
    raise NotImplementedError



if __name__ == "__main__":
    print('this works')
