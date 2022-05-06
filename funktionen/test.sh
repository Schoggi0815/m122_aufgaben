#! / bin / sh



# Variablen die mitgegeben werden, können in der Funktion
# geändert werden.

# myfunc ()
# {
# echo "Ich war so genannt: $@"
# x=2
# }
# ### Hauptskript beginnt hier
# echo "Script wurde mit $@ namens"
# x=1
# echo "x $x"
# myfunc 1 2 3
# echo "x $x"

myfunc ()
{
    echo "\ $1 $1"
    echo "\ $2 $2"
    # können nicht ändern, $ 1 - wir würden sagen:
    # 1 = "Goodbye Cruel"
    #, die keine gültige Syntax . Allerdings können wir
    # Änderung $ a:
    a="Goodbye Cruel"
}
### Hauptskript beginnt hier
ein=Hallo
b=Welt
myfunc $a $b
echo "a ist $a"
echo "b $b"