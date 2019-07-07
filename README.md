Readability-VisualWorks
=======================

**Metrics to determine readability and comprehension difficulty for contemporary English text.**

* [VisualWorks 8.3](http://www.cincomsmalltalk.com/) reference platform.
* Examples and tests included.

#### Metrics Included

* [Automated Readability Index](http://en.wikipedia.org/wiki/Automated_Readability_Index)
* [Coleman–Liau Index](http://en.wikipedia.org/wiki/Coleman–Liau_index)
* [Flesch-Kincaid Grade Level](http://en.wikipedia.org/wiki/Flesch–Kincaid_readability_tests)
* [Flesch Reading Ease](http://en.wikipedia.org/wiki/Flesch–Kincaid_readability_tests)
* [Gunning Fog Index](http://en.wikipedia.org/wiki/Gunning_fog_index)
* [SMOG Grade](http://en.wikipedia.org/wiki/SMOG)

## Installation

Install the Readability parcel included in this repository.

## Example Usage

In a VisualWorks workspace, evaluate:

```smalltalk
"Note: You must load the HTTP package."
(Workspace with: ((HttpClient get: 'http://ws.stfx.eu/N07H5OFUTG00') value getValue) labeled: 'Readability Examples') open.
```

Or evaluate:

```smalltalk
Readability examples.
```

## Ports

* [Objective-C](http://brackendev.github.io/Readability-Objective-C/)
* [Pharo](http://brackendev.github.io/Readability-Pharo/)
* [Swift](http://brackendev.github.io/Readability-Swift/)

## Acknowledgements

* [E.A. Smith, EdD and R.J. Senter, PhD](https://apps.dtic.mil/dtic/tr/fulltext/u2/667273.pdf), for the [Automated Readability Index](http://en.wikipedia.org/wiki/Automated_Readability_Index).
* [Meri Coleman and T.L. Liau](https://psycnet.apa.org/record/1975-22007-001) for the [Coleman–Liau Index](http://en.wikipedia.org/wiki/Coleman–Liau_index).
* [Rudolf Flesch](https://en.wikipedia.org/wiki/Rudolf_Flesch) and [J. Peter Kincaid](https://en.wikipedia.org/wiki/J._Peter_Kincaid) for the [Flesch-Kincaid Grade Level](http://en.wikipedia.org/wiki/Flesch–Kincaid_readability_tests).
* [Rudolf Flesch](https://en.wikipedia.org/wiki/Rudolf_Flesch) for the [Flesch Reading Ease](https://en.wikipedia.org/wiki/Flesch–Kincaid_readability_tests#Flesch_reading_ease).
* Robert Gunning for the [Gunning Fog Index](http://en.wikipedia.org/wiki/Gunning_fog_index).
* [G. Harry McLaughlin](https://ogg.osu.edu/media/documents/health_lit/WRRSMOG_Readability_Formula_G._Harry_McLaughlin__1969_.pdf) for the [SMOG Grade](http://en.wikipedia.org/wiki/SMOG).
* The [Cincom Smalltalk](http://www.cincomsmalltalk.com/) team for [VisualWorks](http://www.cincomsmalltalk.com/), the enterprise-class, multilingual, cross-platform, application development and delivery platform.
* [Sven Van Caekenberghe](https://github.com/svenvc) for [Shared Smalltalk Workspaces](http://ws.stfx.eu/), a free web service to share Smalltalk workspaces.

## Author

[brackendev](https://www.github.com/brackendev)

## License

Readability-VisualWorks is released under the MIT license. See the LICENSE file for more info.
