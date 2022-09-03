# README
Answering queastion 3 at scale
If we had a very large dataset and we don't care about the ordering of the results, 
we can use a a kind of map reduce approach, convert the ids first into a set of integers using an async background task
active job (though I'd probably use a lambda)
with a cleaned list, again ordering must not matter

We can unique the very large list by using a hash or other approach that remains performant.
With a unique list returning the specialties from a dictionary, a hash, 
or even a database lookup would be reasonably performant for most cases