Readability-VisualWorks
=======================

**Determine readability and comprehension difficulty for contemporary English text.**

* [VisualWorks 8.3](http://www.cincomsmalltalk.com/) reference platform.
* Examples and tests included.

#### Metrics Included

* [Automated Readability Index](http://en.wikipedia.org/wiki/Automated_Readability_Index)
* [Coleman–Liau Index](http://en.wikipedia.org/wiki/Coleman–Liau_index)
* [Flesch-Kincaid Grade Level](http://en.wikipedia.org/wiki/Flesch–Kincaid_readability_tests)
* [Flesch Reading Ease](http://en.wikipedia.org/wiki/Flesch–Kincaid_readability_tests)
* [Gunning Fog Index](http://en.wikipedia.org/wiki/Gunning_fog_index)
* [SMOG Grade](http://en.wikipedia.org/wiki/SMOG)

## TODO

- [ ] Support latest VisualWorks release

## Installation

Load the Readability parcel included in this repository.

## Example Usage

In a Workspace, evaluate:


```smalltalk
Readability examples.
```

Or evaluate:

```smalltalk
"Note: You must have the HTTP package loaded."
(Workspace with: ((HttpClient get: 'http://ws.stfx.eu/N07H5OFUTG00') value getValue) labeled: 'Readability Examples') open.
```

## Ports

* [Objective-C](https://github.com/brackendev/Readability-Objective-C)
* [Pharo](https://github.com/brackendev/Readability-Pharo)
* [Swift](https://github.com/brackendev/Readability-Swift)
* [VisualWorks](https://github.com/brackendev/Readability-VisualWorks)

## Author

Bracken Spencer

* [GitHub](https://www.github.com/brackendev)
* [LinkedIn](https://www.linkedin.com/in/brackenspencer/)
* [Twitter](https://twitter.com/brackendev)

## License

Readability-VisualWorks is released under the MIT license. See the LICENSE file for more info.
