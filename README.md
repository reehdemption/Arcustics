README
TTT4292 – Akustikk av musikkinstrumenter og rom
Assignment 1 & 2 – Data Collection and Analysis

Overview
This repository contains all measurements, scripts, and analysis notes for Assignment 1 and Assignment 2 in TTT4292 Akustikk av musikkinstrumenter og rom. Both assignments involve practical acoustic measurements and signal processing. All collected data, plots, and intermediate calculations are included.

Folder Structure
/Assignment1
    /data_raw/          - Unprocessed recordings and instrument measurements
    /data_processed/    - Cleaned files, normalized signals, FFT outputs
    analysis_notebook/  - Scripts or notebooks used for processing
    figures/            - Exported plots for the report
    README_Assignment1.txt

/Assignment2
    /data_raw/          - Raw room impulse responses, mic sweeps, logs
    /data_processed/    - Filtered signals, windowed IRs, RT calculations
    analysis_notebook/  - Analysis code (Python and/or MATLAB)
    figures/            - Plots of decay curves, spectrograms, frequency bands
    README_Assignment2.txt

/common
    utils/              - Shared helper functions
    calibration/        - Mic calibration files, reference tones

------------------------------------------------------------

Assignment 1 – Summary
Topic:
Acoustic analysis of a musical instrument.

Main tasks:
- Record steady tones and transient sounds.
- Extract spectral content using FFT.
- Compare measured harmonics with theory.
- Estimate inharmonicity, formants, and radiation tendencies.

Data included:
- Cleaned WAV recordings.
- FFT magnitude spectra and peak lists.
- Plots used in the final report.

Reproduction:
Open the notebook in /Assignment1/analysis_notebook. It loads the WAV files, applies windowing, calculates spectra, and generates all plots.

-------------------------------------------------------
