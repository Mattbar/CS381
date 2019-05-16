(* Create a seed that changes everytime the program is run. seed is based off of seconds from epoc reduced by 1.5 billion seconds so that ML can acctualy handle the large number *)
fun seed () = 
    let
        val r = Time.toReal(Time.now()) - 1.5e9
        val f = Real.realFloor(r)
        val d = r - f
        val i = Real.floor(f)
        val j = Real.floor(1000.0*d)
    in
        Random.rand(i,j)
    end;

(* Generate a list of size n, filled with random numbers that match up with possible printable ascii chars *)
fun randomList (n) =
    let fun helper (n, s) theList =
        if n = 0
        then theList
        else
        let 
            val min = 33
            val max = 126
            val nextInt = Random.randRange(min,max)
            val randomValue = nextInt s
        in 
            helper (n - 1, s) (randomValue::theList)
        end;
    in 
        helper (n, seed()) [] 
    end;

 val listOfRandInts = randomList(8);

 fun charList(x) = map chr x;

 val password = implode(charList(listOfRandInts));





