#import "NSString+LevenshteinDistance.h"

#define min(a, b) ((a <= b) ? a : b)

@implementation NSString (LevenshteinDistance)

- (NSUInteger)levenshteinDistanceTo:(NSString *)otherString
{
    int             height   = self.length + 1;
    int             width    = otherString.length + 1;
    NSMutableArray *distance = [[NSMutableArray alloc] initWithCapacity:width * height];
    NSUInteger      x, y, cost;

    // これいらないかも
    for (y = 0; y < height; y++) {
        for (x = 0; x < width; x++) {
            distance[y * width + x] = @(0);
        }
    }
    for (y = 0; y < height; y++) {
        distance[y * width + 0] = @(y);
    }
    for (x = 0; x < width; x++) {
        distance[x] = @(x);
    }

    for (y = 1; y < height; y++) {
        for (x = 1; x < width; x++) {
            unichar c1 = [self characterAtIndex:y - 1];
            unichar c2 = [otherString characterAtIndex:x - 1];
            cost = c1 == c2 ? 0 : 1;

            int insert  = ((NSNumber *) distance[(y - 1) * width + x]).integerValue + 1;
            int remove  = ((NSNumber *) distance[y * width + x - 1]).integerValue + 1;
            int replace = ((NSNumber *) distance[(y - 1) * width + x - 1]).integerValue + cost;
            distance[y * width + x] = @(min(min(insert, remove), replace) );
//            NSLog(@"d(%d,%d) = %@", y, x, distance[y * width + x]);
        }
    }

    return ((NSNumber *) distance[height * width - 1]).integerValue;
}

@end
