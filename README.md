# Compiladores
Implementação de um compilador-TINY usando IDE CodeBlocks

## Fases da implementação:
1. Análise léxica: <br>  Acrescentar a aceitação dos seguintes tipos de marcas:  
  1.1. Palavras reservadas: **while** **endwhile**  
  2.1. Identificadores no formato: l ( l + d + _) * + _ (l + d) + ( l + d + _) *
2. Análise sintática :
   **<declaração> → <while-decl> | <outra>**
   **<while-decl> → while (<exp_lógica>) <decl-sequência> endwhile**
