#ECHO PRINTS
#[
    ECHO PRINTS
]#
echo "JOCE"

proc alph(): string =
    var con = ""
    for letter in 'a'..'z':
        con.add(letter)
    return con

echo alph()