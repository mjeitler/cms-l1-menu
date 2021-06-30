L1 Menu implementations
=======================


Firmware implementations and test vectors of Run2/LS2 menus for the L1 Global Trigger.

## LS2

* [2021](2021)
* [2020](2020)
* [2019](2019)

## Run2

* [2018](2018)
* [2017](2017)
* [2016](2016)
* [2015](2015)

## Scales

See [scales](scales) for reference scales.


### scales_2020_10_04

- Updated `MU-UPT`

### scales_2020_09_30

- Added `MU-UPT`
- Added `PRECISION-EG-{MU,EG,TAU,JET}-InverseDeltaRMath`
- Added `PRECISION-JET-{MU,JET,TAU}-InverseDeltaRMath`
- Added `PRECISION-MU-MU-InverseDeltaRMath`
- Added `PRECISION-TAU-{MU,TAU}-InverseDeltaRMath`

### scales_2018_08_07

- Added `{ASYMET,ASYMHT}-COUNT`
- Added `{ASYMETHF,ASYMHTHF}-COUNT`

### scales_2017_05_23

- Updated `MU-ET`

### scales_2017_04_26

- Added `PRECISION-EG-{EG,ETM,ETMHF}-Delta`
- Added `PRECISION-EG-{EG,TAU,JET}-DeltaOverlapRemoval`
- Added `PRECISION-EG-{EG,ETM,HTM,ETMHF}-Mass`
- Added `PRECISION-EG-{EG,ETM,HTM,ETMHF}-MassPt`
- Added `PRECISION-EG-{EG,ETM,HTM,ETMHF}-Math`
- Added `PRECISION-EG-{MU,EG,TAU,JET,ETM,HTM,ETMHF}-TwoBodyPt`
- Added `PRECISION-EG-{MU,EG,TAU,JET,ETM,HTM,ETMHF}-TwoBodyPtMath`
- Added `PRECISION-JET-{ETM,HTM,ETMHF}-Mass`
- Added `PRECISION-JET-{ETM,HTM,ETMHF}-MassPt`
- Added `PRECISION-JET-{ETM,HTM,ETMHF}-Math`
- Added `PRECISION-JET-{MU,TAU,JET,ETM,HTM,ETMHF}-TwoBodyPt`
- Added `PRECISION-JET-{MU,TAU,JET,ETM,HTM,ETMHF}-TwoBodyPtMath`
- Added `PRECISION-JET-ETMHF-Delta`
- Added `PRECISION-JET-{TAU,JET}-DeltaOverlapRemoval`
- Added `PRECISION-MU-{ETM,HTM,ETMHF}-Mass`
- Added `PRECISION-MU-{ETM,HTM,ETMHF}-MassPt`
- Added `PRECISION-MU-{ETM,HTM,ETMHF}-Math`
- Added `PRECISION-MU-{MU,ETM,HTM,ETMHF}-TwoBodyPt`
- Added `PRECISION-MU-{MU,ETM,HTM,ETMHF}-TwoBodyPtMath`
- Added `PRECISION-MU-ETMHF-Delta`
- Added `PRECISION-TAU-{ETM,HTM,ETMHF}-Mass`
- Added `PRECISION-TAU-{ETM,HTM,ETMHF}-MassPt`
- Added `PRECISION-TAU-{ETM,HTM,ETMHF}-Math`
- Added `PRECISION-TAU-{MU,TAU,ETM,HTM,ETMHF}-TwoBodyPt`
- Added `PRECISION-TAU-{MU,TAU,ETM,HTM,ETMHF}-TwoBodyPtMath`
- Added `PRECISION-TAU-ETMHF-Delta`
- Added `PRECISION-TAU-TAU-DeltaOverlapRemoval`

## Cabling

See [cabling](cabling) for reference cablings.

## Contributing

* Use `tm-vhdlproducer` to create a menu implementation.
* Create a separate branch for a new untested menu implementation.
* Collecting test vectors in the branch.
* GZip test vector log files to reduce file size (run `gzip TestVector_Sample.log`).
* Create a pull request for a successfully tested menu implementation.
* After merging to master create a tag of the menu implementation.
