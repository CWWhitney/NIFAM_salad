# Priors for a Food Environment model
# for a particular healthy fruit, vegetable or healthy dish
# cf. what is the prob. of flipping heads at least once 
# when you have three consecutive flips? 
# some relationship between these probabilities is necessary
desirability <- .80 # prob. that the food is desirable
availability <- .90 # prob that the food is available (not too far etc.)
    price_point <- .10 # prob that the price point acceptable
    wealth_status <- .10 # prob that the wealth status high enough to afford
affordability <- price*wealth_status
# desirability, availability, affordability will influence people get the food
aquiring_food <- 1-desirability*availability*affordability #prob of aquiring food

preparing_food <- .10 # prob that food is prepared in a healthy way
# could buy some tomato but then cook the nutrients out of it

food_health <- 1-aquiring_food*preparing_food

        health_status <- .10 # prob. preexisting health conditions
        health_knowledge <- .10 # prob. not know about healthy food
        hygiene <- .10 # prob. hygienic handling etc. avoid disease
nutritional_status <- 1-health_status*health_knowledge*hygiene

# personal_health is the health implications of the food
personal_health <- food_health*nutritional_status
