############################################################
######################## LaTeXMK RC ########################
############################################################

########## AUTHOR: Jan Rother
########## DATE:   2024-10

@default_files = ('main.tex');

# |-------------------- Basic Settings --------------------|
# General
$latex = 'pdflatex -shell-escape -synctex=1 -interaction=nonstopmode %O %S';
$pdflatex = 'pdflatex -shell-escape -synctex=1 -interaction=nonstopmode %O %S';

# PDF Generation Modes
#   1: pdflatex
#   2: postscript conversion
#   3: dvi conversion
#   4: lualatex
#   5: xelatex
$pdf_mode = 1;
$out_dir = 'out';

# |------------------- Package Settings -------------------|
# Glossaries
$makeglossaries = 'makeglossaries -d $out_dir %R';
push @generated_exts,
                   'acn', 'acr', 'alg',
                   'glg', 'glo', 'gls',
                   'ist';

# |-------------------- Clean Settings --------------------|
$clean_ext = 'acn acr alg aux bbl blg bak bcf glo
              fdb_latexmk fls glg gls gz ist listing lof
              log lot lol minted mw out run.xml synctex.gz
              tdo toc blx.bib';
$clean_full_ext = 'pdf dvi ps synctex.gz synctex.gz(busy)';

# |----------------- Bibliography Settings ----------------|
# none

# |---------------- Miscellaneous Settings ----------------|
# Reruns
$max_repeat = 5;



############################################################
# |---------------- Sequence of Compilation ---------------|




#############################################################
# |--------------------- Dependencies ---------------------|
# Glossaries
add_cus_dep('glo', 'gls', 0, 'makeglossary');
add_cus_dep('acn', 'acr', 0, 'makeacronyms');

# |--------------------- Custom Rules ---------------------|
# Glossaries
sub makeglossary {
    system("makeindex -s $_[0].ist
                      -o $_[0].gls
                      $_[0].glo");
}
sub makeacronyms {
    system("makeindex -s $_[0].ist
                      -o $_[0].acr
                      $_[0].acn");
}
