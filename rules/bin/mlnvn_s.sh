#!/bin/sh

variant=$1

INDIR=$2
OUTFILE=base.ml${variant}v${variant}_s.part

echo "! model		layout[$variant]	variant[$variant]	=	symbols" > $OUTFILE

awk '{
  printf "  *		%s		%s	=	+%s(%s):'${variant}'\n", $1, $2, $3, $4;
}' < $INDIR/variantsMapping.lst >> $OUTFILE
