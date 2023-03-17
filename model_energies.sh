#!/bin/bash

for model in $( ls *_best10_*.pdb )
do
    echo $model
    cat $model > molecule.pdb
    echo "END" >> molecule.pdb

    cns < get_residue_score.inp > ${model%%.pdb}.cns.log
  done

  rm -rf toppar get_residue_score.inp molecule.pdb

  cd ../
done
