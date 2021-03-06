#setenv XSCATCODE ../src/xscat
setenv XSCAT ../..
setenv PFILES "/tmp;../../syspfiles"

foreach x (0.000 0.200 0.500 0.750 0.900 0.950 0.990 0.999)
      ../../src/xscat mode=hl clobber=no Epsilon=1e-3 Drude=no Interpolate=yes \
	Emin=0.1 deltaE=0.002 NumberOfEnergies=1450 \
	ExtractRadius=10.0  DustPosition=${x} \
	DustModelName=MRN DustModel=-1 OutputFileName=xs_MRN_${x}_010 >& \
	  log_xs_MRN_${x}_010.txt &

      ../../src/xscat mode=hl clobber=no Epsilon=1e-3 Drude=no Interpolate=yes \
	Emin=0.1 deltaE=0.002 NumberOfEnergies=1450 \
	ExtractRadius=30.0  DustPosition=${x} \
	DustModelName=MRN DustModel=-1 OutputFileName=xs_MRN_${x}_030 >& \
	  log_xs_MRN_${x}_030.txt &

      ../../src/xscat mode=hl clobber=no Epsilon=1e-3 Drude=no Interpolate=yes \
	Emin=0.1 deltaE=0.002 NumberOfEnergies=1450 \
	ExtractRadius=60.0  DustPosition=${x} \
	DustModelName=MRN DustModel=-1 OutputFileName=xs_MRN_${x}_060 >& \
	  log_xs_MRN_${x}_060.txt &

      ../../src/xscat mode=hl clobber=no Epsilon=1e-3 Drude=no Interpolate=yes \
	Emin=0.1 deltaE=0.002 NumberOfEnergies=1450 \
	ExtractRadius=120.0  DustPosition=${x} \
	DustModelName=MRN DustModel=-1 OutputFileName=xs_MRN_${x}_120 >& \
	  log_xs_MRN_${x}_120.txt &
end



