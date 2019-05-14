(* Password generator in ML *)
(* 
val lowerLetters = List.tabulate (26, fn i => chr (i + ord #"a"));

val uperLetters = List.tabulate(26, fn i => chr (i + ord #"A"));

val specialCharList = ["!","@","#","$","%","^","&","*","(",")","+","-","_","{","}","[","]",".","/","?",",",":","~"];

fun randLettter(letters, randNumb) = List.nth(letters,randNumb);

fun randChar(charList, randNumb) = List.nth(charList, randNumb);

val randNumb = Random.randRange(1,100000000);

val seed = Random.rand(1,100);

val lowerLet = randLettter(lowerLetters, (randNumb seed mod 26));

val upperLet = randLettter(uperLetters, (randNumb seed mod 26));

val char = randChar(specialCharList, (randNumb seed mod (List.length(specialCharList))));

val randIntiger = randNumb seed mod 10; *)

val password = Array.array(16, 0);

fun makePass(password) = 
    let
        val lowerLetters = List.tabulate (26, fn i => chr (i + ord #"a"))

        val uperLetters = List.tabulate(26, fn i => chr (i + ord #"A"))

        val specialCharList = ["!","@","#","$","%","^","&","*","(",")","+","-","_","{","}","[","]",".","/","?",",",":","~"]

        fun randLettter(letters, randNumb) = List.nth(letters,randNumb)

        fun randChar(charList, randNumb) = List.nth(charList, randNumb)

        val randNumb = Random.randRange(1,100000000)

        val seed = Random.rand(1,100)

        val lowerLet = randLettter(lowerLetters, (randNumb seed mod 26))

        val upperLet = randLettter(uperLetters, (randNumb seed mod 26))

        val char = randChar(specialCharList, (randNumb seed mod (List.length(specialCharList))))

        val randIntiger = randNumb seed mod 10;

        val counter = Array.length(password)
    in
        while counter > 0(
            Array.update(password, randNumb seed mod 16, lowerLet)
            Array.update(password, randNumb seed mod 16, upperLet)
            Array.update(password, randNumb seed mod 16, randIntiger)
            Array.update(password, randNumb seed mod 16, char)
            counter := counter - 1
        )
    end;

val p = makePass(password);
