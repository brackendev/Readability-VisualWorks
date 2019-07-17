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

Load the Readability parcel included in this repository.

## Example Usage

In a VisualWorks workspace, evaluate:


```smalltalk
Readability examples.
```

Or evaluate:

```smalltalk
"Note: You must have the HTTP package loaded."
(Workspace with: ((HttpClient get: 'http://ws.stfx.eu/N07H5OFUTG00') value getValue) labeled: 'Readability Examples') open.
```

## Ports

* [Objective-C](http://brackendev.github.io/Readability-Objective-C/)
* [Pharo](http://brackendev.github.io/Readability-Pharo/)
* [Swift](http://brackendev.github.io/Readability-Swift/)

## Author

[brackendev](https://www.github.com/brackendev)

## License

Readability-VisualWorks is released under the MIT license. See the LICENSE file for more info.
