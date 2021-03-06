#define MAXSTRLEN 1024

#define DIRECTORY "/home/rsmith/software/scattering/xscat/xspec"

#define MAXMODELS 100
#define MAXENERGY 100000

struct SIGMA_TABLE {
  int Nrows;    /* Total number of rows */
  int Nenergy;  /* Number of energies */
  int Nxpos;    /* Number of dust (x) positions */ 
  int Nrext;    /* Number of extraction radii */
  float *energy; /* Energy of X-ray (in keV) */
  float *xpos;   /* Position of dust (between 0-1) */
  float *rext;   /* Extraction radii (in arcsec) */
  float *sigma;  /* Cross section (in cm^2) */
};
