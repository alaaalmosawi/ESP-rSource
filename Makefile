# ESP-r install makefile called by INSTALL script.
# (see README file before installing).

SRCdir=`pwd`

LIBRARIES= esru
PROGRAMS = aco bps c2e cfg clm dbm dfs e2r ecnv eco grd ish mfs \
	   mld mrt net pdb prj pro res tdf vew

all: $(LIBRARIES) $(PROGRAMS)

# LIBRARIES:

esru:
	cd $(SRCdir)/lib; \
	$(MAKE) sources ; \
	$(MAKE) the_lib

# PROGRAMS:

aco: esru
	cd $(SRCdir)/esruaco; $(MAKE)
b2e: esru
	cd $(SRCdir)/esrub2e; $(MAKE)
bld: esru
	cd $(SRCdir)/esrubld; $(MAKE)
bps: esru
	cd $(SRCdir)/esrubps; $(MAKE) XMLstatus="noXML"
dbm: esru
	cd $(SRCdir)/esrudbm; $(MAKE)
dfs: esru
	cd $(SRCdir)/esrudfs; $(MAKE)
c2e: esru
	cd $(SRCdir)/esruc2e; $(MAKE)
cfg: esru
	cd $(SRCdir)/esrucfg; $(MAKE)
clm: esru
	cd $(SRCdir)/esruclm; $(MAKE)
e2r: esru
	cd $(SRCdir)/esrue2r; $(MAKE)
ecnv: esru
	cd $(SRCdir)/esrucnv; $(MAKE)
eco: esru
	cd $(SRCdir)/esrueco; $(MAKE)
grd: esru
	cd $(SRCdir)/esrugrd; $(MAKE)
ish: esru
	cd $(SRCdir)/esruish; $(MAKE)
mfs: esru
	cd $(SRCdir)/esrumfs; $(MAKE)
mld: esru
	cd $(SRCdir)/esrumld; $(MAKE)
mrt: esru
	cd $(SRCdir)/esrumrt; $(MAKE)
net: esru
	cd $(SRCdir)/esrunet; $(MAKE)
pdb: esru
	cd $(SRCdir)/esrupdb; $(MAKE)
plt: esru
	cd $(SRCdir)/esruplt; $(MAKE)
prj: esru
	cd $(SRCdir)/esruprj; $(MAKE)
pro: esru
	cd $(SRCdir)/esrupro; $(MAKE)
res: esru
	cd $(SRCdir)/esrures; $(MAKE)
tdf: esru
	cd $(SRCdir)/esrutdf; $(MAKE)
vew: esru
	cd $(SRCdir)/esruvew; $(MAKE)
vww: esru
	cd $(SRCdir)/esruvww; $(MAKE)

