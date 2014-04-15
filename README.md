# NSString+LevenshteinDistance

[![Version](http://cocoapod-badges.herokuapp.com/v/NSString+LevenshteinDistance/badge.png)](http://cocoadocs.org/docsets/NSString+LevenshteinDistance)
[![Platform](http://cocoapod-badges.herokuapp.com/p/NSString+LevenshteinDistance/badge.png)](http://cocoadocs.org/docsets/NSString+LevenshteinDistance)

## Description

This category adds one method to NSString:

- (NSUInteger)levenshteinDistanceTo:(NSString *)otherString;

## Usage

```objective-c
NSString *a = @"foo@bar.com";
NSString *b = @"foo@bar.con";
NSUInteger distance = [a levenshteinDistanceTo:b];
XCTAssert(distance == 1, @"distance == 1");
```

## Installation

NSString+LevenshteinDistance is available through [CocoaPods](http://cocoapods.org), to install
it simply add the following line to your Podfile:

    pod "NSString+LevenshteinDistance"

## Author

koyachi, rtk2106@gmail.com

## License

NSString+LevenshteinDistance is available under the MIT license. See the LICENSE file for more info.

