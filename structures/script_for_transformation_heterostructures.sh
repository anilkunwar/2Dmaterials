atomsk ./cif-files/trigonalAl2O3.cif -duplicate 10 10 4 sapphire_substrate.xsf cfg
atomsk sapphire_substrate.xsf -orthogonal-cell al2o3-ortho.xsf cfg
atomsk ./cif-files/hexMoS2.cif -duplicate 10 10 1 mos2d.xsf cfg
atomsk  mos2d.xsf -orthogonal-cell -shift 0 20.0 0.6 -rotate Z 347 mos2d-ortho.xsf cfg
atomsk --merge Z 2 al2o3-ortho.xsf mos2d-ortho.xsf mos2datal2o3-ortho.xsf cfg 
atomsk mos2datal2o3-ortho.xsf lammps