.PHONY: install
install:
	@cd $(SRCdir)
	@if [ -f $(SRCdir)/esruaco/aco$(EXE) ]; then strip ./esruaco/aco$(EXE); cp ./esruaco/aco$(EXE) $(ESPdir)/bin; fi
	@if [ -f $(SRCdir)/esrub2e/b2e$(EXE) ]; then strip ./esrub2e/b2e$(EXE); cp ./esrub2e/b2e$(EXE) $(ESPdir)/bin; fi
	@if [ -f $(SRCdir)/esrubld/bld$(EXE) ]; then strip ./esrubld/bld$(EXE); cp ./esrubld/bld$(EXE) $(ESPdir)/bin; fi
	@if [ -f $(SRCdir)/esrubps/bps$(EXE) ]; then strip ./esrubps/bps$(EXE); cp ./esrubps/bps$(EXE) $(ESPdir)/bin; fi
	@if [ -f $(SRCdir)/esrudbm/dbm$(EXE) ]; then strip ./esrudbm/dbm$(EXE); cp ./esrudbm/dbm$(EXE) $(ESPdir)/bin; fi
	@if [ -f $(SRCdir)/esrudbm/dbm$(EXE) ]; then strip ./esrudbm/dbm$(EXE); cp ./esrudbm/dbm$(EXE) $(ESPdir)/bin; fi
	@if [ -f $(SRCdir)/esrudfs/dfs$(EXE) ]; then strip ./esrudfs/dfs$(EXE); cp ./esrudfs/dfs$(EXE) $(ESPdir)/bin; fi
	@if [ -f $(SRCdir)/esruc2e/c2e$(EXE) ]; then strip ./esruc2e/c2e$(EXE); cp ./esruc2e/c2e$(EXE) $(ESPdir)/bin; fi
	@if [ -f $(SRCdir)/esrucfg/cfg$(EXE) ]; then strip ./esrucfg/cfg$(EXE); cp ./esrucfg/cfg$(EXE) $(ESPdir)/bin; fi
	@if [ -f $(SRCdir)/esruclm/clm$(EXE) ]; then strip ./esruclm/clm$(EXE); cp ./esruclm/clm$(EXE) $(ESPdir)/bin; fi
	@if [ -f $(SRCdir)/esrue2r/e2r$(EXE) ]; then strip ./esrue2r/e2r$(EXE); cp ./esrue2r/e2r$(EXE) $(ESPdir)/bin; fi
	@if [ -f $(SRCdir)/esrucnv/ecnv$(EXE) ]; then strip ./esrucnv/ecnv$(EXE); cp ./esrucnv/ecnv$(EXE) $(ESPdir)/bin; fi
	@if [ -f $(SRCdir)/esrueco/eco$(EXE) ]; then strip ./esrueco/eco$(EXE); cp ./esrueco/eco$(EXE) $(ESPdir)/bin; fi
	@if [ -f $(SRCdir)/esrugrd/grd$(EXE) ]; then strip ./esrugrd/grd$(EXE); cp ./esrugrd/grd$(EXE) $(ESPdir)/bin; fi
	@if [ -f $(SRCdir)/esruish/ish$(EXE) ]; then strip ./esruish/ish$(EXE); cp ./esruish/ish$(EXE) $(ESPdir)/bin; fi
	@if [ -f $(SRCdir)/esrumfs/mfs$(EXE) ]; then strip ./esrumfs/mfs$(EXE); cp ./esrumfs/mfs$(EXE) $(ESPdir)/bin; fi
	@if [ -f $(SRCdir)/esrumld/mld$(EXE) ]; then strip ./esrumld/mld$(EXE); cp ./esrumld/mld$(EXE) $(ESPdir)/bin; fi
	@if [ -f $(SRCdir)/esrumrt/mrt$(EXE) ]; then strip ./esrumrt/mrt$(EXE); cp ./esrumrt/mrt$(EXE) $(ESPdir)/bin; fi
	@if [ -f $(SRCdir)/esrunet/net$(EXE) ]; then strip ./esrunet/net$(EXE); cp ./esrunet/net$(EXE) $(ESPdir)/bin; fi
	@if [ -f $(SRCdir)/esrupdb/pdb$(EXE) ]; then strip ./esrupdb/pdb$(EXE); cp ./esrupdb/pdb$(EXE) $(ESPdir)/bin; fi
	@if [ -f $(SRCdir)/esruplt/plt$(EXE) ]; then strip ./esruplt/plt$(EXE); cp ./esruplt/plt$(EXE) $(ESPdir)/bin; fi
	@if [ -f $(SRCdir)/esruprj/prj$(EXE) ]; then strip ./esruprj/prj$(EXE); cp ./esruprj/prj$(EXE) $(ESPdir)/bin; fi
	@if [ -f $(SRCdir)/esrupro/pro$(EXE) ]; then strip ./esrupro/pro$(EXE); cp ./esrupro/pro$(EXE) $(ESPdir)/bin; fi
	@if [ -f $(SRCdir)/esrures/res$(EXE) ]; then strip ./esrures/res$(EXE); cp ./esrures/res$(EXE) $(ESPdir)/bin; fi
	@if [ -f $(SRCdir)/esrutdf/tdf$(EXE) ]; then strip ./esrutdf/tdf$(EXE); cp ./esrutdf/tdf$(EXE) $(ESPdir)/bin; fi
	@if [ -f $(SRCdir)/esruvew/viewer$(EXE) ]; then strip ./esruvew/viewer$(EXE); cp ./esruvew/viewer$(EXE) $(ESPdir)/bin; fi
	@if [ -f $(SRCdir)/esruvww/vww$(EXE) ]; then strip ./esruvww/vww$(EXE); cp ./esruvww/vww$(EXE) $(ESPdir)/bin; fi

.PHONY: clean
clean:
	cd $(SRCdir)/lib;     $(MAKE) clean
	cd $(SRCdir)/esruaco; $(MAKE) clean
	cd $(SRCdir)/esrub2e; $(MAKE) clean
	cd $(SRCdir)/esrubld; $(MAKE) clean
	cd $(SRCdir)/esrubps; $(MAKE) clean
	cd $(SRCdir)/esrudbm; $(MAKE) clean
	cd $(SRCdir)/esrudfs; $(MAKE) clean
	cd $(SRCdir)/esruc2e; $(MAKE) clean
	cd $(SRCdir)/esrucfg; $(MAKE) clean
	cd $(SRCdir)/esruclm; $(MAKE) clean
	cd $(SRCdir)/esrue2r; $(MAKE) clean
	cd $(SRCdir)/esrucnv; $(MAKE) clean
	cd $(SRCdir)/esrueco; $(MAKE) clean
	cd $(SRCdir)/esrugrd; $(MAKE) clean
	cd $(SRCdir)/esruish; $(MAKE) clean
	cd $(SRCdir)/esrumfs; $(MAKE) clean
	cd $(SRCdir)/esrumld; $(MAKE) clean
	cd $(SRCdir)/esrumrt; $(MAKE) clean
	cd $(SRCdir)/esrunet; $(MAKE) clean
	cd $(SRCdir)/esrupdb; $(MAKE) clean
	cd $(SRCdir)/esruplt; $(MAKE) clean
	cd $(SRCdir)/esruprj; $(MAKE) clean
	cd $(SRCdir)/esrupro; $(MAKE) clean
	cd $(SRCdir)/esrures; $(MAKE) clean
	cd $(SRCdir)/esrutdf; $(MAKE) clean
	cd $(SRCdir)/esruvew; $(MAKE) clean
	cd $(SRCdir)/esruvww; $(MAKE) clean

tars: clean
	rm -f esp-r.tar esp-r.tar.gz esp-r_training.tar esp-r_training.tar.gz
	tar cvf - esru* archive bitmaps lib cetc Install* Makefile* Readme bin \
	 climate databases GPL.txt Version env include manual tutorial \
	 validation common_list src2html > esp-r.tar 2> esp-r.list; gzip -9 esp-r.tar
	tar cvf - training/[a-z]* training/3* > esp-r_training.tar 2>> esp-r.list; gzip -9 esp-r_training.tar
