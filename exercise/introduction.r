

# this is comment, it won't be interpretted
# ---------------------------------------------------------------------------- #
# define variables:
var_numeric = 5
var_character = "How are you today?"

var_vector_num = c(5, 2, 4)
var_vector_num2 = 2:7

var_vector_char = c("How", "are", "you", "today?")

var_list = list(5, "ahoj", 2:4)

vehicles = list(
    "cars" = c("fiat", "volvo", "mazda"),
    "planes" = c("boing", "airbus"),
    "motocycles" = list(
        "sport" = c("kawasaki"),
        "choppers" = c("harley")
        )
    )

var_list_named = list("number"=5, "line"="How are you today?")
# vectors can be named as well!

# ---------------------------------------------------------------------------- #
# subsetting
var_vector_num[3]
var_vector_num[4] # throws error

var_list_named["number"]
var_list_named[["number"]] # notcive the difference

# use is() typeof() or class()
# use ? to read documentation

my_matrix = matrix(1:4, 2, q) # use ?matrix to read about matrix 
# Notice what happens:
my_matrix[1,1] = "a"
print(my_matrix)

# data frame: list that behave like matrix, the most common data type in R!


# ---------------------------------------------------------------------------- #
# Functions:

# function specification:
#function_name = function(param1, param2){
#     function body
#    }

add = function(x, y){
    x + y # implicit return
    }

add = function(x, y){
    res = x + y
    res # implicit return, more explicitely
    }

add = function(x, y){
    return(x + y) # explicit return
    }

printadd = function(x, y){
    print(x + y)
    }

# ---------------------------------------------------------------------------- #
# for cycle:
vector = 1:3
for(counter in vector){
    print(counter)
    }

# ---------------------------------------------------------------------------- #
# conditionals
isItGood = function(condition){
    if(condition){
        print("YES")
        } else {
        print("NO")
        }
    }

isItGood(TRUE)
isItGood(FALSE)
isItGood(3+5 == 4)
