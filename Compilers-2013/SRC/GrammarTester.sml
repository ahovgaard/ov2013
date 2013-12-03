
load "Obj";
load "Parsing";
load "Lexing";
load "Char";

load "AbSyn";
load "Parser";
load "Lexer";

fun readFile s = let
  val is = TextIO.openIn s
  val str = TextIO.inputAll is  
in
  str 
end


fun parser s = let val buf = Lexing.createLexerString s
                  in Parser.Prog Lexer.Token buf
end

fun parse s = let
  val str = readFile s
in
    parser str
end

